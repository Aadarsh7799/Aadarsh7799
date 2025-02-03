use xyz;
show tables;
create database loan_data;
use loan_data;
show tables;
select * from financial_loan_dataset;

select count(id) as total_loan_application from financial_loan_dataset; # total number of loan applicants

select sum(loan_amount) as total_loan_amount from financial_loan_dataset; # total loan amount

select sum(total_payment) as total_amount_collected from financial_loan_dataset; # total amount collected

select avg(int_rate)*100 as average_interest_rate from financial_loan_dataset; # average interest rate

select avg(dti)*100 as average_dti from financial_loan_dataset;# average dti     

select count(id) as good_loan_applicant from financial_loan_dataset 
where loan_status = 'Fully paid' or loan_status = 'Current'; # total good loan applicant 

select count(id) as bad_loan_applicant from financial_loan_dataset 
where loan_status = 'Charged Off';  # total bad loan applicant

select sum(loan_amount) as good_loan_amount from financial_loan_dataset 
where loan_status = 'Fully paid' or loan_status = 'Current'; 

select(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100/count(id) )
as good_loan_percent from financial_loan_dataset;


 