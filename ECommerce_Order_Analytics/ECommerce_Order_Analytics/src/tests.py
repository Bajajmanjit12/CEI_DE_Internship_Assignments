import sqlite3
from datetime import datetime

DB_PATH = "../database/ecommerce.db"


def test_invalid_order_reference(cursor):
    print("=" * 60)
    print("Test 1 : Invalid Order References")
    print("=" * 60)

    query = """
    SELECT oi.item_id,oi.order_id
    FROM order_items oi
    LEFT JOIN orders o
    ON oi.order_id=o.order_id
    WHERE o.order_id IS NULL;
    """

    cursor.execute(query)
    rows = cursor.fetchall()

    if rows:
        print(f"FAIL : {len(rows)} invalid order references found.")
        for row in rows[:5]:
            print(row)
    else:
        print("PASS : No invalid order references found.")

    print()


def test_discount_over_100(cursor):
    print("=" * 60)
    print("Test 2 : Discount Greater Than 100")
    print("=" * 60)

    query = """
    SELECT item_id,discount_percent
    FROM order_items
    WHERE discount_percent>100;
    """

    cursor.execute(query)
    rows = cursor.fetchall()

    if rows:
        print(f"FAIL : {len(rows)} invalid discounts found.")
        for row in rows[:5]:
            print(row)
    else:
        print("PASS : All discounts are valid.")

    print()


def test_zero_quantity(cursor):
    print("=" * 60)
    print("Test 3 : Zero Quantity")
    print("=" * 60)

    query = """
    SELECT item_id,quantity
    FROM order_items
    WHERE quantity=0;
    """

    cursor.execute(query)
    rows = cursor.fetchall()

    if rows:
        print(f"WARNING : {len(rows)} items have zero quantity.")
        for row in rows[:5]:
            print(row)
    else:
        print("PASS : No zero quantity records.")

    print()


def test_future_order_date(cursor):
    print("=" * 60)
    print("Test 4 : Future Order Dates")
    print("=" * 60)

    today = datetime.today().strftime("%Y-%m-%d")

    query = """
    SELECT order_id,order_date
    FROM orders
    WHERE DATE(order_date)>?;
    """

    cursor.execute(query, (today,))
    rows = cursor.fetchall()

    if rows:
        print(f"FAIL : {len(rows)} future orders found.")
        for row in rows[:5]:
            print(row)
    else:
        print("PASS : No future order dates found.")

    print()


def main():

    conn = sqlite3.connect(DB_PATH)

    cursor = conn.cursor()

    test_invalid_order_reference(cursor)

    test_discount_over_100(cursor)

    test_zero_quantity(cursor)

    test_future_order_date(cursor)

    conn.close()


if __name__ == "__main__":
    main()