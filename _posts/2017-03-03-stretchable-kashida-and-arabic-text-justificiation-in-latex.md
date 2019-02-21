---
layout: post
title: Stretchable kashida and Arabic text justification in LaTeX
permalink: /stretchable-kashida/
lang: en
length: long
tags:
- latex
- typography
updates: 
    - date: 2018-12-11
      contents: Commands to disable kashida added.
---

This post describes how to make stretchable pseudo-*kashidas* to lengthen words (كلمة طويـــــــلة) and how to automatically insert these at letter connections in order to justify Arabic text, that is, to to make it have even right and left margins. The problem, solution, and the result is first presented in a non-technical way. Thereafter the implementation of the stretchable kashida in LaTeX is described.

<!--
\newenvironment{nokashida}{\renewcommand{\kashida}{\relax}}{}
\newcommand{\nokash}[1]{\begin{nokashida}#1\end{nokashida}}
-->

## Introduction

A paragraph with even left and right margins is said to be *justified*. In texts in the Latin alphabet, this is achieved in two ways: a)&nbsp;by hyphenating long words where they appear at the end of a line, and b)&nbsp;by varying the space between words.[^microtype] In the Arabic script  there is no hyphenation, words cannot be broken up in two, making justification of paragraphs is more difficult.

What Arabic has, though, that the Latin script lacks, is the ability stretch out the connecting lines between letters. In typed text, this is done with a character called *kashida* (`U+0640`). It is a line at the baseline, similar in shape to the underscore, and it connects to adjacent letters. The word كبير (*kabīr* 'big'), for instance, could be written with a few kashidas to make it take up more space (كبيـــــر), which can be used to justify the text.

There are two problems with this. First, a line can only be lengthened by a multiple of the width of the kashida in the typeface. For example, if the kashida is 5&nbsp;pts wide, the line could be lengthened by 5&nbsp;pts by adding a kashida somewhere, or by 10&nbsp;pts by adding two. But it could not be lengthened by 7&nbsp;pts. Second, the lengthening can only be applied at certain points in certain words on the line. The lengthening cannot be evenly distributed across the line, making for an uneven appearance of the words in a line. See for example the excerpt below from the novel *Yūtūbiyā* by Aḥmad Xālid Tawfīq.[^utopia] Kashidas have been added to the last couple of words at the end of lines to fill them up to the left margin. This is common practice, but it makes, in my view, for an unattractive and uneven page.

![Page 12 from Yūtūbiyā, where kashidas are used in words at the end of the line to fill it.](/images/2017-03-03/utopia.png)

## Solution: the stretchable kashida

One solution to this is to use a stretchable kashida that is placed between all connecting characters. It just so happens that TeX with it's glue mechanisms provides tools to do this fairly easily and very reliably. If no stretching is needed to justify the text the kashidas get a width of zero and do not appear at all. If some stretching is needed to fill the line (which in practice will virtually always be the case), then all these stretchable kashidas are stretched with an equal amount until the line is filled. There is thus no fixed or even default width of this kashida, it will be as long or short as it needs to be, and all stretchable kashidas on the same line will be of the same width.

Have a look at the page below. It contains the same three paragraphs, taken at random from an Arabic news site. The three paragraphs are typeset three times each, first in three columns, then in four, and then in five columns. The more columns, and thus the narrower the columns, the more difficult it is for the typesetting engine to find a good way of distributing words on the lines to avoid big, white spaces between words. In the last part with five columns, the text looks really bad, with large white blobs scattered all over surface of the text.  

![Example text without stretchable kashida.](/images/2017-03-03/no-kashida.png)


Now compare this with the following page. Here the same text is set with the same font, font size and columns, but with a stretchable kashida at every letter connection. Note the total lack of white blobs. The stretchable kashida nicely fills every line, producing an even and attractive text surface.

![Example text with stretchable kashida.](/images/2017-03-03/kashida.png)

The images above are PNGs and in limited resolution. Follow these links for PDFs of the example documents above [with stretchable kashida](/documents/kashida.pdf) and [without stretchable kashida](/documents/no-kashida.pdf) to see them in better resolution. Note that when viewing these PDFs on screen, the inserted stretchable kashida may appear choppy in certain resolutions. This is because it has not been adapted for screen display in various resolutions as has the rest of the font. This problem is specific to on-screen display and will not be an issue when the text is printed.

## Application

