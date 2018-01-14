---
title: README
lang: en
---

`[Under consturcion]`

This document, meant primarily for the benefit of a future me, describes the infrastructure of for my personal homepage [Uppercase Alif](andreasmhallberg.github.io), the title of which only I find funny.

The homepage is built with the static website generator [Jekyll](https://jekyllrb.com/) and forked from [Jekyll Now](https://github.com/barryclark/jekyll-now).

# Posts

Posts are placed in the `_posts` folder, are written in markdown. (The parser in GitHub Pages does not recognize `\ ` for nobreaking spaces so the HTML `&nbsp;` is used instead.).

## YAML headers

The YAML headers have the following attributes ():

- `layout`

    Should be `post`.

- `title` 

    Selfexplenatory.

- `permalink`

    Extension of http address to this post. If not explicitly made will be generated from date by Jekyll. Must be enclosed in `/`.

- \*`lang`

    `en` or `sv`. Displayed in the listing on index page and tags page. 

- \*`length`

    `short`, `medium`, or `long`. Displayed top of post and on tags page. 

- \*`tags`

    List. Lower case ASCII. See tags page for list. At the time of writing the following tags are used:

    - arabic
    - latex
    - linguistics
    - tafl
    - tikz
    - transcription
    - typography
    - vim

- \*`document`

    If the post presents a document, this variable is used to give the http address to that document. Used to generate list of teaching documents under Docs page.

- \*`documenttitle`

    The title of the document presented in the post. Used in listing on Docs page. 

- \*`thumbnail`

    Address to image to be displayed in index page with except. For posts with `document` this is image is of the first page of the document in `png` and is displayed next to the list item in the Docs page.

- \*`updates`

    List of updates to the post post publication. Has two subitems:

    - `date` Date of the update in `yyyy-mm-dd` format.
    - `contents` Text to be displayed. Written in markdown.

### Example

``` yml
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
updates: 
    - date: 2017-12-08
      contents: A version of this timeline in German has subsequently been published in *Einführung in die arabische Grammatiktradition* by Frank Weigelt (Harrowitz, 2017).  
```

# Assets

## Images

## Documents

## Data
