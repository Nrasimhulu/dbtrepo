{{
    config(
        materialized='table',
        transient=false
    )
}}

select * from dev_db.dev_schema.customer where c_birth_year=1965