---
layout: post
title: Margin notes for Arabic quotes in LaTeX
permalink: /margin-notes-for-arabic-quotes/
language: English
lang: en
length: medium
tags:
- typography
- latex
updates:
    - date: 2017-03-03
      contents: Had I when I wrote this post known what I know now, I would have used [the stretchable kashida](/stretchable-kashida/) to justify the margin notes, rather than having them ragged right.
thumbnail: /images/2016-04-26-margin-notes-for-arabic-quotes/case.p24.png
---

{% raw %}
This posts describes a way of showing quoted Arabic text in the margin in non-Arabic environments and how this can be achieved in LaTeX. For sentence length quotes this has several advantages over the traditional method of transcribing the Arabic text. Often when one wants to quote an Arabic source in a non-Arabic text, the quote is translated with the original text transcribed. Transcribing the quote makes sense if a single word or short expression is quoted, since also the reader who is not very familiar with Arabic can read it and learn or recognize it. For longer quotes, transcription serves no real purpose. The reader who is not very familiar with Arabic will not be able to read it and for the reader who is familiar with Arabic it would be easier to read it in the original Arabic script. I find that to read a longer stretch of Arabic text in transcription I often have to read it aloud to understand it since I am not familiar with the visual shape of the transcribed words. Furthermore, when the text is transcribed this necessarily means adding vowels that are not there in the original text, thus adding information to the text that was not there in the source. It is then not possible to tell which of these vowels, if any, were there in the original text. It is in other words not an exact quote. Many quotes inserted this way also make for a cumbersome read, as illustrated in the following extract from an academic article[^1].

![Article with lengthy Arabic transliteration](/images/2016-04-26-margin-notes-for-arabic-quotes/suleymantransarabic.png)

The alternative then is to give the translation together with the original in Arabic script. For block quotes, this usually works fine, as the translation and the Arabic original are in two separate paragraphs and there is no problem with directionality. Sentence length quotes are best used in the running text, but the switch from left-to-right (LTR) to right-to-left (RTL) script can be quite annoying to read. This is especially problematic if there is a line break in the Arabic quote. The reader (who wishes to read the Arabic quote) must then go to the right end of the line where the RTL text begins, read to left to the middle of the line, then go the middle of the next line where the Arabic text continues, read to the left end of the line, go back to the middle of the line and continue reading the LTR Latinate text. Add to this the aesthetic problems of having a lucid and round Arabic script inserted into the angular and strict forms of a Roman typeface. 

In [my dissertation](https://lup.lub.lu.se/search/publication/8524489) I have several such sentence length Arabic quotes and I wanted to avoid the directionality-mess described above. The way I did this was to have the translated quote in the running text and have the original Arabic text in the margin. This is illustrated in the image below, showing page 24 of the dissertation. Note how the first row of the Arabic text is aligned with the first row of the translation in the running text. This way, the quote is readily available for the interested reader without mixing reading direction, and the result is more aesthetically pleasing since the Arabic and the Latin texts are kept separate. The reader who does not know Arabic is not disturbed with it in the running text. 

![Page with Arabic quotes in the margin.](/images/2016-04-26-margin-notes-for-arabic-quotes/case.p24.png)


The rest of this post is a description of how this can be achieved in LaTeX. First, this method uses the following packages that must be called in the preamble:

``` tex
\usepackage{polyglossia}
\usepackage{marginnote}
```

The `polyglossia` package makes it relatively easy to use several languages and scripts in one document. It requires the XeTeX engine. `marginnote` gives the function with the same name to produce, well, margin notes. This is preferable to the `\marginpar` command in default LaTeX which does not work in footnotes, figures, and other such "outerpar" material. Note that `marginnotes` requires two runs of compilation to render correctly.

Now, for a minimal example we also need to set up a font for Arabic script. This is done with the `fontspec` package which is called by `polyglossia`. I use the free and very nice [Amiri](http://www.amirifont.org/) font here, but you could use any Arabic font that is installed in the operating system.

``` tex
\setmainlanguage{english}
\setotherlanguage{arabic}
\newfontfamily\arabicfont
    [Script=Arabic,Scale=MatchUppercase}]{Amiri}
```

The command I used to print original Arabic in the margin is defined in the preamble as follows (with some annotation):[^2]

``` tex
% \araquote
  % [<vertical offset>] optional. default=0pt
  % {<inline translation>}
  % {<arabic text in margin>}

\newcommand\araquote[3][0pt]{%
\marginnote{%
    \raggedleft
  \textarabic{%
    \footnotesize
    #3%
  }}%
  [#1]% voffset
\null#2}
```
 
Whenever in the text you want to quote an Arabic source inline you can then do the following to get the Arabic source text in the margin: 

``` tex
Text text text text text text
text \araquote{translated qoute
(Author 1999)}{النص العري الأصلي} text text text.
```

The method is not completely automatic since if the margin note is at the bottom of the page it will extend down below the text block, and this must be fixed manually. It is almost guaranteed to happen if you have Arabic quotes in a footnote, as I have in the example from my dissertation above. To fix this the command has an optional argument that takes a length expression that adjusts the vertical position of the margin note. The best way to use this optional argument is when the text is finished and compiled. Then you go through the document to see if there are Arabic margin notes that extends below the text block, count how many lines it extends below, and add a negative dimension with `\baselineskip` accordingly. So if a margin note extends two lines below the text block, you add `[-2\baselineskip]` between `\araquote` and the two arguments in curly brackets. This pushes the margin note upwards two lines to have the bottom line of the margin note aligned with the bottom line of the main text block.

Lastly, the width of the text block in a margin note is generally to narrow for the text to be justified. I chose to have all the margin notes set flush right also on recto pages. In principle I would like to do like Bringhurst in his *The Elements of Typographic Style*,[^3] where margin notes are flush right on left hand pages and flush left on right hand pages. This gives a nice balanced cohesion to the page spread and makes the margin notes always look nicely tucked in next to the text. For Arabic script, flush left text often looks very bad. The reason is that many word-final letter forms in Arabic have long leftward swashes, such as ـب ـف&nbsp;ـق and others. This often gives the left edge of the text block a ragged look even in a flush left environment. What is even worse is that the right hand side often looks strange with the many word initial *alif*s. These *alif*s have a strong vertical character that looks odd when not aligned. In the example below you get the feeling that the text wants to be aligned to the right. Hence the choice to have all margin notes flush right.

![Flush left narrow Arabic text block.](/images/2016-04-26-margin-notes-for-arabic-quotes/arabicflushleft.png)

In summary, Arabic quotes in the margin and the translation in the running text: pretty and practical.

[^1]: Suleiman, Y., 1996. "The Simplification of Arabic Grammar and the Problematic Nature of the Sources." *Journal of Semitic Studies,* 41(1), pp.99–119.
[^2]: The `\null` in the last line is necessary to avoid LaTeX misinterpreting instances where the translated text begins with square brackets to signal that some word has been added for the sake of translation.
[^3]: Bringhurst, R., 2012. *The Elements of Typographic Style*, Seattle: Hartley&nbsp;&&nbsp;Marks.

{% endraw %}
