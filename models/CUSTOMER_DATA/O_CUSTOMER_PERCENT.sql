{{ config(materialized='table') }}

 
select a.customer_id,
first_name,
last_name,
monthly_salary,
monthly_spending,
monthly_rent,
(monthly_spending / monthly_salary ) * 100 as spending_percentage,
(monthly_rent / monthly_salary ) * 100 as rent_percentage,
monthly_salary - (monthly_spending + monthly_rent) as remaing_amount
from 
{{ source('CUST_DATA_M','customer_financials')}} A
JOIN {{ source('CUST_DATA_M','customers')}} B
ON A.customer_id=B.customer_id