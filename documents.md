---
layout: page
title: Documents
permalink: /documents/
---


[Books](#books)
--- [Articles](#articles)
--- [Book chapters](#book-chapters)
--- [Miscellaneous](#miscellaneous)
--- [Teaching materials](#teaching-materials)

[CV-en](/documents/hallberg-cv-en.pdf)
[CV-sv](/documents/hallberg-cv-sv.pdf)


## Books

Hallberg, A. (2023). *Om arabiska: En kort språkvetenskaplig introduktion*. Göteborgs universitet. <https://gupea.ub.gu.se/handle/2077/76851>
([PDF](https://hdl.handle.net/2077/76851))

Hallberg, A. (2016). *Case endings in Spoken Standard Arabic: Statistics, norms, and diversity in unscripted formal speech* \[Dissertation, Lund University\]. <https://lup.lub.lu.se/record/8524489>
([PDF](http://lup.lub.lu.se/luur/download?func=downloadFile&recordOId=8524489&fileOId=8852155))  

<span class="indent">
Reviews: <a href="http://www.jstor.org/stable/26578121">2018</a>, <a
href="https://www.geschkult.fu-berlin.de/e/semiarab/semitistik/zal/ausgaben/70/index.html">2019</a>
</span>


## Articles

Hallberg, A. (2022). Principles of variation in the use of diacritics (*taškı̄l*) in Arabic books. *Language Sciences*, *93*, 1–15. <https://doi.org/10.1016/j.langsci.2022.101482>
([PDF](https://www.sciencedirect.com/science/article/pii/S0388000122000225/pdfft?isDTMRedir=true&download=true))

Hallberg, A. (2022). Variation in the use of diacritics in modern typeset Standard Arabic: A theoretical and descriptive framework. *Arabica*, *69*(3), 279–317. <https://doi.org/10.1163/15700585-12341640>
([PDF](https://brill.com/downloadpdf/journals/arab/69/3/article-p279_3.pdf))

Hallberg, A. (2022). A parallel text-based approach for teaching Standard and vernacular Arabic. *Orientalia Suecana*, *71*, 24–37. <https://doi.org/10.33063/diva-484185>
([PDF](https://uu.diva-portal.org/smash/get/diva2:1693971/FULLTEXT01.pdf))

Hallberg, A. (2021). Case and mood inflection in Formal Spoken Arabic: A quantitative investigation. *Zeitschrift für Arabische Linguistik*, *74*, 61–86. <https://doi.org/10.13173/zeitarabling.74.0061>

Hallberg, A., & Niehorster, D. C. (2021). Parsing written language with non-standard grammar: An eye-tracking study of case marking in Arabic. *Reading and Writing*, *34*(1), 27–48. <https://doi.org/10.1007/s11145-020-10040-6>
([PDF](https://link.springer.com/content/pdf/10.1007/s11145-020-10040-6.pdf))

## Book chapters

Hallberg, A. (2023). Standard language ideology and prescriptivism in the Arabic-speaking world. In J. C. Beal, M. Lukač, & R. Straaijer (Eds.), *Routledge handbook of linguistic prescriptivism* (pp. 287–303). Routledge. <https://doi.org/10.4324/9781003095125-20>

Hallberg, A. (2017). Några egenheter i arabisk standardspråksideologi. In H. Rahm (Ed.), *Vetenskapssocieteten i Lund. <span class="nocase">Årsbok</span> 2017* (pp. 39–48). Vetenskapssocieteten i Lund.
([PDF](/documents/Hallberg-2017-nagra-egenheter.pdf))

## Miscellaneous

Hallberg, A. (2017). Zeittafel. Graphical timeline. In F. Weigelt, *Einführung in die arabische Grammatiktradition* (pp. 247–249). Harrassowitz.
([PDF](/documents/weigelt-2017-zeittafel.pdf))

Kurayyim, M. (2017). Tawfiq basha och den nya musiken (A. Hallberg, Trans.). *Glänta*, *17*(2-3), 153–159.

Ḥamūd, M. (2017). Skammen (A. Hallberg, Trans.). *Glänta*, *17*(2-3), 32–38.

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

