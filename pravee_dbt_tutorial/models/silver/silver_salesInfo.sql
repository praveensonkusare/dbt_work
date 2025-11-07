with sales as (
select 
     sales_id,
      product_sk,
      customer_sk,
      gross_amount,
      payment_method
from {{ ref('bronze_sales') }}
),
 product as (
select
    product_sk,
    category
from {{ref('bronze_product')}}
 ),
customer as (
  select
customer_sk,
gender
from {{ ref('bronze_customer') }}
)
select 
 sales.sales_id,
 sales.gross_amount,
 sales.payment_method,
 product.category,
 customer.gender
  from sales
  join bronze_product as product
    on sales.product_sk = product.product_sk
  join bronze_customer as customer
    on sales.customer_sk = customer.customer_sk





