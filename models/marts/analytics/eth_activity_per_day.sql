select 
date,
transaction_category,
count(*) as tx_count,
{{ conversion('value','18') }} as sum_value_etherum
from {{ ref('stg_transactions_enriched') }} as eth_value
group by 
date,
transaction_category


-- {{random_macro()}}