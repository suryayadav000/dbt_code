{% snapshot O_CUSTOMERS_SNAP %}

{{ 
    config(
        target_schema='snapshot',
        strategy='timestamp',
        unique_key='customer_id',
        updated_at='updated_at',
        invalidate_hard_deletes=true)
}}

select * from {{ source('CUST_DATA_M','stg_customers_snap')}}

{% endsnapshot %}