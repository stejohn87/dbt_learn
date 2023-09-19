with src_hosts as (
    select * from {{ ref('src_hosts')}}
)

select 
    
from
    src_hosts