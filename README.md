---
title: README
lang: en
---

This document describes the infrastructure of for my personal homepage [Uppercase Alif](andreasmhallberg.github.io), the title of which only I find funny. It is built with the static website generator [Jekyll](https://jekyllrb.com/) and forked from [Jekyll Now](https://github.com/barryclark/jekyll-now).

# Post

Posts are placed in the `_posts` folder, are written in markdown. (The parser in GitHub Pages does not recognize `\ ` for nobreaking spaces so the HTML `&nbsp;` is used instead.).

## YAML headers

The YAML headers have the following attributes ():

- `layout`

    Should be `post`.

- `title` 

    Selfexplenatory.

- `permalink`

    Extension of http address to this post. If not explicitly made will be generated from date by Jekyll. Must be enclosed in `/`.

- `lang: en/sv`

### Examole

``` yaml
layout: post
title: Timeline of Arab grammarians
permalink: /timeline-of-arab-grammarians/
language: English
lang: en
length: short
tags:
    - arabic
    - latex
    - tikz
document: https://github.com/andreasmhallberg/alt-timeline/raw/master/alt-timeline.pdf
documenttitle: Timeline of Arab grammarians and their major works
thumbnail: /images/alt-timeline.thumbnail.png
# excerpt: <a href="http://andreasmhallberg.github.io/timeline-of-arab-grammarians/"><img width="30%" src="/images/alt-timeline.thumbnail.png" alt="Thumbnail"></a>
updates: 
    - date: 2017-12-08
      contents: A version of this timeline in German has subsequently been published in *Einführung in die arabische Grammatiktradition* by Frank Weigelt (Harrowitz, 2017).  
```
