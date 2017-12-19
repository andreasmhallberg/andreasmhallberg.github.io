---
layout: page
title: Teaching documents
permalink: /teachingdocuments/
excerpt: ''
---
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
