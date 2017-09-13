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
{{ pubyear }}
{% for publication in site.data.publications  %}

{% if publication.year == pubyear %}

<b>{{ publication.title }}</b>
<span class="date">{{ publication.type }}</span><br>
{{ publication.ref}}
{% if publication.abstract %}
<details style="margin-top: -.7em">
  <summary class="publink">abstract
  {% if publication.pdf or publication.link %} | {% endif %}
{% if publication.pdf %} 
  <a href="{{ publication.pdf }}"> pdf</a>
  {% if publication.link %} | {% endif %}
{% endif %}
{% if publication.link %} 
  <a href="{{ publication.link }}">Link</a>
{% endif %}
  </summary>
  <p class="date">{{ publication.abstract }}</p>
</details>
{% else %}
<span class="publink">
{% if publication.pdf %} 
  <a href="{{ publication.pdf }}">pdf</a>
  {% if publication.link%} | {% endif %}
{% endif %}
{% if publication.link %} 
  <a href="{{ publication.link }}">Link</a>
{% endif %}
</span>
{% endif %}

{% endif %}
{% endfor %}
{% endfor %}


# Other documents 


{% for docpost in site.posts | reversed %}
{% if docpost.document %}


<a href="{{ docpost.document }}"><img style="height: 3em; float: right;" src="{{ docpost.thumbnail }}"></a>
{% if docpost.documenttitle %}
  {{ docpost.documenttitle }}
  {% else %}
  {{ docpost.title }}
{% endif %}<br>
<span class="publink">[download]({{ docpost.document }}) | [Blog post]({{ site.url }}{{ docpost.url }})</span>



{% endif %}
{% endfor %}

