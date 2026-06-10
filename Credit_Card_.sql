
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);
SELECT * FROM cc_detail;
SELECT 
    COUNT(*) - COUNT(client_num) AS client_num_nulls,
    COUNT(*) - COUNT(card_category) AS card_category_nulls,
    COUNT(*) - COUNT(annual_fees) AS annual_fees_nulls,
    COUNT(*) - COUNT(activation_30_days) AS activation_30_days_nulls,
    COUNT(*) - COUNT(customer_acq_cost) AS customer_acq_cost_nulls,
    COUNT(*) - COUNT(credit_limit) AS credit_limit_nulls,
    COUNT(*) - COUNT(total_revolving_bal) AS total_revolving_bal_nulls,
    COUNT(*) - COUNT(total_trans_amt) AS total_trans_amt_nulls,
    COUNT(*) - COUNT(total_trans_ct) AS total_trans_ct_nulls,
    COUNT(*) - COUNT(delinquent_acc) AS delinquent_acc_nulls
FROM cc_detail;

SELECT COUNT(*) - COUNT(DISTINCT client_num) AS duplicate_rows
FROM cc_detail;

SELECT COUNT(*) AS blank_rows
FROM cc_detail
WHERE client_num IS NULL
AND card_category IS NULL
AND annual_fees IS NULL;


CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);
SELECT * FROM cust_detail;

SELECT 
    COUNT(*) - COUNT(customer_age) AS age_nulls,
    COUNT(*) - COUNT(income) AS income_nulls,
    COUNT(*) - COUNT(cust_satisfaction_score) AS satisfaction_nulls
FROM cust_detail;






