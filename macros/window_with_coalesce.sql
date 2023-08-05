{% macro window_with_coalesce(agg_func, column_name, partition_by, order_by = '', value_if_null = '',col_alias = '') -%}
    COALESCE (
       {{ agg_func }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                {% if order_by != '' -%}
                ORDER BY {{ order_by }}
                {% endif -%}
        ),
        {{ value_if_null }}
     )
     {% if col_alias != '' -%}
     as {{ col_alias }}
     {% endif -%}
{% endmacro %}
