# 🛒 Walmart Sales Data Analysis (Python + SQL + Power BI)

## 📌 Project Overview
This project is an **end-to-end data analysis solution** designed to extract critical business insights from Walmart sales data.  
It combines the power of **Python** for data processing and exploratory analysis with **SQL (MySQL)** for advanced querying and 
**Power BI** For Interactive Dashboard and Reporting.  

The project demonstrates:  
- Data cleaning and transformation in Python  
- Data pipeline creation from Colab → MySQL  
- Solving **real-world business problems** with SQL queries
- Interactive Dashboards with Power BI 
- Building structured workflows for data analysts  

---

## 📌 1. Environment Setup
- **Python (Jupyter Notebook & Google Colab)**  
- **SQL (MySQL)**
- **Power BI**

**Goal:** Create a **structured workspace** to organize datasets, scripts, and queries for smooth development and analysis.  

---

## 📌 2. Data Acquisition
- **Source:** [Walmart Sales Dataset – Kaggle](https://www.kaggle.com/)  
- **Download Method:** Kaggle API  
- **Storage:** Save datasets under `data/` folder for easy access  

---

## 📌 3. Install Required Libraries
- Install libraries:  
  ```bash
  pip install pandas numpy sqlalchemy pymysql

---

## 📌 4. Load & Explore Data

- Load datasets into Pandas DataFrames  
- Perform initial exploration using:

  ```bash
  df.head()
  df.info()
  df.describe()
---

## 📌5. Data Cleaning
- Steps:
    - Remove duplicates to avoid skewed results
    - Handle missing values (drop or impute)
    - Fix data types (dates → datetime, prices → float)
    - Format currency values using .replace()
    - Validate the cleaned datase
---

## 📌 6. Feature Engineering

  **Create New Columns:**  
  Calculate the **Total Amount** for each transaction by multiplying `unit_price` by `quantity` and add this as a new column.

  **Enhance Dataset:**  
  Adding this calculated field streamlines further SQL analysis and aggregation tasks by simplifying revenue-based queries.

---

## 📌 7. Load Data into SQL (MySQL)

**Set Up Connections:**  
Connect to **MySQL** using `sqlalchemy` and load the cleaned data into the database.

**Table Creation:**  
Set up tables in MySQL using Python SQLAlchemy to automate table creation and data insertion.

**Verification:**  
Run initial SQL queries to confirm that the data has been loaded accurately.

---

## 📌 8. SQL Analysis: Complex Queries and Business Problem Solving

**Business Problem-Solving:**  
Write and execute complex SQL queries to answer critical business questions, such as:
- Revenue trends across branches and categories
- Identifying best-selling product categories
- Sales performance by time, city, and payment method
- Analyzing peak sales periods and customer buying patterns
- Profit margin analysis by branch and category

**Documentation:**  
Keep clear notes of each query’s objective, approach, and results.

---

## 📌 9. BI Analysis: Complex Analysis and Business Problem Solving
1. Revenue and Profit Performance
2. Category Performance Analysis
3. City and Regional Sales Performance
4. Time-Based Sales Analysis
5. Customer Buying Behavior Analysis
6. Seasonal and Monthly Sales Trends
7. Sales Forecasting and Demand Planning

---

## 📌 10. **Requirements**

- **Programming Language**: Python 3.8+
- **SQL Database**: MySQL
- **Visualization Tool**: Power BI
- **Python Libraries**: pandas, numpy, sqlalchemy, mysql-connector-python

---

## 📂 11. **Project Structure**

```plaintext
|-- data/                     # Raw data and transformed data
|-- sql_queries/              # SQL scripts for analysis and queries
|-- notebooks/                # Jupyter notebooks for Python analysis
|-- powerbi/                  # Power BI dashboard files (.pbix) and images
|-- images/                   # Power BI dashboard screenshots for README
|-- README.md                 # Project documentation
|-- requirements.txt          # List of required Python libraries
|-- main.py                   # Main script for loading, cleaning, and processing data
```

---




















