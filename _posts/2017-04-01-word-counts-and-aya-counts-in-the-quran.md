---
layout: post
title: Word counts and aya counts in the Quran
permalink: /word-counts-and-aya-counts-in-the-quran/
language: English
lang: en
length: medium
tags:
- linguistics
- tikz
document: /documents/quran-wc.tex.pdf
documenttitle: Word counts and aya counts of suras in the Quran
thumbnail: /images/quran-wc-thumbnail.png
updates:
    - date: 2017-12-31
      contents: New design. Title now in the bottom right.
---

Another uncalled-for graph. I recently helped a student getting word counts for *suras* (chapters) in the Quran by running a script on the Quran in plain text downloaded from [tanzil.net](http://tanzil.net). I then had this nice little data file and felt I had to do something with it. The result is [the document below]({{ page.document }}), which is a graphical representation of the number of words and *ayas* (verses) in each sura in the Quran. It is intended to be printed on A3-paper. For A4-paper you will need a printer with high resolution since the text will be very small.


[![Word counts and aya counts of suras in the Quran]({{ page.thumbnail }})]({{ page.document }})

I first thought of this as nothing more than an exercise in graph design, using Edward Tufte's principles of omitting all elements that do not represent any information in order to get a high information to ink ratio. Note for instance that the grid lines are produced by removing ink from the bars rather than adding lines in in the background, and how the two layers of quantitative information, the lines for word and aya counts, share numerical scale on the horizontal axis but with word counts being multiplied by&nbsp;10. The graph did however also turn out to visualize some interesting aspects of the Quranic text. The suras are often said to be ordered roughly by descending length, except for the first sura. Sura lengths are typically compared by the number of ayas. This is easily done since aya numbers are given in the Quranic text. By this measure the second sura, which is the longest, is roughly one third longer than any other sura. By measuring sura by word count, however, which of course a much better measurement, we see that the second sura is in fact around twice as long as the second longest aya.

We also see that there is not clear proportional relation by the number of words and the number of ayas in a sura. The ayas in some suras are very long while they are very short in some ayas. Average length of ayas in a sura ranges from 23.7 in sura&nbsp;5 ('The Table') to&nbsp;3.3 in sura&nbsp;80 ('He Frowned'). For suras where the black line that gives word count is the same length as the gray, thicker line that gives aya count, the average number of words per aya is&nbsp;10, which is close to the total average of&nbsp;12.5. Thus, suras for which the black word count line extends far beyond the gray aya count line, the text tends to be prose-like and expository. For suras where the black line is much shorter than the gray line, the text tends to be rhetorically forceful and intense.