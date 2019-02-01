---
layout: post
title: Visualizing a network of keywords
permalink: /keyword-network/
lang: en
length: medium
tags: 
- linguistics
document: /documents/verb-forms/verb-forms.tex.pdf
documenttitle: Verb forms I-X
thumbnail: /images/verb-forms.thumbnail.png
minidoc: /images/verb-forms.mindoc.png
updates:
  - date:
    contents:
---

When I read books and articles related to my research I usually take [notes](../_posts/2016-05-10-reading-notes-on-github.md) of what is most interesting to me, with each note in one text file. To each note file I add one or more keywords from a set list. The idea with these keywords is that they allow me to sort or filter these in various ways by topic. A while back it struck me that these keywords form a network of connected notes and that this network could probably be visualized somehow. Some ideas just obsess you and wont leave you alone until they are realized in the real world.

Due to the consistent formatting of file names and keywords in the notes it was quite easy to produce a database of all connections between keywords and file names (which contain author name, year, and title), with one entry for every keyword, paired with the reference. Something like this.

```
Ferguson (1997)	standard-language
Ferguson (1997)	historical-linguistics
Fisher (1996) 	standard-language
Fisher (1996) 	historical-linguistics
Fisher (1996) 	English
```

Now I only needed a nice way to draw all these relations on a two dimensional surface My first attempt was to make two columns, one with references and one with keywords with lines. An hour later and two hours later of bash, R, and LaTeX spaghetti I ended up with the document below, intended to be printed on A3 paper.

![](keyword-network/tikz.tex.pdf)

It looks kind of nice, but you cannot get much information out of it, other than what my main areas of interest are. With the references so tightly packed together it is difficult to make out which line goes to which reference, and the position on the surface of keywords and references does not carry any meaning. They are simply ordered alphabetically (from bottom to top) which isn't very helpful.

So I looked up some methods to plot networks and found the [`GGally`](https://cran.r-project.org/web/packages/GGally/index.html) package in R. With it you can plot networks using sever different different algorithms of how to place and group nodes on the surface. I tried all different methods till I found one that was pretty close to how I had imagined it. 

