{%- extends 'null.tpl' -%}

{#display data priority#}


{%- block data_priority scoped -%}
    {%- for type in output.data | filter_data_type -%}
        {%- if type == 'application/pdf' -%}
            {%- block data_pdf -%}
            {%- endblock -%}
        {%- elif type == 'image/svg+xml' -%}
            {%- block data_svg -%}
            {%- endblock -%}
        {%- elif type == 'image/png' -%}
            {%- block data_png -%}
            {%- endblock -%}
        {%- elif type == 'text/html' -%}
            {%- block data_html -%}
            {%- endblock -%}
        {%- elif type == 'image/jpeg' -%}
            {%- block data_jpg -%}
            {%- endblock -%}
        {%- elif type == 'text/plain' -%}
            {%- block data_text -%}
            {%- endblock -%}
        {%- elif type == 'text/latex' -%}
            {%- block data_latex -%}
            {%- endblock -%}
        {%- elif type == 'application/javascript' -%}
            {%- block data_javascript -%}
            {%- endblock -%}
        {%- else -%}
            {%- block data_other -%}
            {%- endblock -%}
        {%- endif -%}
    {%- endfor -%}
{%- endblock data_priority -%}
