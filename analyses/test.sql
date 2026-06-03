-- {{ codegen.generate_source(schema_name='eth_schema', database_name='eth')  }}

-- select
-- {{dbt_utils.star(from = ref('stg_transactions_enriched',except=['new_field']))}}
-- from {{ ref('stg_transactions_enriched')}}


-- {{ audit_helper.compare_relations(source('eth','contracts'),source('eth','contracts_clone')) }}

-- {{ target.name }}


-- {{ target.database }}

-- {{ target.schema }}



{{ codegen.generate_model_yaml(['stablecoin_activity_per_day'])}}