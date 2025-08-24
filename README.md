# Swiggy Case Study (SQL)

## 🎯 Objective
To analyze customer behavior, restaurant performance, and revenue growth using SQL queries on a mock Swiggy dataset.

---

## 📂 Dataset
Three tables:

- **Customers** (`customer_id`, `name`, `city`)
- **Restaurants** (`restaurant_id`, `name`, `cuisine`, `city`)
- **Orders** (`order_id`, `customer_id`, `restaurant_id`, `order_date`, `amount`)

Sample data and a ready-to-use SQLite database are included:
- `swiggy_case_study.db`
- `customers.csv`, `restaurants.csv`, `orders.csv`

---

## ⚙️ How to Run

### Option A: SQLite CLI / DB Browser
1. Open `swiggy_case_study.db` in your SQLite tool.  
2. Run queries from `queries.sql`.

### Option B: MySQL/PostgreSQL
1. Create the schema using `schema.sql`.  
2. Import CSVs into respective tables.  
3. Run queries from `queries.sql`.

---

## 🔑 Key Queries
- Top 5 restaurants by revenue  
- Top repeat customers (>2 orders)  
- Monthly revenue growth  
- Restaurant performance (Average Order Value + Total Orders)  

---

## 📊 Insights
- Identified high-revenue restaurants and months with strong growth.  
- Detected customers with repeat ordering behavior to target with loyalty offers.  
- Measured restaurant performance using AOV and total orders for ops/marketing decisions.  

---

## 🏷️ Skills/Tech Used
`SQL` `SQLite` `Data Analysis` `Joins` `Aggregate Functions`  

