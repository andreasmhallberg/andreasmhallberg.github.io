---
layout: post
title: Word counts and aya counts in the Quran
permalink: /word-counts-and-aya-counts-in-the-quran/
lang: en
length: medium
tags:
- linguistics
document: /documents/quran-wc/quran-wc.tex.pdf
documenttitle: Word counts and aya counts of suras in the Quran
thumbnail: /images/quran-wc-thumbnail.png
updates:
    - date: 2020-12-03
      contents: Editing for improved readability.
    - date: 2018-08-22
      contents: Small change in title and title design.
    - date: 2017-12-31
      contents: New design. Title now in the bottom right.
---

Another uncalled-for graph. I recently helped a student getting word counts for *suras* (chapters) in the Quran by running a script on the Quran in plain text downloaded from [tanzil.net](http://tanzil.net). I then had this nice little data file and felt I had to do something with it. The result is [the document below]({{ page.document }}), a graphical representation of the number of words and *ayas* (verses) in each sura in the Quran. It is intended to be printed on A3-paper. For A4-paper you will need a printer with high resolution, since the text will be very small. (The LaTeX source code can be found [here](/documents/quran-wc/quran-wc.tex).)

[![Word counts and aya counts of suras in the Quran]({{ page.thumbnail }})]({{ page.document }})

I first thought of this as little more than an exercise in graph design, using Edward Tufte's principles of omitting all elements that do not represent any information in order to get a high information-to-ink ratio. Note, for instance, that the grid lines are produced by removing ink from the bars, rather than adding lines to the background, and that the two layers of quantitative information, word counts and aya counts, share numerical scale on the horizontal axis with word counts multiplied by&nbsp;10.

The graph did, however, also turn out to visualize some interesting aspects of the Quranic text. The suras are often said to be roughly ordered by descending length, except for the first sura. Suras are typically compared by the number of ayas. This is easily done, since ayas are numbered in the Quranic text. By this measure, the second sura, which is the longest, is roughly one third longer than the fourth, which is the second longest. By measuring sura length by number of words, however, which of course a much better measurement of text length, we see that the second sura is in fact around twice as long as the fourth sura.

We also see that suras differ wildly in average aya length. In some suras, the ayas are very long, while in others they are very short. Average length of ayas in a suras range from 23.7 (sura&nbsp;5, 'The Table') to&nbsp;3.3 (sura&nbsp;80, 'He Frowned'). For suras where the black line that gives word count is the same length as the thicker line that gives aya count, the average number of words per aya is&nbsp;10. This is close to the over-all average of&nbsp;12.5. For suras for which the black line extends far beyond the gray line, the text tends to be prose-like and expository. For suras where the black line is much shorter than the gray line, the text tends to be rhetorically forceful, poetic, and intense. The latter being the predominant style in the shorter, chronologically earlier Mekkan suras.
