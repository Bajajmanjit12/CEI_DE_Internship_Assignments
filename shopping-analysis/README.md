# Shopping Dataset Analysis

## Project Overview

This project was completed as part of the CEI Internship Program. The objective was to perform data exploration, data cleaning, feature engineering, and exploratory data analysis (EDA) using Python and Pandas on a shopping dataset.

The project demonstrates fundamental data analysis skills, including handling missing values, data transformation, visualization, and extracting meaningful business insights from real-world e-commerce data.

---

## Objectives

- Load and explore a CSV dataset using Pandas.
- Understand dataset structure, data types, and summary statistics.
- Identify and handle missing values.
- Remove duplicate records.
- Perform feature engineering to create new meaningful attributes.
- Conduct exploratory data analysis (EDA).
- Create visualizations to identify trends and patterns.
- Generate business insights from the data.
- Save the cleaned dataset for further analysis.

---

## Dataset Information

The dataset contains product-related information such as:

- Product ID
- Product Title
- Product Description
- Rating
- Ratings Count
- Initial Price
- Final Price
- Discount
- Seller Information
- Customer Reviews
- Product Category
- Product Specifications

Total Records: **1000**

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## Project Structure

```text
shopping-analysis/
│
├── data/
│   ├── combined_dataset.csv
│   └── cleaned_dataset.csv
│
├── notebook/
│   └── analysis.ipynb
│
└── README.md
```

---

## Data Cleaning Performed

- Converted price-related columns into numeric format.
- Handled missing values using appropriate filling techniques.
- Replaced missing textual information with "Not Available".
- Removed duplicate records.
- Verified data consistency after cleaning.

---

## Feature Engineering

The following new features were created:

### Price Difference

Measures the difference between the original and final selling price.

```python
price_difference = initial_price - final_price
```

### Popularity Metric

Measures product popularity using ratings and review count.

```python
popularity_metric = rating * ratings_count
```

### Additional Features

- Discount Percentage
- Price Category

---

## Exploratory Data Analysis (EDA)

The analysis included:

### Univariate Analysis

- Product Price Distribution
- Product Rating Distribution
- Discount percentage Distribution
- Price Category Count

### Bivariate Analysis

- Rating vs Popularity
- Final Price vs Rating
- Discount Percentage vs Popularity

### Category-Level Analysis

- Product Count by Category
- Average Rating by Category
- Average Price by Category

---

## Visualizations

The following visualizations were created:

1. Product Price Distribution (Histogram)
2. Top Categories by Product Count (Bar Chart)
3. Price Distribution Across Categories (Boxplot)
4. Rating by Popularity (Scatter plot)

These visualizations helped identify pricing trends, category performance, and customer engagement patterns.

---

## Key Findings

- Most products fall within the low to mid-price range.
- The majority of products have ratings above 4.0.
- Product distribution is concentrated in a few major categories.
- Significant price variations exist across categories.
- Products with higher ratings and more reviews tend to have higher popularity scores.

---

## Business Insights

- Competitive pricing remains important due to the dominance of affordable products.
- High customer ratings indicate strong product quality and satisfaction.
- Popular categories can be prioritized for inventory and marketing strategies.
- Different pricing segments can be targeted within categories.
- Highly popular products can be leveraged for promotional campaigns and recommendations.

---

## Conclusion

This project successfully demonstrated the complete data analysis workflow, including data cleaning, feature engineering, exploratory analysis, and visualization. The insights obtained from the dataset can support better business decisions related to pricing strategies, product management, customer engagement, and category optimization.

---

## Author

**Manjit Bajaj**  
Computer Science Undergraduate  
CEI Internship Program  
Maharashtra, India

- GitHub: https://github.com/Bajajmanjit12
- LinkedIn: https://www.linkedin.com/in/manjit-bajaj-1839a0281/
