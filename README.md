#  Bank Loan Analysis – Power BI & SQL

---

##  Objective
The goal of this project was to analyze and visualize key aspects of **bank loan performance** to provide insights into loan applications, funding, repayments, and borrower behavior.  
The project helps identify trends, assess loan quality, and monitor financial metrics to support **data-driven lending decisions**.

---

##  Dataset
**Source:** SQL Database connected to Power BI  

The dataset contains:
- Loan ID  
- Issue Date  
- Loan Status  
- Funded Amount  
- Amount Received  
- Term of Loan 
- Employment Length  
- Loan Purpose  
- Home Ownership  
- Interest Rate  
- DTI (Debt to Income) Ratio  
- State, Grade, and other borrower details  

---

##  KPIs Tracked
- Total Loan Applications  
- Total Funded Amount  
- Total Amount Received  
- Average Interest Rate  
- Average Debt-to-Income Ratio  
- Good Loan % vs Bad Loan %  
- MTD (Month-to-Date) & MoM (Month-over-Month) performance metrics  

---

##  Process

###  Data Preparation (SQL Server)
- Created and imported dataset into **MS SQL Server**
- Performed **data cleaning**, formatting, and transformation  
- Used SQL queries for:
  - Aggregations (SUM, COUNT, AVG)
  - Grouping by date, term, and state  
  - Calculating monthly and cumulative KPIs  

###  Data Modeling & Processing (Power BI)
- Connected Power BI to SQL Server  
- Used **Power Query** for shaping and cleaning data  
- Created **Date Table** for time intelligence  
- Built relationships and hierarchies  

###  DAX Calculations
Developed DAX measures for:
- MTD and MoM growth  
- Good vs Bad Loan percentages  
- KPIs like Average Interest Rate and DTI  
- Funded and Received Amount trends  

###  Visualization (Power BI Dashboards)
Designed **three interactive dashboards** with navigation buttons and dynamic filters:
- **Summary Dashboard** – KPI overview and loan quality  
- **Overview Dashboard** – Visual breakdown by trends and borrower segments  
- **Details Dashboard** – Comprehensive data view  

---

##  Dashboards

###  Dashboard 1: Summary

https://github.com/ashishchat1934/Bank-Loan-Project-SQL-and-Power-BI-Dashboard-/blob/2e88abc88a8c34a44c942050de975fbb2ee4cd25/Bank%20Loan%20Report%20Summary%201.png
Tracks the overall health of the loan portfolio with key KPIs:
- **Total Loan Applications**  
- **Total Funded Amount**  
- **Total Amount Received**  
- **Average Interest Rate**  
- **Average DTI (Debt-to-Income Ratio)**  

**Good vs Bad Loan KPIs**
- Good Loan % / Applications / Funded Amount / Total Received  
- Bad Loan % / Applications / Funded Amount / Total Received  

**Loan Status Grid View**  
Displays metrics by loan status:
- Fully Paid  
- Current  
- Charged Off  

---

###  Dashboard 2: Overview
Visualizes loan distribution and performance trends:
- **Monthly Trends by Issue Date** (Line Chart)  
- **Regional Analysis by State** (Filled Map)  
- **Loan Term Analysis** (Donut Chart – 36 vs 60 months)  
- **Employment Length Analysis** (Bar Chart)  
- **Loan Purpose Breakdown** (Bar Chart)  
- **Home Ownership Analysis** (Tree Map)  

---

###  Dashboard 3: Details
Provides a consolidated table view of all loan-related information:
- Filters by **State, Grade, Purpose**, and **Loan Type (Good/Bad)**  
- Enables detailed analysis of borrower and loan metrics  
- Offers quick access to all KPIs in one interface  

---

##  Key Insights
- Total of **38.6K loan applications** with **$435.8M funded** and **$473.1M received**  
- **Good Loans** make up **86.2%**, while **Bad Loans** are **13.8%** of total applications  
- Most loans are for **Debt Consolidation**  
- **36-month loans** dominate with **73%** share  
- Borrowers with **10+ years of employment** form the largest segment  
- **Mortgage holders** take more loans than renters  
- Loan activity shows a steady increase toward year-end  

---

##  Tools & Technologies Used
- **MS SQL Server ** – For data storage and query processing  
- **SQL Server Management Studio (SSMS)** – For database operations and analysis  
- **Power BI ** – For visualization and dashboard creation  
- **Microsoft Excel ** – For preliminary data inspection and export  
- **DAX (Data Analysis Expressions)** – For custom metrics and KPIs  

---

## Conclusion
This project demonstrates how **SQL and Power BI** can be used together to turn raw loan data into **actionable insights**.  
By combining **data modeling, DAX measures**, and **interactive dashboards**, this analysis helps financial institutions:
- Track portfolio health  
- Assess loan quality  
- Identify borrower trends  
- Optimize lending decisions  

---

##  About
I developed a comprehensive **Bank Loan Analysis** project integrating **SQL and Power BI** to explore, clean, and visualize loan data across multiple dashboards.  
This portfolio project highlights data analysis, SQL querying, DAX calculations, and dashboard storytelling.

---

##  Resources
- Power BI Dashboard: *Bank Loan Report (Summary, Overview, Details)*  
- SQL Database: *Loan Portfolio Dataset*  
- Tools: *SQL Server, Power BI, Excel*

---

⭐ **If you found this project helpful, don't forget to star the repo!**
