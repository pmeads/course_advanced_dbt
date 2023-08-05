{% macro rolling_average_n_periods(column_name, partition_by, order_by="created_at", agg_func="avg", n=7) %}
    {{ agg_func }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ n - 1 }} PRECEDING AND CURRENT ROW
            ) AS avg_{{ n }}_periods_{{ column_name }}
{% endmacro %}
