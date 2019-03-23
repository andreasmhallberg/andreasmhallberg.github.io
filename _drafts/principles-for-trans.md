---
layout: post
title: Typographical guidelines for Arabic linguistic transcription
permalink: /exempel-pa-svensk-arabisk-kodvaxling/
lang: sv
length: medium
tags:
- linguistics
- typography
#updates:
#- date:
#  contents:
---

The following is a list practical principles for linguistic transcriptions in Arabic.

## Don't line break at hyphens 

Clitics are normally marked with a hyphen in transcription, most commonly with the definite article *al-*, e.g. *al-kalima* 'the word'. Often the typesetting engine allows for line breaks in after a hyphen. This creates a double function for hyphens, it both marks morphological segmentation and line breaks within a word. This disturbs reading. If for example a line ends with *al-* the reader does not know whether the hyphen is inserted due to line breaking of whether it also marks a morphological segment. One platform independent way to avoid this is to use a non-breaking hyphen (U+2011) in transcription rather than the normal hyphen (U+2010).

In Word you type a non-breaking hyphen with <kb>Ctrl</kb>+<kb>Shift</kb>+<kb>-</kb>.

![Line break at hyphen](images/line-break-at-hyphen.pdf)

@versteegh_arabic_1983

## Don't hyphenate transcribed words

Just as you should not line break a hyphen that is there to mark morphological segmentation, you should not insert hyphens into a transcribed word in order to have a line break.

![Hyphenated linebreak](images/hyphenated-transcription.pdf)

@versteegh_arabic_1983

## Use italics for transcription

It is important to clearly signal to the reader what words in a text are transcriptions and what words are not so that they can adapt parsing strategies immediately when they encounter the word in the text. The standard way to this is to have transcriptions in italics.

## Use a font that has all relevant glyphs

## Don't transcribe paragraph-length quotes

If you have an isolated word or a short phrase it is useful to write it in transcription: it makes for a neater, better looking page not to type things in the Arabic script, reading text with change in reading direction mid-line is cognitively cumbersome, and the non-arabophone reader can make out and maybe recognize the phrase, or at least get an idea of how it sounds. For paragraph length quotes transcribing makes little sense. The non-arabophone reader won't understand it anyway, and for the arabophone reader it is much easier to read the same text in Arabic script.

## LaTeX

In LaTeX a convenient way is to define a command for transcriptions that makes the text italic ad does not allow for line breaks within words. Define this command in the preamble

``` tex
\newcommand{\trans}[1]{%
  \textit{%
    \bgroup\hyphenpenalty=10000#1\egroup
  }%
}
```

and then do write transcriptions like this: `\trans{šū ḥilu}`.
