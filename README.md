🛒 Walmart Sales Data Analysis (Python + SQL)
📌 Project Overview
This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data.
It combines the power of Python for data processing and exploratory analysis with SQL (MySQL) for advanced querying and problem-solving.
The project demonstrates:

Data cleaning and transformation in Python
Data pipeline creation from Colab → Jupyter Notebook → MySQL
Solving real-world business problems with SQL queries
Building structured workflows for data analysts


📌 1. Environment Setup

Python (Jupyter Notebook & Google Colab)
SQL (MySQL)

Goal: Create a structured workspace to organize datasets, scripts, and queries for smooth development and analysis.

📌 2. Data Acquisition

Source: Walmart Sales Dataset – Kaggle
Download Method: Kaggle API
Storage: Save datasets under data/ folder for easy access


📌 3. Install Required Libraries
bashpip install pandas numpy sqlalchemy pymysql

📌 4. Load & Explore Data
Steps:

Load datasets into Pandas DataFrames
Perform initial exploration using:

df.head()
df.info()
df.describe()



Objective:
Understand data distribution, column types, and spot issues

📌 5. Data Cleaning
Steps:

Remove duplicates to avoid skewed results
Handle missing values (drop or impute)
Fix data types (dates → datetime, prices → float)
Format currency values using .replace()
Validate the cleaned dataset


📌 6. Feature Engineering
Steps:

Add new columns, e.g.:

df['TotalAmount'] = df['unit_price'] * df['quantity']


Enhance dataset for SQL aggregations and analysis


📌 7. Load Data into MySQL
Steps:

Import raw data into Colab → Clean → Save → Jupyter Notebook
Use SQLAlchemy + PyMySQL to push data into MySQL
Automate table creation & insertion
Verify with initial SQL queries


📌 8. SQL Analysis & Business Problem Solving
Insights Extracted:

📈 Revenue trends across branches & categories
🏆 Best-selling product categories
🏙️ Sales performance by time, city, and payment method
⏰ Peak sales periods & customer buying patterns
💰 Profit margin analysis by branch & category

Note: All SQL scripts are included in the sql_queries/ folder.

📌 Project Structure
textWalmart-Data-Analysis/
│── data/                # Raw & cleaned datasets
│── notebooks/           # Jupyter & Colab notebooks for EDA & cleaning
│── sql_queries/         # SQL scripts for business analysis
│── outputs/             # Processed files, summary reports
│── README.md            # Project documentation
│── requirements.txt     # Python dependencies

📌 📊 Key Insights

Sales Insights: Identified top-performing branches, best-selling categories, and preferred payment methods
Profitability: Highlighted most profitable categories & locations
Customer Behavior: Discovered peak shopping hours, payment preferences, and rating trends


📌 ✅ Requirements

Python: 3.8+
Databases: MySQL
Libraries: pandas, numpy, sqlalchemy, pymysql


📌 🙏 Acknowledgments

Dataset: Kaggle – Walmart Sales Dataset
Inspiration: Walmart’s sales & supply chain optimization case studies
