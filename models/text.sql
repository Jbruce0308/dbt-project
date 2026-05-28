{{  config(materialized='view')  }}

select 
*
from {{ source('eth','contracts') }}