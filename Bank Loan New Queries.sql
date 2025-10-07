create database Bank_Loan

use Bank_Loan


select* from [dbo].[Bank_loan_data]

---Total Loan Applications

select count(id) as Total_Loan_Applications from Bank_loan_data


---MTD Total Application

select count(id) as MTD_Total_Applications from Bank_Loan_Data where month(issue_date)=12 and year(issue_date)=2021

---PMTD (Month to Month) Total Loan Applications

select count(id) as PMTD_Total_Loan_Applications from Bank_Loan_Data where month(issue_date)=11 and year(issue_date)=2021

---We can calculate MTM for december month using MTM-PMTD 

---Total_Funded_Amount

select sum(loan_amount) as Total_Funded_Amount from Bank_Loan_Data 

---MTD (Month TO Date) Total_Funded_Amount
select sum(loan_amount) as MTD_Total_Funded_Amount from Bank_Loan_Data where month(issue_date) = 12 and year(issue_date)=2021

---PMTD(Previous month to date) Total_Funded_Amount
select sum(loan_amount) as PMTD_Total_Funded_Amount from Bank_Loan_Data where month(issue_date) = 11 and year(issue_date)=2021

---MTM (Month over Month) changes for december month using MTM-PMTD

---Total Amount Received
select sum(total_payment) as Total_Amount_Received from Bank_Loan_Data 

---MTD (Month TO Date) 
select sum(total_payment) as MTD_Total_Amount_Received from Bank_Loan_Data where month(issue_date)=12 and year(issue_date)=2021

---PMTD(Previous Month To Date)
select sum(total_payment) as PMTD_Total_Amount_Received from Bank_Loan_Data where month(issue_date)=11 and year(issue_date)=2021

---Average Interest Rate
select round(avg(int_rate)*100,2) as Average_Interest_Rate from Bank_Loan_Data 

---MTD Average Interest Rate
select round(avg(int_rate)*100,2) as MTD_Average_Interest_Rate from Bank_Loan_Data where month(issue_date)=12 and year(issue_date)=2021

---PMTD Average Interest Rate
select round(avg(int_rate)*100,2) as PMTD_Average_Interest_Rate from Bank_Loan_Data where month(issue_date)=11 and year(issue_date)=2021

---DTI(Debt to Income Ratio)
select round(avg(dti)*100,2) as Average_DTI from Bank_Loan_Data 

---MTD DTI
select round(avg(dti)*100,2) as MTD_Average_DTI from Bank_Loan_Data where month(issue_date)=12 and year(issue_DATE)=2021

---PMTD DTI 
select round(avg(dti)*100,2) as PMTD_Average_DTI from Bank_Loan_Data where month(issue_date)=11 and year(issue_DATE)=2021

---Good Loan Applications
select count(loan_status) as Good_Loan_Applications from Bank_Loan_Data  where loan_status='Fully Paid' or Loan_status='Current'

---Good Loan Applications Percentage
select count(case when  loan_status='Fully Paid' or Loan_status='Current' then id end)*100/count(id)  as Good_Loan_Applications_Percentage from bank_loan_data 

---Bad Loan Applications
select count(loan_status) as Bad_Loan_Applications from Bank_Loan_Data  where loan_status='charged off'

---Bad Loan Applications Percentage
select count(case when loan_status='Charged off' then id end)*100/count(id)  as Bad_Loan_Applications_Percentage from bank_loan_data 

---Good Loan Funded Amount
select sum(loan_amount) as Good_Loan_Funded_Amount from Bank_loan_data where loan_status='Fully Paid' or Loan_status='Current'

---Good Loan Total Amount Received
select sum(total_payment) as Good_Loan_Total_Amount_Received from Bank_loan_data where loan_status='Fully Paid' or Loan_status='Current'

---Bad Loan Funded Amount
select sum(loan_amount) as Bad_Loan_Funded_Amount from Bank_loan_data where loan_status='charged off'

---Bad Loan Total Amount Received
select sum(total_payment) as Bad_Loan_Total_Amount_Received from Bank_loan_data where loan_status='charged off'


---Creating Table

select
loan_status,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received,
sum( case when month(issue_date)=12 and year(issue_date)=2021 then loan_amount else 0 end) as MTD_Total_Funded_Amount,
sum(case when month(issue_date)=11 and year(issue_date)=2021 then total_payment else 0 end) as MTD_Total_Amount_Received,
avg(int_rate)*100 as Average_Interest_Rate_Percentage,
avg(dti)*100 as Average_dti 
from bank_loan_data group by loan_status

---Monthly Trend Analysis 

select 
month(issue_date) as Month_Number,
datename(month,issue_date) as Month_Name,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received
 from bank_loan_data group by  month(issue_date), datename(month,issue_date)
 order by month(issue_date)

 ---Regional Sales Analysis
select 
address_state,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received from bank_loan_data group by address_state
order by count(id) desc

---Loan Term Analysis
select term,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received from bank_loan_data group by term
order by count(id) desc

---Employee Length Analysis
select emp_length,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received from bank_loan_data group by emp_length
order by emp_length

---Purpose of Loan
select purpose,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received from bank_loan_data group by purpose
order by purpose

---	Home ownership Analysis

select home_ownership,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_amount_received from bank_loan_data group by home_ownership
order by home_ownership