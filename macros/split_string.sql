{% macro split_replace(column_name) %}

SPLIT(REPLACE(REPLACE(REPLACE({{column_name}}, "[", ""),"]",""),"'", ""),",")

{% endmacro %}