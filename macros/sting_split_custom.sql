{% macro string_split_custom(string_array) %}


SPLIT(
    REPLACE
        (REPLACE(
            REPLACE( {{string_array}} , "[", ""),
        "]",""),
    "'", ""),
",")

{% endmacro %}