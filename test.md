---
title: Unicode for Arabists
lang: en
length: long
tags:
  - transcription
  - typography
layout: post
author: Andreas Hallberg
permalink: /test/
excerpt: This is a brief introduction to Unicode primarily aimed at people regularity writing in the Arabic script on the computer. When writing Arabic digital text, problems often arise with directionality and diacritics. Modern digital typesetting uses Unicode to digitally encode characters which are then displayed to the human reader. Understanding some basic principles of Unicode and engaging with the text on the level of character encoding, rather what is typically rendered on the screen, allows one to deal with these problems. 
---

*This post is based on a presentation I given in the [Digital Area Studies seminar](https://ikos-dighum.github.io/) at University of Oslo, Department of Culture Studies and Oriental Languages, May 30, 2022.*

This is a brief introduction to Unicode for people regularity writing in the Arabic script on the computer. In Arabic digital text, a lot of work is done under the hood to rearrange and connect letters for correct display and to place vowel signs on their appropriate places. Quite often, however, and especially if you want to do something typographically fancy, this system produces undesired results, most commonly punctuation jumping around and words appearing in the incorrect order. Modern digital typesetting uses Unicode to digitally encode characters which are then displayed to the human reader. Understanding some basic principles of Unicode and being able to engaging with the text on the level of digital encoding rather than visual display allows one to effective deal with these problems.

{:.box}
*Vim: Throughout this post I have included boxes like this one with tips on how to do things in [Vim](https://www.vim.org/)/[Neovim](https://neovim.io/), my editor of choice. If you are not a Vim user, these boxes can be ignored and I hope they are not too distracting.*


## Contents

- TOC
{:toc}

## Unicode basics

Unicode has been a standard for digital text encoding since the early 2000s. It provides one coherent system for encoding virtually all forms of written language in current us (as well as most not in use) and replaces the plethora of different encoding that were in use at the time. If you are typing letters other than those in the English alphabet or reading it on the screen, the text is almost guaranteed to be encoded in Unicode.[^unicodeexplainer]

[^unicodeexplainer]: For a more detailed yet accessible explanation of Unicode, see [*What Every Programmer Absolutely, Positively Needs To Know About Encodings And Character Sets To Work With Text*](https://kunststube.net/encoding/).

### From ASCII to Unicode

The Unicode standard for text encoding replaced the various extensions of ASCII (American Standard Code for Information Interchange) that had been used since its creation in 1963. ASCII encodes 128 characters: the upper and lower case Latin letters used in English, numbers, basic punctuation and some other signs, and (in the two leftmost columns) various non-printable control characters, that for our purposes can be ignored. Computer code exclusively uses these characters.

On the most basic level, computers stores information in binary ones and zeroes, and any ASCII character can be expressed as a series of seven ones and zeroes, seven bits. In the table, the three bits on the top row shows the first three bits of character and the bits in the leftmost column show the first four. The first three bits can more conveniently be expressed as the digits 0-7 and the last four bits as a hexadecimal number 0--F (like the normal decimal system of 0--9 but extended with A-F to get a total of sixteen). This hexadecimal system will be important for later. 

|          |     | **000** | **001** | **010** | **011** | **100** | **101** | **110** | **111** |
|          |     | *0*     | *1*     | *2*     | *3*     | *4*     | *5*     | *6*     | *7*     |
| **0000** | *0* | NUL     | DLE     | space   | 0       | @       | P       |         | p       |
| **0001** | *1* | SOH     | DC1     | !       | 1       | A       | Q       | a       | q       |
| **0010** | *2* | STX     | DC2     | "       | 2       | B       | R       | b       | r       |
| **0011** | *3* | ETX     | DC3     | #       | 3       | C       | S       | c       | s       |
| **0100** | *4* | EOT     | DC4     | $       | 4       | D       | T       | d       | t       |
| **0101** | *5* | ENQ     | NAK     | %       | 5       | E       | U       | e       | u       |
| **0110** | *6* | ACK     | SYN     | &       | 6       | F       | V       | f       | v       |
| **0111** | *7* | BEL     | ETB     | '       | 7       | G       | W       | g       | w       |
| **1000** | *8* | BS      | CAN     | (       | 8       | H       | X       | h       | x       |
| **1001** | *9* | HT      | EM      | )       | 9       | I       | Y       | i       | y       |
| **1010** | *A* | LF      | SUB     | *       | :       | J       | Z       | j       | z       |
| **1011** | *B* | VT      | ESC     | +       | ;       | K       | [       | k       | {       |
| **1100** | *C* | FF      | FS      | ,       | <       | L       | \       | l       |         |
| **1101** | *D* | CR      | GS      | -       | =       | M       | ]       | m       | }       |
| **1110** | *E* | SO      | RS      | .       | >       | N       | ^       | n       | ~       |
| **1111** | *F* | SI      | US      | /       | ?       | O       | _       | o       | DEL     |

Now, this is a very storage-effective way of you only need to write text in English. To be able to write with non-English letters, people started to device extensions of the ASCII to allow for more characters to be included. Most these extensions used an eight-bit format. The extra bit doubles the amount of code points to 256. The old ASCII characters were retained in positions 0--128, as above, with positions 129-256 being used for new characters. For example, [The Multinational Character Set](https://en.wikipedia.org/wiki/Multinational_Character_Set) extends the ASCII set to include letters required in other European languages, while [ISCII](https://en.wikipedia.org/wiki/Indian_Script_Code_for_Information_Interchange) extends ASCII to write various Indic languages.

The problem with these extensions to the ASCII-set was that there were a number different standards around and you needed to know when opening a file by what standard it was encoded. Otherwise the characters would be jumbled and incomprehensible. If a text was written in the Indian ISCII and decoded with the Multinational Character Set, the bit sequence 1111010 would be displayed as § rather than the indented उ, for example. (I am sure many people reading this post and working with computers in the 90s remember opening such jumbled text.) And, of course, writing in several languages in the same text was incredibly complicated. Overall, multilingual digital text was a bit of a mess and highly anglocentric.

### Unicode design principles

Enter Unicode. The idea behind Unicode was to create an scheme for character encoding where all languages are encoded on an even keel in one and the same encoding scheme. The ASCII inventory is neat in that it is has a very small carefully selected inventory of 128 code points. Unicode, by contrast, has  1,114,112 (which is a lot). This is more than enough space to encode all written languages that have ever been in use. As of 2021 (Unicode v.14), 144,697 code points are actually designated to characters. The biggest chunk of these, 92,865 code points, are assigned to Chinese characters.

Unicode currently encodes 159 scripts. Note that scripts are not the same as languages. For example, Swedish and English both use the same Latin script, and Arabic and Farsi use the same Arabic script (or slightly different sets of characters from the same script). The number of languages fully represented in Unicode is therefor far higher than the number of scripts. Indeed, I dare you to find a language that cannot be written in Unicode.

Just to get a sense of the breadth of things covered, here is a small random tasting:

- A
- Æ
- 我&nbsp;(some random Chinese character)
- 𐎄 &nbsp;(Ugarit letter *delta*)
- ﷺ &nbsp;(Arabic ligature *Peace be upon him*.)
- 𓀍 &nbsp;(Egyptian hieroglyph A011)
- 😼
- ᚍ&nbsp;(letter *ngedal* from the Ogham writing system used in Medieval Welsh inscriptions) 
- 𐩣&nbsp;(Old South Arabian letter *men*)
- ⤴
- ᭷&nbsp;Balinese musical symbol

A font will only have a subset of these 1,114,112 characters represented. If the file contains a characters that is not represented in the font you use to view the file, some software will substitute the font for that specific character to one where it is represented in order to display it. MS Word does this, fore example. One often sees this in published texts in linguistics, where some specialized characters, *ḥ* or *p*, say, are in a font that is off. The better option is to use a font with proper character coverage from the outset.

Any given character from any script has a unique *code point*, essentially its binary sequence. It is by convention expressed in hexadecimals. Each hexadecimal is four bits, i.e., four ones or zeroes. For example, the letter Æ has the code point 00C6. To indicate that it is referring to a Unicode code point it is preceded by U+: U+00C6. Having access to this code comes in handy, as we will see in a bit.

It is highly recommended to have a look at the *The Unicode Standard* ([2019](http://www.unicode.org/versions/Unicode12.0.0/UnicodeStandard-12.0.pdf)), the official documentation. It is a highly readable and accessible document, even for a non-specialist. I recommend reading or skimming section&nbsl;1 *Introduction* and 2&nbsl;*General structure* (around 70 pages) which give a good general understanding of the system on a conceptual level, and before reading the section on the language you are interested in.

To familiarize yourself with the Unicode world, it a good exercise to casually explore the Unicode inventory. (On Mac, if you have enabled *Show keyboard and emoji viewers in menu bar* in the keyboard settings, you can do this with *Show Emoji & Symbols* from that menu.)


{:.box}
*Vim: With the excellent [unicode.vim plugin](https://github.com/chrisbra/unicode.vim) you can do :UnicodeTable to open the entire Unicode inventory as a massive table in plain text to brows through at your convenience.*

In Unicode, each character (each character code) is associated with a number of features that are looked up in a separate database. The most important of these features for our purposes are:

- *Name*. An English descriptive human readable name that is unique for that character, normally including the name of the script (e.g., "LATIN" or "ARABIC"). This name is by convention in all ASCII uppercase letters. The name of Æ is for example LATIN CAPITAL LETTER AE.
- *Category.* Punctuation, letter, digit, upper and lower case, control characters, etc.

   A particularly important category for our purposes is *control characters* are a type of character that has no visual appearance and take up no horizontal space, and so are usually invisible. As shown below, you may want to be able to manipulate them, which may require special tools.

- *Writing direction*. Most commonly right-to-left (RTL), left-to-right (LTR), or top-to-bottom.
- *Combining or non-combining*. Whether it graphically combines with previous characters, as is the case for diacritics and some mathematical symbols.

We well return to the last two properties below.

### Typing Unicode

The true power of Unicode is that it gives you access to 100,000 characters in one unified framework. There are three ways to access these characters to inset them into a file:

1. *With the keyboard layout.* This the most basic way to inter characters into a file. Every key on the keyboard is assigned a Unicode code point associated with a character. Which character is assigned to which key is essentially arbitrary, allow different keyboard layouts to be designed for different language and purposes. When using a Swedish layout, some keys will give different outputs then when using an American layout, for example. This is, of course, how we normally type. However, it only provides access to a small set of characters (those that can fit on the keyboard) and typically only from one language.

2. *Manual selection.* There are many application that allows you to brows through or search the Unicode inventory for a characters that you can then copy or otherwise insert into a document. Most operating systems ships with applications that do this. A simple, low-tech way to do this is to do an internet search for *Unicode* and the name of the character you are looking for, and copy and paste the character from the browser.

   {:.box}
   *Vim: With the [unicode.vim plugin](https://github.com/chrisbra/unicode.vim), you can type part of the name of Unicode character and while still in insert mode do <kbd>Ctrl</kbd>+<kbd>x</kbd> <kbd>Ctrl</kbd>+<kbd>z</kbd> to get a list of characters with a name that match that string and select one to be inserted.*

3. *By code-point.* Many applications allow you to do some keyboard shortcut in combination with the hexadecimal code-point to insert a character. In Windows, for example, you can type out the hexadecimal code in a document, e.g., 1F63C, mark this string, and press <kbd>Alt</kbd>+<kbd>x</kbd> to convert it to the respective character (😼 CAT FACE WITH A WRY SMILE).

   {:.box}
   *Vim: <kbd>CTRL</kbd>-<kbd>v</kbd> followed by <kbd>u</kbd> and then the hexadecimal code point in insert mode inserts the character.*


It is also very useful to be able to easily identify a character that you come across in a file. There is, however, no built in way of easily doing this in the common OSs as far as I know.

{:.box}
*Vim: Do <kbd>g</kbd><kbd>a</kbd> in normal mode to display information on the character under the cursor in the status line.*

## Directionality

Arabists often find themselves editing bidirectional text, for example an English text with some words in the Arabic script or vice versa. This can be a real hassle. This is because the software typically tries to reorder the text for human readability, that is, displaying the Arabic text RTL and the English LTR. It does not always get this right or do it in the way you'd expect. If you are regularity working with bidirectional text, it is worth taking the time to understand how this works.

Digital text is stored as a long list of characters (including spaces, line breaks, etc.). These characters only have a certain order but no inherent direction. If this list contains letters that are meant to be read in different directions, e.g., English and Arabic, the has two ways of displaying this list on the screen for human consumption. The most basic is the *logical order*. This is where the characters are displayed simply in the order they as they are stored in the file, typically the order in which they were typed. They can be displayed this way in either direction, either

LTR&nbsp;(→)

> ‭Hello, hello. اسمي اندرياس. Hello again.

or RTL&nbsp;(←)

> ‮Hello, hello. اسمي اندرياس. Hello again.

This is, clearly, not how the text is intended to be displayed. Either the Arabic or the English is in the wrong direction.

Most software displaying text will instead display the text the *visual order*, how it is intended to be read by humans. Here, the computer uses the directionality property for each character specified in Unicode to try to rearrange the characters as to how they are supposed to be read. The exact way this is done is quite complex and is specified in [*Unicode Biderectional Algorithm*](https://www.unicode.org/reports/tr9/) (which I have tired, and failed, to fully understand). The same line as above displayed in visual order looks like this.

> Hello, hello. اسمي اندرياس. Hello again.

Your word processor, or in this case your browser, does this automatically. In order to prevent this in the previous examples I inserted the invisible control characters LEFT-TO-RIGHT OVERRIDE (U+202D) and RIGHT-TO-LEFT OVERRIDE (U+202E) at the start of the line to force a specific consisted display direction.

In the last example visual reorder you may have noticed that the period associate with the Arabic segment is to its left rather than to its right. This is probably not what you want. The dot and most other punctuation marks have a directionality property set to neutral, meaning that they adapt to the main directionality of the paragraph which in this case is LTR. The bidirectional algorithm therefore places it after (to the right of) the Arabic RTL-segment. You can control these neutral characters with the control characters

- LEFT-TO-RIGHT EMBEDDING (U+202a)
- RIGHT-TO-LEFT EMBEDDING (U+202b)
- POP DIRECTIONAL FORMATTING (U+202C)

The first two introduce an embedded segment that is to be displayed in LTR or RTL, and the latter ends this segment, going back to whatever directionality is the main one of the paragraph. The following is the same line as above but with RIGHT-LEFT EMBEDDING just before the first Arabic word اسمي POP DIRECTIONAL FORMATTING right after the second dot:


> Hello, hello. ‫اسمي اندرياس.‬ Hello again.


Note how the dot now conforms to the Arabic visual ordering. This same line displayed in an editor that shows control characters and displays the line in logical order looks something like this:


> ‭Hello, hello. <202b>اسمي اندرياس.<202c> Hello again.

Displaying text like this is highly useful when editing the text so that you can see everything going on under the hood.

{:.box}
*Vim: See [a previous post](/typing-arabic-in-vim/) on how to work with bidirectional text like this in Vim.*


## Combining characters

A class of Unicode characters that are of particular importance for Artists are the *combining characters*. These are characters that a)&nbsl;take up no horizontal space and b) modify or adds to the preceding character. Arabic vowel signs (*fatḥa*, *ḍamma*, *kasra*, etc.) and letter modifications used in linguistic transcription (*ḥ*, *š*, etc.) of this class.

Unicode has no restrictions on how combining character can be combined with one another or with any non-combining character (i.e., typically a letter) from any script. This means that you can do silly things such as ḍ̣̣͑͑͑, a *d* with three COMBINING LEFT RING ABOVE and three COMBINING DOT BELOW, have an Arabic letter with a bunch of *fatḥa*<!---->s and *kasra*<!---->s تََََََِِِِِِِ, or something more creative: ( ▀ ͜͞ʖ▀)

Combining characters, by their nature, are not meant to be displayed in isolation, without a letter to serve as their base. If you need to to so for purposes of demonstration, the convention is to use ◌ DOTTED CIRCLE (U+22CC) as a place holder letter. So that, for example, you can show a lone *fatḥa* like this:&nbsp;◌َ. 

### Diacritics (*taškīl*)

The combining characters that are used in modern typography (*taškīl*, vowel diacritics) are accessible on the <kbd>Shift</kbd>-layer of standard Arabic keyboard layouts.

### Enclosing marks

Another nice, if somewhat obscure, feature in the Arabic Unicode is the characters used for traditional Arabic typesetting of end of *aya*<!---->s, page numbers, years, etc. These characters

- ؀ U+0600 ARABIC NUMBER SIGN
- ؁ U+0601 ARABIC SIGN SANAH
- ؂ U+0602 ARABIC FOOTNOTE MARKER
- ؃ U+0603 ARABIC SIGN SAFHA
- ۝ U+06DD ARABIC END OF AYAH

are classified as *enclosing combining marks*. If followed directly by Arabic numerals these will be enclosed and they will be enclosed:
 
<font face="Amiri">

> ؀٣٤٥
> ؁٣٤٥
> ؂٣٤٥
> ؃٣٤٥
> ؄٣٤٥
> ۝٣٤٥

</font>

(This enclosing may not show up properly in the browser, depending on your font setup. If not, try copying the example above to word processor and set to font to one with good Arabic coverage, like [Amiri](https://www.amirifont.org/), and it should show up properly.)

## Quranic orthography

The ARABIC END OF AYA character above is an example of a character used specially in the Quran. The Quran has a number of orthographic features not uses in other texts, all of it covered in Unicode. To achieve correct Quranic orthography, however, you need to dig a little deeper into the Arabic section of Unicode to access characters not found on the regular Arabic keyboard layout. Many Arabic fonts lack glyphs for these characters and you may need a specialized or advanced font to display them. Again [Amiri](https://www.amirifont.org/) is your friend. 

Consider the following two examples:[^hallbergquran]

[^hallbergquran]: For real-life use of these examples, see Hallberg ([2016](https://lup.lub.lu.se/record/8524489), p. 73).

> ‮أَنَّ ٱللهَ بَرِىٓءࣱ مِّنَ ٱلۡ‍مشۡرِكِينَ وَرَسُولُهُ
 
> ‮إِنَّمَا يَخۡشَى ٱللهَ مِنۡ عِبَادِهِ ٱلۡعُلَمَـٰۤؤُاْ

Note how the *sukūn* does not not have the normal circular form of modern typography but the open form used in the Quran, how the double *ḍamma* in بَرِىٓءࣱ the first quote is two visually separated signs, there is a small *alif* on top of a letter *mīm* and a *madda* on top of that in the word ٱلۡعُلَمَـٰۤؤُاْ. All of these are spare characters in the Unicode inventory that can be inserted via their code points.

These lines may not display nicely in the browser. Copy them to a word processor and set the typeface that has all the relevant characters, such as [Amiri](https://www.amirifont.org/), and it should display beautifully.


There are at least 24 Quran-specific characters supported in Unicode (U+06D6-U+06ED):
 
|                              |                                                                    |
| :-                           | :-                                                                 |
| <font face="Amiri">ۖ◌ </font> | U+06D6 ARABIC SMALL HIGH LIGATURE SAD WITH LAM WITH ALEF MAKSURA |
| <font face="Amiri">ۗ◌</font>  | U+06D7 ARABIC SMALL HIGH LIGATURE QAF WITH LAM WITH ALEF MAKSURA |
| <font face="Amiri">ۘ◌</font>  | U+06D8 ARABIC SMALL HIGH MEEM I\ITIAL FORM                       |
| <font face="Amiri">ۙ◌</font>  | U+06D9 ARABIC SMALL HIGH LAM ALEF                                |
| <font face="Amiri">ۚ◌</font>  | U+06DA ARABIC SMALL HIGH JEEM                                    |
| <font face="Amiri">ۛ◌</font>  | U+06DB ARABIC SMALL HIGH THREE DOTS                              |
| <font face="Amiri">ۜ◌</font>  | U+06DC ARABIC SMALL HIGH SEEN                                    |
| <font face="Amiri">۝</font>  | U+06DD ARABIC END OF AYAH                                        |
| <font face="Amiri">۞</font>  | U+06DE ARABIC START OF RUB EL HIZB                               |
| <font face="Amiri">۟◌</font>  | U+06DF ARABIC SMALL HIGH ROUNDED ZERO                            |
| <font face="Amiri">۠◌</font>  | U+06E0 ARABIC SMALL HIGH UPRIGHT RECTANGULAR ZERO                |
| <font face="Amiri">ۡ◌</font>  | U+06E1 ARABIC SMALL HIGH DOTLESS HEAD OF KHAH                    |
| <font face="Amiri">ۢ◌</font>  | U+06E2 ARABIC SMALL HIGH MEEM ISOLATED FORM                      |
| <font face="Amiri">ۣ◌</font>  | U+06E3 ARABIC SMALL LOW SEEN                                     |
| <font face="Amiri">ۤ◌</font>  | U+06E4 ARABIC SMALL HIGH MA\DA                                   |
| <font face="Amiri">ۥ</font>  | U+06E5 ARABIC SMALL WAW                                          |
| <font face="Amiri">ۦ</font>  | U+06E6 ARABIC SMALL YEH                                          |
| <font face="Amiri">ۧ◌</font>  | U+06E7 ARABIC SMALL HIGH YEH                                     |
| <font face="Amiri">ۨ◌</font>  | U+06E8 ARABIC SMALL HIGH NOON                                    |
| <font face="Amiri">۩</font>  | U+06E9 ARABIC PLACE OF SAJDAH                                    |
| <font face="Amiri">۪◌</font>  | U+06EA ARABIC EMPTY CENTRE LOW STOP                              |
| <font face="Amiri">۫◌</font>  | U+06EB ARABIC EMPTY CENTRE HIGH STOP                             |
| <font face="Amiri">۬◌</font>  | U+06EC ARABIC ROUNDED HIGH STOP WITH FILLED CENTRE               |
| <font face="Amiri">ۭ◌</font>  | U+06ED ARABIC SMALL LOW MEEM                                     |


## Letter binding control

In digital Arabic typesetting, letters change form automatically to correctly bind bind with adjacent letter. Typing م and ا will produce ما, for example. You might want to manipulate this behavior for example to show a fully bound ‍ه‍ in isolation. This is useful, for example, in pedagogical contexts or in discussions on typography and writing systems.

Unicode features number of control characters to control letter-binding. The most useful of these is  ZERO WIDTH JOINER (U+200D). With careful placement of this character, you can show all fours forms a letter:

> ه ه‍ ‍ه‍ ‍ه 

This line displayed in logical with control characters visible shows as

```
‭ ه ه<200d> <200d>ه<200d> <200d>ه 
```

A similar effect can be achieved by the *taṭwil/kašīda* character ـ ( U+0640 ARABIC TATWEEL) a line at the baseline that can be used to elongate the connection between letter (تطويـــــل). This can normally be accessed on the keyboard with <kbd>Shift</kbd>+<kbd>J</kbd>. The *taṭwīl*, however, add a horizontal line, which may or may not be what you want.

The ZERO WIDTH JOINER can also be used to disable unwanted ligatures introduced by the typeface. This is done by adding this character between the two combining letters. The font tenderer does then not see a sequence of two letters that it substitutes with a ligature. Here are a few examples with words words to the right having a ZERO WIDTH JOINER inserted:

|                                    |                                                |
| -:                                 | -:                                             |
| <font face = "Amiri">لله</font>    | <font face = "Amiri"> ل‍له</font>         |
| <font face = "Amiri">يحب</font>    | <font face = "Amiri"> ي‍حب</font>         |
| <font face = "Amiri">محل</font>    | <font face = "Amiri">م‍حل</font>          |
| <font face = "Amiri">المسلم</font> | <font face = "Amiri">ال‍مسل‍م</font> |
| <font face = "Amiri">كما</font>    | <font face = "Amiri">ك‍م‍ا</font>    |


There is also a somewhat less useful (for Arabic) U+200C ZERO WIDTH NON-JOINER that can be inserted between letters to prevent connections: م‌ر‌ح‌ب‌اً‌.

## Transcription

Arabists also use exotic characters for transcribing Arabic. This is primarily done with diacritics that are added to letters from the Latin alphabet: *ḥ, ā, š,* etc. These are handled in one of two ways in Unicode. The first is in the same way as with the Arabic diacritics, that is with *combining characters*, independent characters that do not take up any horizontal space but rather modify the preceding letter. Thus an *a* directly followed by ◌̄ COMBINING MACRON (U+0304) is displayed as *ā*. This *ā* is thus two separate characters displayed on one and the same letter position. Typically, if you place the cursor after this character and hit <kbd>Backspace</kbd>, it will only delete the last character in the sequence, i.e., the macron, leaving a lone&nbsl;*a*. These are the combining character you should need for the most common system of Arabic transcription:

- ◌̄ U+0304 COMBINING MACRON
- ◌̱ U+0331 COMBINING MACRON BELOW
- ◌̇ U+0307 COMBINING DOT ABOVE
- ◌̣ U+0323 COMBINING DOT BELOW
- ◌̌ U+030C COMBINING CARON

The second way this type of diacritics is handled in Unicode is in *recombined character*. Continuing with our example, there is an precombined *ā* LATIN SMALL A WITH MACRON (U+0101). Since this is one single character, hitting <kbd>Backspace</kbd> after this character deletes the whole thing. 

Then you only need

- ʾ U+02BE MODIFIER LETTER RIGHT HALF RING
- ʿ U+02BF MODIFIER LETTER LEFT HALF RING (;S)

for *ʿayn* and *hamza* and you're set.

### Keyboard layout for Arabic transcription

Now, if you type a lot of transcribed text, inserting these characters one by manual look-up or by typing character codes is tedious. *Mamlūk Studies Review* provides the [Alt-Latin](http://mamluk.uchicago.edu/unicode.html) keyboard layout that extends the American QUARTY-layout to include these extra characters with key-combinations. The layout can be downloaded for Mac or Windows and is easy to install to be accessed with the operating system's keyboard switching functionality. The system is neatly and clearly explained on their webpage.

{:.box}
*Vim: See [this previous post](/emulating-alt-latin-in-vim/) on how to implement the same functionality internally in Vim.*

### Hyphenation

A final detail on transcription is the use of the hyphen to delineate the definite article *al-* or morphemes in transcribed text. The hyphen in transcription is functionally different then the hyphen used in normal text. The normal (HYPHEN MINUS U+002D) is used for compound words or inserted to break up long words at the end of a line in justified text (text with an straight right-hand margin). It is entered by pressing the <kbd>-</kbd>-key on the keyboard. The hyphen used in transcription should not be line-broken. Using the normal hyphen in transcription may produce line-breaks within transcribed Arabic words. The problem with this is that the hyphen reads as inserted for line-breaking rather than as part of the word. The following two examples from Versteegh (1983: 140) and Suleiman (2011: 20):

![Line break in transcribed Arabic text](~/blog/images/unicode-for-arabists/versteegh1983-hyphenation.pdf)

![Line break in transcribed Arabic text](~/blog/images/unicode-for-arabists/suleiman2011-hyphenation.pdf)

To avoid this, instead of using the normal hyphen, one can instead use ‑ NON-BREAKING HYPHEN (U+2011). This character is visually identical to the normal hyphen but, as the name suggest, does not allow for a succeeding line break. (I have find it to be good practice to warn people you send the text to if you are using the non-breaking hyphen in transcription, as it may not display properly on their end.)

## Conclusion



## References

Hallberg, A. (2016). *Case endings in Spoken Standard Arabic: Statistics, norms, and diversity in unscripted formal speech* \[Doctoral dissertation, Lund University\]. <https://lup.lub.lu.se/record/8524489>

Suleiman, Y. (2011). Ideology, grammar-making and the standardization of Arabic. In B. Orfali (Ed.), *In the shadow of Arabic: The centrality of language to arabic culture*. Brill. <https://doi.org/10.1163/9789004216136_002>

*The Unicode Standard: Version 12.0 — core specifications*. (2019). Unicode Consortium. <http://www.unicode.org/versions/Unicode12.0.0/UnicodeStandard-12.0.pdf>

Versteegh, K. (1983). Arabic grammar and corruption of speech. *Al-Abhath*, *31*, 139–160.


