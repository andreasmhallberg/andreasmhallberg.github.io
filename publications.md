---
layout: page
title: Publications
permalink: /publications/
publish: true
---


{% for year in site.data.publications.year | reversed %}

  <h2>{{ year }}</h2>

  {% assign publication_list = year[1] %}
  {% for publication in publication_list %}

    <h3>{{ publication.title }}</h3>
    <p>{{ publication.ref }}</p>
    <p class="date">{{ publication.abstract }}</p>
    {% if publication.pdf %} 
      <a href="{{ publication.pdf }}" class="read-more">Download</a>
      {% if publication.link%} | {% endif %}
    {% endif %}
    {% if publication.link %} 
      <a href="{{ publication.link }}" class="read-more">Link</a>
    {% endif %}
  {% endfor %}
{% endfor %}

[//]: # ( ## Teaching documents )


