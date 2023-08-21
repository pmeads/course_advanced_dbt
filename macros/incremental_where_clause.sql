{%- macro incremental_where_clause(column_name = 'created_at', lookback_window = -3, periods = 'day') -%}

where {{ column_name }} >= (select DATEADD('{{ periods }}' , {{ lookback_window }}, max( {{ column_name }} )) from {{ this }})

{%- endmacro -%}
