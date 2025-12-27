{% macro customer_bonus(salary) -%}
    ({{ salary}} + 1000)
{%- endmacro %}


{% macro total_spent(rent,monthly) -%}
  {{ rent }} + {{ monthly }}
{%- endmacro %}

{% macro avg_spent(rent,monthly) -%}
    ({{ rent }} + {{ monthly }}) / 2
{%- endmacro %}