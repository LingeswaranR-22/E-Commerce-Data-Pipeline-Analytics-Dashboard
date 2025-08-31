 # 🛒 E-Commerce Data Pipeline & Analytics Dashboard

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)]()  
[![dbt](https://img.shields.io/badge/dbt-Transformations-orange)]()  
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)]()  
[![ETL Pipeline](https://img.shields.io/badge/ETL%20Pipeline-Windows%20Task%20Scheduler-green)]()  
[![Status](https://img.shields.io/badge/Project-Active-brightgreen)]()  
[![License](https://img.shields.io/github/license/LingeswaranR-22/E-Commerce-Data-Pipeline-Analytics-Dashboard)]()

End-to-end analytics pipeline for e-commerce order data using PostgreSQL, dbt, and Power BI. Includes source ingestion, transformation logic, automated testing, and dashboard-ready marts. Built for reproducibility, automation, and stakeholder impact.

---

## 📊 Sample Visuals

> *Coming soon: Power BI screenshots showing product performance, daily sales, and customer lifetime value.*

---

## ✨ What You Get

- ✅ Clean staging models using dbt best practices  
- ✅ Aggregated marts for product, sales, and customer insights  
- ✅ Automated data refresh via Windows Task Scheduler  
- ✅ Fully tested pipeline with 12+ dbt validations  
- ✅ Git-tracked project with modular folder structure

---

## 🧱 Project Structure

---

## 💼 Business Use Cases

- 📦 **Product Performance**: Identify top-selling products and revenue drivers  
- 📈 **Sales Trends**: Monitor daily order volume and revenue  
- 👥 **Customer Lifetime Value**: Understand customer purchasing behavior over time  
- 📊 **Dashboard Reporting**: Feed Power BI visuals for stakeholder decision-making  
- 🔁 **Automation**: Schedule daily refreshes for up-to-date insights

---

## 🚀 Setup

1. **Clone the repo**
   ```bash
   git clone https://github.com/LingeswaranR-22/E-Commerce-Data-Pipeline-Analytics-Dashboard.git
   cd dbt_project

2. **Set up Python environment**

   python -m venv airflow_env
   airflow_env\Scripts\activate
   pip install dbt-postgres

3. **Configure dbt profile**
   Create or edit C:\Users\ADMIN\.dbt\profiles.yml:

    ```bash
   ecommerce_dashboard_project:
   target: dev
   outputs:
    dev:
      type: postgres
      host: localhost
      user: postgres
      password: your_password
      port: 5432
      dbname: ecommerce
      schema: public
      threads: 1

## ▶️ Run the Pipeline

# Activate environment
airflow_env\Scripts\activate

# Navigate to project
cd dbt_project

# Build models
dbt run --full-refresh

# Run tests
dbt test

✅ Models will be materialized as views in your Postgres database
✅ Tests will validate key fields for nulls and uniqueness


## 🔍 What It Uses

**orders table with:**

order_id, customer_id, product_id, order_date, total_amount

**dbt transformations to:**

Clean and stage raw data
Aggregate metrics for dashboards

**Power BI dashboard (external) for:**

Product performance
Sales summary
Customer lifetime value


## 📊 Dashboard Spec (Power BI)

**Visuals built from dbt marts:**

📦 Product Performance → bar chart by revenue

📈 Sales Summary → line chart of daily revenue

👥 CLV → scatter plot of customer value vs frequency


## 🧪 Testing

**12+ dbt tests:**

not_null and unique on order_id, customer_id, etc.

Source-level and model-level validations

## 🧠 Notes

This project uses only the orders table for now

Future expansion: add products, customers, and order_items tables

dbt folder structure aligned with best practices for staging and marts.


## 👨‍💻 Author

**Lingeswaran R** 
Detail-oriented data engineer focused on building reproducible, automated analytics pipelines.


## 📄 License

MIT License — free to use, modify, and share.




