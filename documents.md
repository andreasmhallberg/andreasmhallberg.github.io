---
layout: page
title: Documents
permalink: /documents/
pubyears:
    - 2017
    - 2016
---

<br/>

## Publications

{% for pubyear in page.pubyears %}
<div class="pubyear">{{ pubyear }}</div>
{% for publication in site.data.publications  %}

{% if publication.year == pubyear %}
<b>{{ publication.title }}</b>
&emsp;<span class="date">{{ publication.type }}</span><br>
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

<br/>

## Teaching documents

These documents are subject to continuous tinkering. The latest version can always be found here. 

{% for docpost in site.posts | reversed %}
{% if docpost.document %} 


{% if docpost.thumbnail %}
<a href="{{ docpost.document }}"><img style="height: 3em; width: 3em; float: left; margin-right: 30px" src="{{ docpost.thumbnail }}"></a>
{%  endif %}
{% if docpost.documenttitle %}
  {{ docpost.documenttitle }}
  {% else %}
  {{ docpost.title }}
{% endif %}<!--
-->{% if docpost.lang == 'sv'%}
  <span class="date">(Swedish)</span>
{% endif %}<br>
<span class="publink">[pdf]({{ docpost.document }}) | [Blog post]({{ site.url }}{{ docpost.url }})</span>

{% endif %}
{% endfor %}
