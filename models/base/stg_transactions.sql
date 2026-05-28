{{ config (materialized='incremental', incremental_strategy ='merge', unique_key = 'hash') }}

select
hash,
block_number,
date,
from_address,
to_address,
value,
receipt_contract_address,
input

from {{ source('eth','transactions') }}

{% if is_incremental() %}

where date >= (select coalesce(max(date),'1900-01-01') from {{ this }})

{% endif %}