The rest of this post is a step-by-step explanation of the LaTeX code that achieves this result. A complete self-contained example (used to produce the documents above) can be found [here](https://github.com/andreasmhallberg/kashida-justification).

First we load the packages that we need and setup the Arabic font. Lateef is a free and open source font available [here](https://www.sil.org/resources/software_fonts/lateef).  

``` tex
\documentclass{article}
\usepackage{calc} % used to measure kashida thickness
\usepackage{polyglossia}
\setmainlanguage{arabic}
\newfontfamily\arabicfont[Script=Arabic]{Lateef} 
```


### XeTeXinterchartoks 

Then we activate the `XeTeXinterchartoks` feature, declare the different classes, and assign characters to the different classes. This allows us to automatically insert a command between combinations of characters of each class. All Arabic letters are assigned to one class with a specific set of connecting rules, i.e. those that connect to the following letter and those that do not. So between all connectors we want to insert the command for the stretchable kashida, also when a connector is followed by a non-connector, but not after a non-connector. We also need special classes for the letters *lām*&nbsp;(ل) and *alif* (ا, in all its variants)  since we do not want to insert anything between them when they appear in this order, which would break the compulsory ligature&nbsp;لا. Similar exceptions for other ligatures in particular fonts could easily be added this way, otherwise the ligatures will simply connect at the baseline as normal when this code is applied.   

``` tex
\XeTeXinterchartokenstate=1

\newXeTeXintercharclass\confb % connect back
\newXeTeXintercharclass\conb  % connect front back
\newXeTeXintercharclass\alif  % alif
\newXeTeXintercharclass\lam   % lam

\XeTeXcharclass `\ي=\confb 
\XeTeXcharclass `\ئ=\confb
\XeTeXcharclass `\ه=\confb
\XeTeXcharclass `\ش=\confb
\XeTeXcharclass `\س=\confb
\XeTeXcharclass `\ق=\confb
\XeTeXcharclass `\ف=\confb
\XeTeXcharclass `\غ=\confb
\XeTeXcharclass `\ع=\confb
\XeTeXcharclass `\ض=\confb
\XeTeXcharclass `\ص=\confb
\XeTeXcharclass `\ن=\confb
\XeTeXcharclass `\م=\confb
\XeTeXcharclass `\ك=\confb
\XeTeXcharclass `\ظ=\confb
\XeTeXcharclass `\ط=\confb
\XeTeXcharclass `\خ=\confb
\XeTeXcharclass `\ح=\confb
\XeTeXcharclass `\ج=\confb
\XeTeXcharclass `\ث=\confb
\XeTeXcharclass `\ت=\confb
\XeTeXcharclass `\ب=\confb

\XeTeXcharclass `\ل=\lam

\XeTeXcharclass `\ا=\alif
\XeTeXcharclass `\أ=\alif
\XeTeXcharclass `\إ=\alif
\XeTeXcharclass `\آ=\alif

\XeTeXcharclass `\و=\conb
\XeTeXcharclass `\ؤ=\conb
\XeTeXcharclass `\ذ=\conb
\XeTeXcharclass `\د=\conb
\XeTeXcharclass `\ز=\conb
\XeTeXcharclass `\ر=\conb
\XeTeXcharclass `\ة=\conb
```

Then we declare the combinations of character classes between which we want to insert the command for the stretchable kashida (which we have yet to define). The order of any two characterclasses is significant. All possible combinations of characterclasses where you want stretchable kashida must be added to the list.

``` tex
\XeTeXinterchartoks \confb \confb = {\kashida{}}
\XeTeXinterchartoks \confb \conb  = {\kashida{}}
\XeTeXinterchartoks \confb \alif  = {\kashida{}}
\XeTeXinterchartoks \confb \lam   = {\kashida{}}
\XeTeXinterchartoks \lam   \lam   = {\kashida{}}
\XeTeXinterchartoks \lam   \confb = {\kashida{}}
\XeTeXinterchartoks \lam   \conb  = {\kashida{}}
```

This means that the presence of a vowel sign&nbsp;(&nbsp; َ ِ ُ etc), *shadda*&nbsp;(&nbsp; ّ&nbsp;), *sukūn*&nbsp;(&nbsp; ْ&nbsp;), or other similar symbols negate the stretchable kashida at that position. This is because the sequence of characters is then *vowel&nbsp;sign---letter,* and not one of the sequences listed above, so it will not trigger the `\kashida` command. You can see this in the word شنّت, the first word in the test paragraph in the examples above. This may not be a bad thing. To me, vowel or other sign and then kashida (&nbsp;شــنّــت&nbsp;) looks odd, and it is avoided here.

Also, in manuals of Arabic calligraphy there are rules about where and in what words, where in a word, and between what characters kashidas may be inserted ([Benatia&nbsp;et&nbsp;al. 2006](https://www.tug.org/tugboat/tb27-2/tb87benatia.pdf)). These rules are disregarded here. I do not believe that they are particularity relevant for the modern simplified text fonts. 




### Kashida thickness

The following snippet uses functions form the [`calc`](https://www.ctan.org/pkg/calc?lang=en) package to measure the thickness of the kashida in the loaded font. It measurs the top of the kashida from the baseline and stores this value in `\kashidaheight`. It also measure how far it extends below the baseline and stores the value in `\kashidadepth`. (None of the fonts I have tested this on have a kashida that extends below the baseline, so this measure will normally be `0 pts`.)

``` tex
\newlength\kashidaheight
\setlength\kashidaheight{\heightof{\textarabic{ـ}}}
\newlength\kashidadepth
\setlength\kashidadepth{\depthof{\textarabic{ـ}}}
```

This means that this method does not give good results for typefaces in which the letter connection is raised above the baseline. This is the case with Geeza Pro, for example, a typeface included in OSX. (This could be fixed provided there is a reliable way of measuring how much the letter connections, and by extension the kashida character, is raised above the baseline.) The method presented here will work fine with most simple *nasx* typefaces, however, such as 
[Lateef](https://www.sil.org/resources/software_fonts/lateef), 
[Scheherazade](http://software.sil.org/scheherazade/),
and [Simplified Arabic](https://www.microsoft.com/typography/fonts/family.aspx?FID=261), as well as with any mono-spaced Arabic font. 

Note also that these measurements will change any time the font size changes, so that the above command should be run again after any command that changes the fontsize. Alternatively, and preferebly, these commands could be redifined to also run   

``` tex
\setlength\kashidaheight{\heightof{\textarabic{ـ}}}  \setlength\kashidadepth{\depthof{\textarabic{ـ}}}.
```

### Defining the kashida command

With the measurements of the kashida now stored, we can use them to define the actual stretchable kashida that is to go between all connecting characters.

``` tex
\newcommand\kashida[1]{\char"200D
  \nobreak\leaders
    \hrule height \kashidaheight depth \kashidadepth
    \hskip 0pt plus 100 pt
  \nobreak\char"200D}
```

This produces a leader, similar to the row of dots that fills the line  between a chapter title and the page number in a table of contents, for example, but it is here in the form of a solid line of kashida-thickness.

Note that the command begins and ends with `\char"200D`. This inserts the Unicode character `ZERO WIDTH JOINER`, a character that is very useful when typing in Arabic. As its name suggest, it takes no space and only instructs surrounding letters to connect with it, and thus with one another. Without it the typesetting engine would see the command `\nobreak` when it comes to this command, and not a letter with which the previous letter can connect, making it take the unconnecting form. The command `\nobreak` instructs LaTeX not to have any line breaks here.

The heart of the command is `\leaders` which is a stretchable element, here declared in plain TeX. It takes two parameters:

1. what it is that is to be repeated or stretched, here a horizontal rule (`\hrule`) with the height stored in `\kashidaheight` and the depth stored in `\kashidadepth`
2. the stretchability (or 'glue' in TeX-terminology), here set to be able to stretch from 0 to 100&nbsp;pts.

It is important that the glue is set to limited dimension such as 100&nbsp;pts and not to infinite glue with `fill`, because this will mess up the last line of the paragraph which should not be filled. 

The following lines gives the environment `nokashida` within which kashidas are disabled, and the command `\nokash` that takes one argument containing a word or text with disabled kashida. This is useful for example with the word Allah الله for which some fonts produce a ligature, i.e. `\nokash{الله}`.

``` tex
\newenvironment{nokashida}{\renewcommand{\kashida}{\relax}}{}
\newcommand{\nokash}[1]{\begin{nokashida}#1\end{nokashida}}
```

## Conclusion

And that's it. Adding the above code to the preamble automatically applies the stretchable kashida, as in the multicolumn examples above.

The way it has been applied here comes with a few caveats:

- It only works with typefaces where letters are connected at the baseline and where the connection is not cruvilinear.
- If the typeface have ligatures other than *lam-alif* that you wish to retain, they must be added to the classes and patters of `\XeTeXinterchartoks`.
- Vowel signs and similar negate the stretchable kashida.
- Your may not be able to resist the urge to hang your beautiful Arabic text columns on your office wall. 

[^microtype]: There is also a third method: to stretch or squeeze letters by a measure that is too small to be noticeable on individual letters but that have an accumulated effect that provides a variability used for justifying the text. See the documentation for the [`mycrotype` package](https://www.ctan.org/pkg/microtype?lang=en) for a discussion and implementation in LaTeX.
[^utopia]: أحمد خالد توفيق، ٢٠١٤. *يوتوبيا*، دير ميريت، القاهرة. 
