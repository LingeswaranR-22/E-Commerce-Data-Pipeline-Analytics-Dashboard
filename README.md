 # 🛒 E-Commerce Data Pipeline & Analytics Dashboard
 
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)  
![dbt](https://img.shields.io/badge/dbt-Transformations-orange)  
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow) 
![ETL Pipeline](https://img.shields.io/badge/ETL%20Pipeline-Windows%20Task%20Scheduler-green)  
![Status](https://img.shields.io/badge/Project-Active-brightgreen)  
![License](https://img.shields.io/github/license/LingeswaranR-22/E-Commerce-Data-Pipeline-Analytics-Dashboard)

End-to-end analytics pipeline for e-commerce order data using PostgreSQL, dbt, and Power BI. Includes source ingestion, transformation logic, automated testing, and dashboard-ready marts. Built for reproducibility, automation, and stakeholder impact.

## 📚 Table of Contents

- [Sample Visuals](#-sample-visuals)
- [What You Get](#-what-you-get)
- [Project Structure](#-project-structure)
- [Business Use Cases](#-business-use-cases)
- [Setup](#-setup)
- [Run the Pipeline](#-run-the-pipeline)
- [What It Uses](#-what-it-uses)
- [Dashboard Spec](#-dashboard-spec-power-bi)
- [Testing](#-testing)
- [Notes](#-notes)
- [Future Improvements](#-future-improvements)
- [Author](#-author)
- [.gitignore Highlights](#-.gitignore-highlights)
- [License](#-license)
  
---

## 📊 Sample Visuals

![Customer Overview Dashboard](<img width="1162" height="652" alt="Customer Overview" src="https://github.com/user-attachments/assets/02ad2d60-e40c-4fed-b5e1-52a758a4b485" />)
![Product Performance Dashboard](<img width="1157" height="650" alt="Product Performance" src="https://github.com/user-attachments/assets/685e117f-591c-42de-b635-540d8d0c6969" />)
![Revenue Trends Dashboard](<img width="1156" height="651" alt="Revenue Trends" src="https://github.com/user-attachments/assets/33eaa73a-e30c-4862-accc-6d051c80f6c2" />)
![KPI Dashboard](<img width="1165" height="647" alt="KPI" src="https://github.com/user-attachments/assets/39b6931c-ecbb-4a80-ae04-739f70a6df5b" />)

---

## ✨ What You Get

- ✅ Clean staging models using dbt best practices  
- ✅ Aggregated marts for product, sales, and customer insights  
- ✅ Automated data refresh via Windows Task Scheduler  
- ✅ Fully tested pipeline with 12+ dbt validations  
- ✅ Git-tracked project with modular folder structure

---

## 🧱 Project Structure
```
dbt_project/
├── models/ 
│ └── ecommerce_dashboard_project/
│  ├── staging/
│  │ ├── stg_orders.sql
│  │ └── schema.yml
│  └── marts/
│   └── core/
│    ├── product_performance.sql
│    ├── sales_summary.sql │ 
│     └── customer_lifetime_value.sql
├── dbt_project.yml
└── README.md**
```
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

 ---

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

---

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

---

## 📊 Dashboard Spec (Power BI)

**Visuals built from dbt marts:**

📦 Product Performance → bar chart by revenue

📈 Sales Summary → line chart of daily revenue

👥 CLV → scatter plot of customer value vs frequency

---

## 🧪 Testing

**12+ dbt tests:**

not_null and unique on order_id, customer_id, etc.

Source-level and model-level validations

---

## 🧠 Notes

This project uses only the orders table for now

Future expansion: add products, customers, and order_items tables

dbt folder structure aligned with best practices for staging and marts.

---

## 🔮 Future Improvements

- Add `products`, `customers`, and `order_items` tables
- Integrate dbt snapshots for historical tracking
- Deploy dashboard to Power BI Service with auto-refresh
- Add relationship tests between staging and marts

---

## 👨‍💻 Author

**Lingeswaran R** 

Detail-oriented data engineer focused on building reproducible, automated analytics pipelines.

---

## 📂 .gitignore Highlights

     pycache/ *.pyc dbt_packages/ target/ logs/ .env

---

## 📄 License

MIT License — free to use, modify, and share.




