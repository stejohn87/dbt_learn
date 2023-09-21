select 
    *
from
    {{ ref('fct_reviews') }} f
left join 
    {{ ref ('dim_listings_cleansed') }} l on f.listing_id = l.listing_id
where 
    1=1
    and f.review_date < l.created_at 