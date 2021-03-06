---
layout: page
title: Documents
permalink: /documents/
---


[Publications](#publications) --- [Misc. publications](#misc-publications) --- [Teaching materials](#teaching-materials)

[CV-en](/documents/hallberg-cv-en.pdf)
[CV-sv](/documents/hallberg-cv-sv.pdf)


## Publications

{% for publication in site.data.publications  %}

{{ publication.author }} <!--
-->({{ publication.year}}).
{{ publication.title }}.
{{ publication.ref | markdownify | remove: '<p>' | remove: '</p>' }}
<!--
{{% if publication.doi %}}
<a href="{{ publication.doi }}">{{ publication.doi }}</a>
{{% endif %}}
-->
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
  <span class="date">{{ publication.abstract | markdownify }}</span>
{% endif %}
</details>

{% endfor %}

## Misc. publications

{% for publication in site.data.publicationsmisc  %}


{{ publication.author }}
({{ publication.year }}). {{ publication.title }}
({{ publication.type }}).
{{ publication.ref | markdownify | remove: '<p>' | remove: '</p>' }}
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
  <span class="date">{{ publication.abstract | markdownify }}</span>
{% endif %}
</details>
{% endfor %}


## Teaching materials

These documents are subject to continuous tinkering. The latest version can always be found here. For recorded lectures, see `lecture` under <a href='{{ site.baseurl }}/tags/'>tags</a>.

{% for docpost in site.posts | reversed %}
{% if docpost.document %} 


{% if docpost.minidoc %}
<a href="{{ docpost.document }}"><img style="width: 3em; height: 3em; float: left; margin-right: 30px" src="{{ docpost.minidoc }}"></a>
  {% else %}
<a href="{{ docpost.document }}"><img style="width: 3em; height: 3em; float: left; margin-right: 30px" src="{{ docpost.thumbnail }}"></a>
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
<!-- <span class="date"> -->
<!-- &emsp;{% for tag in docpost.tags %} -{{tag}}{% endfor %} -->
<!-- </span> -->


{% endif %}
{% endfor %}
