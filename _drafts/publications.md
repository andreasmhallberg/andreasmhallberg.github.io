---
layout: page
title: Publications
permalink: /publications/
pubyears:
    - 2017
    - 2016
excerpt: ''
---

{% for pubyear in page.pubyears %}
<h2 style="float: right;">{{ pubyear }}</h2>
{% for publication in site.data.publications  %}

{% if publication.year == pubyear %}
<b>{{ publication.title }}</b>
&emsp;<span class="date">({{ publication.type }})</span><br>
{{ publication.ref}}
<details style="margin-top: -.7em; margin-left: 1em">
<summary>
<!-- abstract --> {% if publication.abstract %}
 <a>abstract</a>
 {% else %}
 <span style="color: $gray"> abstract </span>
{% endif %} |
<!-- pdf -->
{% if publication.pdf %}
 <a href="{{ publication.pdf }}">pdf</a>
  {% else %} 
  <span style="color: $gray">pdf</span>
{% endif %} |
<!-- link -->
{% if publication.link %}
 <a href="{{ publication.link }}">link</a>
 {% else %}
 <span style="color: $gray">link</span>
{% endif %}
</summary>
{% if publication.abstract %}
  <span class="date">{{ publication.abstract }}</span>
{% endif %}
</details>



{% endif %}
{% endfor %}
{% endfor %}
