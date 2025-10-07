# Bank Loan Project- Power BI & SQL

## 🎯 Objective
The goal of this project was to analyze and visualize key aspects of **bank loan performance** to provide insights into loan applications, funding, repayments, and borrower behavior.  
The project helps identify trends, assess loan quality, and monitor financial metrics to support **data-driven lending decisions**.

---

## 📊 Problem Statements & Business Requirements

### 🧾 Dashboard 1: Summary
The Summary Dashboard tracks the overall health of the loan portfolio with critical KPIs:

- **Total Loan Applications** – Total number of loan requests received  
- **Total Funded Amount** – Total amount disbursed as loans  
- **Total Amount Received** – Total repayments received from borrowers  
- **Average Interest Rate** – Average lending rate across all loans  
- **Average DTI (Debt-to-Income Ratio)** – Measures borrower financial health  

**Good vs Bad Loan KPIs**
- **Good Loan %**, **Applications**, **Funded Amount**, **Total Received**
- **Bad Loan %**, **Applications**, **Funded Amount**, **Total Received**

**Loan Status Grid View**  
Displays key financial metrics by loan status such as:
- Fully Paid  
- Current  
- Charged Off  

Each status shows **applications, funded amount, amount received, MTD totals, interest rate**, and **DTI**.

---

### 🌍 Dashboard 2: Overview
The Overview Dashboard visualizes loan distribution and trends:

- **Total Loan Application by Month** (Line Chart) – Identifies seasonal and monthly loan trends  
- **Total Loan Application by State** (Filled Map) – Highlights geographic distribution  
- **Loan Term Analysis** (Donut Chart) – Compares 36-month vs 60-month loan terms  
- **Employment Length** (Bar Chart) – Shows loan distribution by borrower work experience  
- **Loan Purpose Breakdown** (Bar Chart) – Analyzes loan purpose (debt consolidation, credit card, home improvement, etc.)  
- **Home Ownership Analysis** (Tree Map) – Examines how home ownership affects loan applications  

---

### 📋 Dashboard 3: Details
The Details Dashboard consolidates all loan-related data in a **comprehensive table view**, enabling:
- Quick access to borrower and loan-level metrics  
- Filtering by **State, Grade, Purpose**, and **Loan Type (Good/Bad)**  
- Holistic insights into loan portfolio health and borrower characteristics  

---

## 🧠 Dataset
**Source:** SQL Database connected to Power BI  

The dataset contains:
- Loan ID  
- Issue Date  
- Loan Status  
- Funded Amount  
- Amount Received  
- Term (36/60 months)  
- Employment Length  
- Loan Purpose  
- Home Ownership  
- Interest Rate  
- DTI Ratio  
- State, Grade, and other borrower details  

---

## 📈 KPIs Tracked
- Total Loan Applications  
- Total Funded Amount  
- Total Amount Received  
- Average Interest Rate  
- Average Debt-to-Income Ratio  
- Good Loan % vs Bad Loan %  
- MTD (Month-to-Date) & MoM (Month-over-Month) performance metrics  

---

## ⚙️ Process

### 1️⃣ Data Preparation (SQL Server)
- Created and imported dataset into **MS SQL Server**
- Performed **data cleaning**, formatting, and transformation  
- Used SQL queries for:
  - Aggregations (SUM, COUNT, AVG)
  - Grouping by date, term, and state  
  - Calculating monthly and cumulative KPIs  

### 2️⃣ Data Modeling & Processing (Power BI)
- Connected Power BI to SQL Server  
- Used **Power Query** for shaping and cleaning data  
- Created **Date Table** for time intelligence  
- Built relationships and hierarchies  

### 3️⃣ DAX Calculations
Developed DAX measures for:
- MTD and MoM growth  
- Good vs Bad Loan percentages  
- KPIs like Average Interest Rate and DTI  
- Funded and Received Amount trends  

### 4️⃣ Visualization (Power BI Dashboards)
Designed **three interactive dashboards** with navigation buttons and dynamic filters:
- **Summary Dashboard** – KPI overview and loan quality  
- **Overview Dashboard** – Visual breakdown by trends and borrower segments  
- **Details Dashboard** – Comprehensive data view  

---

## 🧰 Tools & Technologies Used
- **MS SQL Server (v19.0)** – For data storage and query processing  
- **SQL Server Management Studio (SSMS)** – For database operations and analysis  
- **Power BI (June 2023 Version)** – For visualization and dashboard creation  
- **Microsoft Excel (2021)** – For preliminary data inspection and export  
- **DAX (Data Analysis Expressions)** – For custom metrics and KPIs  

---

## 🔍 Key Insights
- Total of **38.6K loan applications** with **$435.8M funded** and **$473.1M received**  
- **Good Loans** make up **86.2%**, while **Bad Loans** are **13.8%** of total applications  
- Most loans are for **Debt Consolidation**  
- **36-month loans** dominate with **73%** share  
- Borrowers with **10+ years of employment** form the largest segment  
- **Mortgage holders** take more loans than renters  
- Loan activity shows a steady increase toward year-end  

---

## 🏁 Conclusion
This project demonstrates how **SQL and Power BI** can be used together to turn raw loan data into **actionable insights**.  
By combining **data modeling, DAX measures**, and **interactive dashboards**, this analysis helps financial institutions:
- Track portfolio health  
- Assess loan quality  
- Identify borrower trends  
- Optimize lending decisions  

---

## 👨‍💻 About
I developed a comprehensive **Bank Loan Analysis** project integrating **SQL and Power BI** to explore, clean, and visualize loan data across multiple dashboards.  
This portfolio project highlights data analysis, SQL querying, DAX calculations, and dashboard storytelling.

---

## 📂 Resources
- Power BI Dashboard: *Bank Loan Report (Summary, Overview, Details)*  
- SQL Database: *Loan Portfolio Dataset*  
- Tools: *SQL Server, Power BI, Excel*

---

⭐ **If you found this project helpful, don't forget to star the repo!**
