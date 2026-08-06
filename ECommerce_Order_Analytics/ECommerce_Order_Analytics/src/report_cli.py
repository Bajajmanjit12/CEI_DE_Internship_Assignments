import sqlite3
from datetime import datetime, timedelta

DB_PATH = "../database/ecommerce.db"


def get_previous_period(start_date, end_date):
    start = datetime.strptime(start_date, "%Y-%m-%d")
    end = datetime.strptime(end_date, "%Y-%m-%d")

    days = (end - start).days

    previous_start = start - timedelta(days=days + 1)
    previous_end = start - timedelta(days=1)

    return (
        previous_start.strftime("%Y-%m-%d"),
        previous_end.strftime("%Y-%m-%d")
    )


def get_summary(cursor, start_date, end_date):

    cursor.execute("""
    SELECT COUNT(*)
    FROM orders
    WHERE DATE(order_date) BETWEEN ? AND ?;
    """, (start_date, end_date))

    total_orders = cursor.fetchone()[0]

    cursor.execute("""
    SELECT
    ROUND(
        SUM(
            oi.quantity *
            oi.unit_price *
            (1 - oi.discount_percent / 100.0)
        ),
    2)
    FROM orders o
    JOIN order_items oi
    ON o.order_id = oi.order_id
    WHERE DATE(o.order_date) BETWEEN ? AND ?;
    """, (start_date, end_date))

    total_revenue = cursor.fetchone()[0]

    if total_revenue is None:
        total_revenue = 0

    cursor.execute("""
    SELECT COUNT(DISTINCT customer_id)
    FROM orders
    WHERE DATE(order_date) BETWEEN ? AND ?
    AND customer_id != -1;
    """, (start_date, end_date))

    unique_customers = cursor.fetchone()[0]

    cursor.execute("""
    SELECT
        p.product_name,
        ROUND(
            SUM(
                oi.quantity *
                oi.unit_price *
                (1 - oi.discount_percent / 100.0)
            ),
        2) AS revenue
    FROM products p
    JOIN order_items oi
    ON p.product_id = oi.product_id
    JOIN orders o
    ON oi.order_id = o.order_id
    WHERE DATE(o.order_date) BETWEEN ? AND ?
    GROUP BY p.product_name
    ORDER BY revenue DESC
    LIMIT 3;
    """, (start_date, end_date))

    top_products = cursor.fetchall()

    return (
        total_orders,
        total_revenue,
        unique_customers,
        top_products
    )


def main():

    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()

    print("=" * 60)
    print("      E-COMMERCE ORDER ANALYTICS SYSTEM")
    print("=" * 60)

    report_type = input("Report Type (daily/weekly/monthly): ").strip().lower()

    if report_type not in ["daily", "weekly", "monthly"]:
        print("Invalid Report Type!")
        conn.close()
        return

    start_date = input("Enter Start Date (YYYY-MM-DD): ").strip()
    end_date = input("Enter End Date (YYYY-MM-DD): ").strip()

    current = get_summary(cursor, start_date, end_date)

    previous_start, previous_end = get_previous_period(
        start_date,
        end_date
    )

    previous = get_summary(
        cursor,
        previous_start,
        previous_end
    )

    if previous[1] == 0:
        revenue_change = 0
    else:
        revenue_change = round(
            (
                (current[1] - previous[1])
                / previous[1]
            ) * 100,
            2
        )

    print("\n")
    print("=" * 60)
    print("REPORT SUMMARY")
    print("=" * 60)

    print(f"Report Type        : {report_type.title()}")
    print(f"Date Range         : {start_date} to {end_date}")
    print(f"Total Orders       : {current[0]}")
    print(f"Total Revenue      : {current[1]:,.2f}")
    print(f"Unique Customers   : {current[2]}")
    print(f"Revenue Change (%) : {revenue_change}")

    print("\nTop 3 Products")
    print("-" * 60)

    for i, product in enumerate(current[3], start=1):
        print(f"{i}. {product[0]}  ->  ₹{product[1]:,.2f}")

    print("=" * 60)

    conn.close()


if __name__ == "__main__":
    main()