{{ config(materialized='ephemeral') }}

select
transaction_hash,
count(*) token_transfer_count 
from {{ ref('stg_token_transfers') }}
group by transaction_hash