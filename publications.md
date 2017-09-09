---
layout: page
title: Publications
permalink: /publications/
---

<h2>Publications</h2>

<ul>
{% for publication in site.data.publications %}

<li>
{{ publication.year }}. 
{{ publication.title }}<br>
{{publication.ref}}<br>
{% if publication.pdf %} 
  <a href="{{ publication.pdf }} class="read-more"">Download</a>
{% endif %}
{% if publication.link %} 
  <a href="{{ publication.link }} class="read-more"">Link</a>
{% endif %}
{% if publication.blogpost %} 
  <a href="{{ publication.blogpost }} class="read-more"">Blog post</a>
{% endif %}
</li>

{% endfor %}
</ul>

[//]: # ( - 2017.&nbsp;"Några egenheter i arabisk standardspråksideologi" In *Vetenskapssocieteten i Lund. Årsbok 2017.* Ed. Henrik Rahm. 39--48. Lund: Vetenskapssocieteten i Lund. )  
[//]: # ( <span class="read-more"> )
[//]: # ( [Download](http://andreasmhallberg.github.io/documents/cv-attatchments/article-2017-nagraegenheter.pdf) )
[//]: # ( </span> )

[//]: # ( - 2016.&nbsp;*Case Endings in Spoken Standard Arabic*. Dissertation. Lund: Lund University. )  
[//]: # ( <span class="read-more"> )
[//]: # ( [Download](http://lup.lub.lu.se/search/ws/files/3772169/8852155.pdf) )
[//]: # ( </span> )

## Teaching documents

- Det standardarabiska konsonantinventariet  
<span class="read-more">
[Dowload](https://github.com/andreasmhallberg/sa-konsonantinventariet/raw/master/sa-konsonantinventariet.pdf) |
[Blog post](http://andreasmhallberg.github.io/det-arabiska-konsonantinventariet/)
</span>

- Timeline of Arab grammarians and their major works  
[Download](https://github.com/andreasmhallberg/alt-timeline/raw/master/alt-timeline.pdf){:.read-more} |
[Blog post](http://andreasmhallberg.github.io/timeline-of-arab-grammarians/){:.read-more}


