{# select * from dbt_tutorial.source.fact_sales #}
{{config(
    materialized='view'
)}}
select * from {{ source('source', 'fact_sales') }}