{{ config(materialized='view') }}

select
a.*,
{{ customer_bonus('monthly_salary') }} as total_sal,
{{ total_spent('monthly_spending','monthly_rent') }} as total_extras,
{{ avg_spent('monthly_spending','monthly_rent') }} as total_avg_extras
from 
{{ source('CUST_DATA_M','customer_financials') }} a