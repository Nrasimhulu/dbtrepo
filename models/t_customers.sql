{{
    config(
        materialized='table'
    )
}}


with customers as (
    select
        customer_id as customers_id,
        first_name,
        last_name
        from {{ source('s1', 'customers') }}
)
select * from customers