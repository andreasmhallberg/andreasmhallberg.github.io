---
layout: post
title: Visualizing a network of keywords
permalink: /keyword-network/
lang: en
length: medium
tags: 
- linguistics
document: ../documents/keyword-network/keywordnetwork.ar.190128.pdf
documenttitle: Keyword network
thumbnail: /images/2019-02-08/network.thumbnail.png
minidoc: /images/2019-02-08/keywordnetwork.ar.190128.pdf.png
 #updates:
 #  - date:
 #    contents:
---

When I read books and articles related to my research I usually take [notes](/reading-notes-on-github/) of what is most interesting to me, with each note in separate text file. To each file I add one or more keywords from a set list. A note can contain any arbitrary combination of keywords. The idea with these keywords is to allow me to sort or filter the notes by topic. A while back it struck me that these keywords form a network of connected nodes and that this network could probably be visualized somehow.

Some ideas completely obsess you and won't leave you alone. The only way to get them out of your head is to let them materialize in the real world.

(Note: the keywords very much reflect my personal reading of theses sources. The keywords are intended to capture what I find to be of interest in the respective sources from my particular vantage point. They are not intended to be correct summaries of the content in the sources. The plots below therefore visualize *my readings* of the sources, not the sources *per se*.)

Due to the consistent formatting of file names and keywords in the note files it was pretty easy to generate a database of all connections between keywords and references. Something like this:

```
Ferguson (1997)	standard-language
Ferguson (1997)	historical-linguistics
Fisher (1996) 	standard-language
Fisher (1996) 	historical-linguistics
Fisher (1996) 	English
```

Now I only needed to find a way to draw all these relations on a two dimensional surface. My first attempt was to make two columns, one with references and one with keywords with lines. An hour later of bash, R, and LaTeX spaghetti scripts I ended up with the document below, intended to be printed on A3 paper.

[![](/images/2019-02-08/tikz.tex.pdf.png)](/documents/keyword-network/tikz.tex.pdf)

It looks kind of nice, but you cannot get much information out of it, other than what my main areas of interest are. The references so tightly packed together that it is difficult to make out which line goes to which reference, and the positioning of keywords and references does not encode useful information. They are simply ordered alphabetically (from bottom to top), which isn't very helpful.

So I looked up some methods to plot networks and found the [`GGally`](https://cran.r-project.org/web/packages/GGally/index.html) package in&nbsp;R. It allows you can plot networks using several different algorithms of node placement. I tried all of them out untill I found one, the Kamada-Kasai algorithm, that produced a plot pretty close to how I had imagined it. The first result, excluding some unconnected node islands, looked like this (click on it to view pdf):

[![](/images/2019-02-08/kamadakawai.pdf.png)](/documents/keyword-network/kamadakawai.pdf)

Pretty cool, but since almost everything is connected to the central keyword `Arabic` it is too dense in the middle. In the periphery things are more clear, such as the connections between eye-tracking and reading in the top, and the connections between `standard-language` and `language-ideology` to the right. Also, I like to think of this plot as depicting the world I've been living in the last seven or so years; a big mess of Arabic which everything centers around, with outgrowths of language ideology, eye tracking, reading, and some other stuff, all organically grown together in a big blob monster of interconnected texts.

To make the whole thing less dense and more practically useful I plotted the data with the same method but only including notes that have the keyword `Arabic`, while not including this keyword as a node in the plot. Below is the result.

[![](/images/2019-02-08/keywordnetwork.ar.190128.pdf.png)](/documents/keyword-network/keywordnetwork.ar.190128.pdf)

Now it's much more readable and you can actually retrieve information from of it. A good plot is one that allows both to see larger structures, and to focus in details to pick out very specific information. On the larger scale in this plot you can see, for example, the blob of `diglossia` and that it is densely connected in my notes with `language-planning` and `language-idoelogy`, `code-switchin` and `literacy`. `ALT` (the Arabic Linguistic Tradition) at the bottom has a bunch of references all to itself but is also connected with `language-ideology` and `language-instruction`. You can also zoom in (conceptually and literally on your favorite pdf-reader) on, say, the space between `diglossia` and `language-ideology` to see what references I have notes on that deal with those two topics in combination.

Since the plot generation is scripted the plot can easily be redrawn as more notes are added. The [version of the plot on GitHub](http://www.github.com/andreasmhallberg/readingnotes/keyword-count/kamadakawai.ar.pdf) will be updated from time to time. The one posted here will remain fixed for now.

The whole project has been quite satisfying, not the least because it gives me a sense of actually having achieved some reading the last couple of years. The practical use I have found in the plot so far is that it reminds me of interesting things that I have read by placing them in a meaningful context and making them (re-)descoverable, as opposed to just listing them. I also find myself sometimes staring at the plot, following its nodes and angels, mentally revisiting things I've read several years ago. But most of all it just looks cool.
