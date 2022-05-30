---
title: 'Working with digital Arabic text: encoding, diacritics, and directionality' 
lang: en
layout: page
author: Andreas Hallberg
permalink: /oslo/
abstract: In this talk I discuss problems that may arise when working with complicated scripts, such as Arabic, in a digital environment, including problems related to directionality, combining characters (such as vowel signs), and various specialized characters. Problems of this kind may affect both input and display of text, as well as text searches. To deal with these issues it is often helpful to understand and engage with the text on the level of digital character encoding, rather than on the level of visual display. In the talk I discuss the Unicode standard for character encoding and show some practical examples and useful tools for working with Arabic text as abstract digitally encoded characters.
---
 
<http://andreasmhallberg.github.io/oslo>

# Preliminaries

- Terminal
- Plain text (txt, html, markdown)
- Vim
  
# Unicode 

## Principles
 
- Standard since early 2000s
- Replaced various extensions of ASCII (1963) for different languages

  ![](ascii.png)

- In Unicode all scripts are equal
- 1,114,112 available code points (137,929 encoded, v. 12, 2019)
- Seeks to represent all written languages that have ever existed
- The manual! (The Unicode Standard, 2019)
  - Read introduction + language of interest
- A font has glyph for subset of all these
  - Softwares substitute font for missing glyphs
- Arbitrarily mapped to keyboard

## Encoding
 
A Æ 我 𐎄  ﷺ  𓀍  🤷 😼 

- For each character:
  - Code point, conveniently expressed in hexadecimal (0--F), e.g. U+00C6 Æ
  - Name, e.g. `LATIN CAPITAL LETTER AE`
  - Properties (writing direction, combining, etc.)
- Explore character inventory
  - OS application
  - `:UnicodeTable` (unicode.vim)
  - Inserting characters
    - Keyboard layouts
    - With code-point `CTRL+V u [code point]`
    - Insert with search `CTRL+X CTRL+Z` (unicode.vim plugin) egyp
- Inspect character: `ga` (Vim)

# (Bi-)Directionality

- Digital text as list of characters (including line breaks, etc.)
- Order of characters
  - *Logical order*: as digitally stored, as read by computers

    ‭`Hello, hello. اسمي اندرياس. Hello again.`

  - *Visual order*: as visually displayed, as read by humans

    `Hello, hello. اسمي اندرياس. Hello again.`

    - Direction properties
      - RTL (Latin letters)
      - LTR (Arabic letters)
      - Neutral (Most punctuation, space)

  - Swap direction and keyboard in Vim.  
    <http://andreasmhallberg.github.io/typing-arabic-in-vim/>
 
- Control characters
  - ‪ U+200E LEFT-RIGHT EMBEDDING
  - ‫ U+200F RIGHT-LEFT EMBEDDING
  - ‬ U+202C POP DIRECTIONAL FORMATTING

  As above with Arabic text enclosed in RTL embedding and POP:

  `Hello, hello. ‫اسمي اندرياس.‬ Hello again.`

- Override
  - ‮ U+202E RIGHT-TO-LEFT OVERRIDE
  - ‭ U+202D LEFT-TO-RIGHT OVERRIDE

# Combining characters

- Takes no horizontal space
- Added to preceding character 
- E.g, diacritics (ḥ, š) and Arabic vowel signs
- No limit to combinations
- ḍ̣̣͑: d with U+0351 COMBINING LEFT RING ABOVE and 3 x U+0323 COMBINING DOT BELOW
- بَََََََِِِِِِِ: baa with a bunch of fatḥas

```
 ̿̿ ̿̿ ̿̿ ̿'̿'\̵͇̿̿\з= ( ▀ ͜͞ʖ▀) =ε/̵͇̿̿/’̿’̿ ̿ ̿̿ ̿̿ ̿̿
```


- Quranic orthography

  ![](quran.png) <!-- quran.pdf -->

  In plain text:

```
أَنَّ ٱللهَ بَرِىٓءࣱ مِّنَ ٱلۡ‍مشۡرِكِينَ وَرَسُولُهُ

إِنَّمَا يَخۡشَى ٱللهَ مِنۡ عِبَادِهِ ٱلۡعُلَمَـٰۤؤُاْ
```

- Enclosing combining marks
  - ؁٢٠٢٢
  - ۝٣٤٥

# Searching with regular expressions

Method for Hallberg (in press).

- Plain Unicode characters

```
rg -P "في ب" 79729368.epub.html
```

  Better in logical order:

```
‭`rg -P "في ال" 79729368.epub.html`
```
 

```
‭`rg -P "ُو[^ًٌٍَُِّْ]" 79729368.epub.html`
```

```
‭rg -oP "ُو[^ًٌٍَُِّْ]" 79729368.epub.html | wc -l
```

- Unicode code points

```
rg -oP "\x{064f}و[^\x{064b}\x{064b}\x{064c}\x{064d}\x{064e}\x{064f}\x{0650}\x{0651}\x{0652}]" 79729368.epub.html | wc -l
```

- Unicode code points with ranges

```
rg -oP "\x{064f}و[^\x{064b}-\x{0652}]" 79729368.epub.html | wc -l
```

# Letter binding control

(Demonstrate with Amiri)

- ‍ U+200D ZERO WIDTH JOINER

  لم ل‍م

  لا ل‍ا

  الله الل‍ه

- ‌ U+200C ZERO WIDTH NON-JOINER

  ل‌م‌ل‌ لم

# References

Hallberg, A. (in press). Principles of variation in the use of diacritics (*taškīl*) in Arabic books. *Language Sciences*.

Hallberg, A. (2016). *Case endings in Spoken Standard Arabic: Statistics, norms, and diversity in unscripted formal speech* \[Doctoral dissertation, Lund University\]. <https://lup.lub.lu.se/record/8524489>

*The Unicode Standard: Version 12.0 — core specifications*. (2019). Unicode Consortium. <http://www.unicode.org/versions/Unicode12.0.0/UnicodeStandard-12.0.pdf>
