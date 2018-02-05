{% set is_open_source = cookiecutter.open_source_license != 'Not open source' -%}

# {{ cookiecutter.project_name }}

{% if is_open_source %}
[![Build Status](https://travis-ci.org/{{ cookiecutter.github_username }}/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.svg?branch=develop)](https://travis-ci.org/{{ cookiecutter.github_username }}/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }})
{% else %}
[![Build Status](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.svg?branch=develop)](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }})
{% endif %}

{{ cookiecutter.project_short_description }}

{% if is_open_source %}
 - Free software: {{ cookiecutter.open_source_license }}
 - Documentation: https://{{ cookiecutter.project_slug | replace("_", "-") }}.readthedocs.io.
{% endif %}
