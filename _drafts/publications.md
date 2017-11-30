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



# Other documents 

{% for docpost in site.posts | reversed %}
{% if docpost.document %} 

<a href="{{ docpost.document }}"><img style="height: 3em; width: 3em; float: right; " src="{{ docpost.thumbnail }}"></a>
{% if docpost.documenttitle %}
  {{ docpost.documenttitle }}
  {% else %}
  {{ docpost.title }}
{% endif %}<br>
<span class="publink">[pdf]({{ docpost.document }}) | [Blog post]({{ site.url }}{{ docpost.url }})</span>



{% endif %}
{% endfor %}


<!--

<table style="width: 100%" >
{% for docpost in site.posts | reversed %}
{% if docpost.document %} 
<tr style="margin-left: 0px">
<td>
{% if docpost.documenttitle %}
  {{ docpost.documenttitle }}
  {% else %}
  {{ docpost.title }}
{% endif %}<br>
<span class="publink"><a href="{{ docpost.document }}">pdf</a> | <a href="{{ site.url }}{{ docpost.url }}">Blog post</a></span>
</td>
<td style="width: 3em; vertical-align: bottom;">
<a href="{{ docpost.document }}"><img style="height: 3em;" src="{{ docpost.thumbnail }}"></a>
</td>
</tr>
{% endif %}
{% endfor %}
</table>



-->
