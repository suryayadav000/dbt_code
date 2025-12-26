{{ 
    config(materialized='view') 
}}

select a.*, 'RSA' as souce_cd

from {{source('CUST_DATA_M','customers')}} a



