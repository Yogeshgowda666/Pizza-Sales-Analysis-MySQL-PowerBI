# 🍕 Pizza Sales Analysis
### MySQL & Power BI Data Analysis Project

---

## 📌 Project Overview

This project focuses on analyzing pizza sales data to identify key business insights, sales trends, customer ordering patterns, and product performance.

Using **MySQL** for data analysis and **Power BI** for data visualization, this project aims to understand overall sales performance and support data-driven business decisions.

---

## 🎯 Key Business Questions Answered

### 1. Key Performance Indicators (KPIs)

| KPI | Value |
|---|---:|
| **Total Revenue** | **$817,860.05** |
| **Total Orders** | **21,350** |
| **Total Pizzas Sold** | **49,574** |
| **Average Order Value** | **$38.31** |
| **Average Pizzas Per Order** | **2.32** |

### 2. What are the Daily and Monthly Sales Trends?

- **Best Day:** Friday (highest orders)
- **Slowest Day:** Sunday (lowest orders)
- **Best Month:** July (highest orders)
- **Slowest Month:** October (lowest orders)

### 3. What Sells Best?

- **Top Selling Pizza:** The Classic Deluxe Pizza
- **Category Leader:** Classic pizzas
- **Size Leader:** Large pizzas

### 4. What Sells Worst?

- **Bottom Seller:** The Brie Carre Pizza

---

## 🛠️ Tools & Technologies

- **MySQL:** Data analysis and SQL querying.
- **Power BI:** Interactive dashboard development and visualization.
- **Microsoft Excel:** Dataset exploration.
- **GitHub:** Project documentation and version control.

---

## 📁 Project Structure

```text
Pizza-Sales-Analysis-MySQL-PowerBI/
│
├── Dataset/
│   └── pizza_sales.csv
│
├── SQL/
│   └── pizza_sales_analysis.sql
│
├── Dashboard/
│   ├── dashboard 1
│   └── dashboard 2
│
├── Documentation/
│   └── Pizza_Sales_SQL_Analysis.docx
│
├── PowerBI/
│   └── pizza_sales_dashboard.pbix
│
└── README.md
```

---

## 📝 About the Data

The project uses a pizza sales dataset from a fictional pizza restaurant business covering the full calendar year **2015**.

### Data Source

- The data is stored in `Dataset/pizza_sales.csv`. 📂 **Download Dataset:** [Click here to access the Pizza Sales Dataset](Pizza-Sales-Analysis-MySQL-PowerBI/Dataset/pizza_sales.csv)
- Contains **48,620** individual sales records.
- Covers the period from **January 1, 2015** to **December 31, 2015**.

### Data Dictionary

| Column | Description | Data Type |
|---|---|---|
| pizza_id | Unique identifier for each pizza | Integer |
| order_id | Unique identifier for each order | Integer |
| pizza_name_id | Unique identifier for pizza type | VARCHAR(50) |
| quantity | Quantity of pizzas ordered | Integer |
| order_date | Date of the order | Date |
| order_time | Time of the order | Time |
| unit_price | Price per pizza | Float |
| total_price | Total price for the order | Float |
| pizza_size | Size of the pizza (Small, Medium, Large, X-Large, XX-Large) | VARCHAR(50) |
| pizza_category | Category of the pizza (Classic, Supreme, Veggie, Chicken) | VARCHAR(50) |
| pizza_ingredients | List of ingredients used | VARCHAR(200) |
| pizza_name | Name of the pizza | VARCHAR(100) |

### Dataset Summary

| Metric | Value |
|---|---:|
| **Total Records** | 48,620 |
| **Total Orders** | 21,350 |
| **Total Pizzas Sold** | 49,574 |
| **Time Period** | January 2015 – December 2015 |
| **Number of Pizza Types** | 32 |
| **Pizza Categories** | 4 (Classic, Supreme, Veggie, Chicken) |
| **Pizza Sizes** | 5 (Small, Medium, Large, X-Large, XX-Large) |

---

## 💼 Business Context

This dataset can be used to answer business questions such as:

- Which pizzas generate the highest and lowest sales?
- Which days have the highest order volumes?
- How does sales performance change from month to month?
- Which pizza categories contribute the most to sales?
- Which pizza sizes are preferred by customers?
- What is the average order value?
- How can inventory and marketing strategies be improved using historical sales data?

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to present the sales analysis through KPI cards, charts, and visual comparisons.

The dashboard provides insights into overall sales performance, daily and monthly trends, pizza category performance, pizza size preferences, and best- and worst-selling products.

📥 **Download Power BI Dashboard:** [Click here to download the PBIX file](Pizza-Sales-Analysis-MySQL-PowerBI/PowerBI/pizza_sales_dashboard.pbix)

### Dashboard Overview
![Pizza Sales Dashboard 1](Pizza-Sales-Analysis-MySQL-PowerBI/Dashboard/Dashboard%201.png)
![Pizza Sales Dashboard 2](Pizza-Sales-Analysis-MySQL-PowerBI/Dashboard/Dashboard%202.png)

---

## 💡 Key Business Insights

| Business Area | Key Finding |
|---|---|
| **Total Revenue** | Generated $817,860.05 in revenue |
| **Order Volume** | Recorded 21,350 total orders |
| **Pizza Sales** | Sold 49,574 pizzas |
| **Average Order Value** | $38.31 per order |
| **Daily Sales Trend** | Friday recorded the highest number of orders |
| **Pizza Category** | Classic was the highest-performing category |
| **Pizza Size** | Large pizzas recorded the highest sales performance |
| **Top Performing Pizza** | Classic Deluxe Pizza |
| **Low Performing Pizza** | Brie Carre Pizza |

---

## 💡 Business Recommendations

Based on the analysis, the following recommendations can help improve business performance:

1. **Inventory Optimization:** Maintain sufficient inventory for high-demand Classic pizzas and Large-sized pizzas to avoid stock shortages.

2. **Weekend Planning:** Optimize staffing and kitchen preparation capacity for Fridays and Saturdays to manage higher order volumes.

3. **Product Promotion:** Use targeted marketing campaigns and promotional offers to further increase sales of popular pizzas such as Classic Deluxe.

4. **Low-Performing Products:** Review customer preferences, pricing, and product positioning for low-performing pizzas such as Brie Carre.

5. **Sales Strategy:** Use historical daily and monthly sales trends to plan marketing campaigns, manage resources, and improve overall revenue.

---

## 📌 Conclusion

This project demonstrates how MySQL and Power BI can be used together to analyze business data, identify important sales patterns, and generate actionable insights.

Through SQL-based analysis and interactive Power BI visualizations, the project highlights key performance indicators, customer purchasing patterns, and product performance.

It also demonstrates practical skills in data analysis, SQL querying, data visualization, business intelligence, and communicating data-driven recommendations.

---

## 🔗 Connect with Me

- **GitHub:** [My GitHub Profile](https://github.com/Yogeshgowda666)
- **LinkedIn:** [My LinkedIn Profile](https://www.linkedin.com/in/yogeshgowda66/)
