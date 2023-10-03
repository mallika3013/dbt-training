with
order as (
    select * from {{ ref('raw_orders') }}
)

select orderid,
sum(ordersellingprice) as total_sp
from ordersellingprice 
group by orderid 
having total_sp < 0
