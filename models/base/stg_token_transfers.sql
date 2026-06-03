select
transaction_hash,
date,
token_address,
value

from {{ source('eth','token_transfers') }}


{% if target.name == 'dev' %}
where date >= dateadd('day', -3, current_date)
{% endif %}