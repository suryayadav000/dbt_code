{{ config(materialized='incremental',
incremental_strategy='append') }}

select 

CUSTOMER_ID, FIRST_NAME, LAST_NAME, FIRST_NAME||' '||LAST_NAME as full_name,
EMAIL, PHONE_NUMBER, COUNTRY, CITY, CUSTOMER_STATUS,
CURRENT_TIMESTAMP() AS REC_CREATE_DATE,
CURRENT_TIMESTAMP() AS REC_UPDATE_DATE
FROM 
{{ source('CUST_DATA_M','customers') }}


