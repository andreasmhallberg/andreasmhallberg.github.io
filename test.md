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

{:.center-image}
|          |     | **000** | **001** | **010** | **011** | **100** | **101** | **110** | **111** |
|          |     | *0*     | *1*     | *2*     | *3*     | *4*     | *5*     | *6*     | *7*     |
| **0000** | *0* | NUL   | DLE   | space | 0     | @     | P     |        | p     |
| **0001** | *1* | SOH   | DC1   | !     | 1     | A     | Q     | a     | q     |
| **0010** | *2* | STX   | DC2   | "     | 2     | B     | R     | b     | r     |
| **0011** | *3* | ETX   | DC3   | #     | 3     | C     | S     | c     | s     |
| **0100** | *4* | EOT   | DC4   | $     | 4     | D     | T     | d     | t     |
| **0101** | *5* | ENQ   | NAK   | %     | 5     | E     | U     | e     | u     |
| **0110** | *6* | ACK   | SYN   | &     | 6     | F     | V     | f     | v     |
| **0111** | *7* | BEL   | ETB   | '     | 7     | G     | W     | g     | w     |
| **1000** | *8* | BS    | CAN   | (     | 8     | H     | X     | h     | x     |
| **1001** | *9* | HT    | EM    | )     | 9     | I     | Y     | i     | y     |
| **1010** | *A* | LF    | SUB   | *     | :     | J     | Z     | j     | z     |
| **1011** | *B* | VT    | ESC   | +     | ;     | K     | [     | k     | {     |
| **1100** | *C* | FF    | FS    | ,     | <     | L     | \     | l     | |     |
| **1101** | *D* | CR    | GS    | -     | =     | M     | ]     | m     | }     |
| **1110** | *E* | SO    | RS    | .     | >     | N     | ^     | n     | ~     |
| **1111** | *F* | SI    | US    | /     | ?     | O     | _     | o     | DEL   |

Now, this is a very storage-effective way of you only need to write text in English. To be able to write with non-English letters, people started to device extensions of the ASCII to allow for more characters to be included. Most these extensions used an eight-bit format. The extra bit doubles the amount of code points to 256. The old ASCII characters were retained in positions 0--128, as above, with positions 129-256 being used for new characters. For example, [The Multinational Character Set](https://en.wikipedia.org/wiki/Multinational_Character_Set) extends the ASCII set to include letters required in other European languages, while [ISCII](https://en.wikipedia.org/wiki/Indian_Script_Code_for_Information_Interchange) extends ASCII to write various Indic languages.

The problem with these extensions to the ASCII-set was that there were a number different standards around and you needed to know when opening a file by what standard it was encoded. Otherwise the characters would be jumbled and incomprehensible. If a text was written in the Indian ISCII and decoded with the Multinational Character Set, the bit sequence 1111010 would be displayed as § rather than the indented उ, for example. (I am sure many people reading this post and working with computers in the 90s remember opening such jumbled text.) And, of course, writing in several languages in the same text was incredibly complicated. Overall, multilingual digital text was a bit of a mess and highly anglocentric.

### Unicode design principles

Enter Unicode. The idea behind Unicode was to create an scheme for character encoding where all languages are encoded on an even keel in one and the same encoding scheme. The ASCII inventory is neat in that it is has a very small carefully selected inventory of 128 code points. Unicode, by contrast, has  1,114,112 (which is a lot). This is more than enough space to encode all written languages that have ever been in use. As of 2021 (Unicode v.14), 144,697 code points are actually designated to characters. The biggest chunk of these, 92,865 code points, are assigned to Chinese characters.

Unicode currently encodes 159 scripts. Note that scripts are not the same as languages, as for example Swedish and English both use the same Latin script, and Arabic and Farsi use the same Arabic script, only with different extensions of it, so the number of languages fully represented in Unicode is far, far higher. Indeed, I dare you to find a language that is not.

Just to get a sense of things covered,  here is a small random tasting:

- A
- Æ
- 我&nbsp;(some random Chinese character)
- 𐎄 &nbsp;(Ugarit letter *delta*)
- ﷺ &nbsp;(Arabic ligature *Peace be upon him*.)
- 𓀍 &nbsp;(Egyptian hieroglyph A011)
- 😼
- ᚍ&nbsp;(letter *ngedal* from the Ogham writing system used in Medieval Welsh inscriptions) 
- 𐩣&nbsp;(Old South Arabian letter *men*)

Any given character from any script has a unique *code point*, essentially its binary sequence. It is by convention expressed in hexadecimals, by convention preceded by U+. Each hexadecimal is four bits, i.e., four ones or zeroes. For example, the letter Æ has the code point U+00C6. Having access to this code is very useful, as we will see in a bit.

Any given font will only have a subset of these 1,114,112 characters represented, for example only those of the Latin script. Whether you can see the characters in the list above depends on the fonts available on your computer.

**Font substitution**

It is worth having a look at the *The Unicode Standard* ([2019](http://www.unicode.org/versions/Unicode12.0.0/UnicodeStandard-12.0.pdf)). It is a highly readable and accessible document, even for a non-specialist. I recommend reading through section&nbsl;1 *Introduction* and 2&nbsl;*General structure* (around 70 pages) which gives a good general understanding of the system on a conceptual level, and then reading the section on the language you are interested in.

To familiarize yourself with the Unicode world, it is also a nice exercise to casually explore the Unicode inventory. (On Mac, if you have enabled *Show keyboard and emoji viewers in menu bar* in the keyboard settings, you can do this with *Show Emoji & Symbols* from that menu.)

{:.box}
*Vim: With the excellent [unicode.vim plugin](https://github.com/chrisbra/unicode.vim) you can do :UnicodeTable to open the entire Unicode inventory as a massive table in plain text to brows through at your convenience.*

In Unicode, each character has a number of features that are looked up in a separate database based on the character code. These most important of these features are:

- *Name*. An English descriptive human readable name that is unique for that character, normally including the name of the script (e.g., "LATIN" or "ARABIC"). This name is by convention in all ASCII uppercase letters. The name of Æ is for example LATIN CAPITAL LETTER AE.
- *Category.* Control character, punctuation, letter, digit, upper and lower case, etc.
- *Writing direction*. Most commonly right-to-left (RTL), left-to-right (LTR), or top-to-bottom.
- *Combining or non-combining*. Whether it graphically combines with previous characters, as is the case for diacritics and some mathematical symbols.

We well return to the last two properties below.

### Typing Unicode

The true power of Unicode is that it gives you access to 100,000 characters in one unified framework. There are three ways to enter a Unicode character into a file:

1. *With the keyboard layout.* This the most basic way to inter characters into a file. Every key on the keyboard is assigned a character from the Unicode inventory. Which character is assigned to which key is essentially arbitrary. This, of course, is how we normally type, but it only provides access to a small set of characters (those that can fit on the keyboard) and typically only from one language.

2. *Manual selection.* There are many application that allows you to brows through or search the Unicode inventory for a characters that you copy can then copy or otherwise insert into your document. A simple, low-tech way to do this is to do an internet search for Unicode and the name of the character you are looking for and copy and paste the character from the browser. Most operating systems ships with applications search for, select and insert Unicode characters.

   {:.box}
   *Vim: With the unicode.vim plugin, you can type part of the name of Unicode character, and while still in insert mode do <kbd>Ctrl</kbd>+<kbd>x</kbd> <kbd>Ctrl</kbd>+<kbd>z</kbd> to get a list of characters that match that name and select one to be inserted.*

3. *By code-point.* Many applications allow you to do some keyboard shortcut followed by the hexadecimal code-point in hexadecimals to insert a character. In Windows, for example, you can type out the hexadecimal code in a document, e.g., 1F63C, mark this string and press <kbd>Alt</kbd>+<kbd>x</kbd> to convert it to the respective character 😼 (CAT FACE WITH A WRY SMILE).

   {:.box}
   *Vim: <kbd>CTRL</kbd>-<kbd>v</kbd> followed by <kbd>u</kbd> and then the hexadecimal code point in insert mode inserts the character.*


It is also very useful to be able to easily identify a character that you come across in a file. There i, however, no built in way of easily doing this in the common OSs, as far as I know.

{:.box}
*Vim: Do ga in normal mode to display information on the character under the cursor (characters if there is also a combining character) on the status line.*

## Directionality

Editing bidirectional text, for example in an English text with some words in the Arabic script, or vice versa, can be a real hassle. This is because the software typically tries to reorder the text for human readability. If you are regularity working with bidirectional text, it is worth taking the time to understand how this works and to find good the tools to manipulate it.

Digital text is stored as a long list of characters (including spaces, line breaks, etc.) that the computer orders on rows on the screen. This list of characters can be displayed in two ways. The first is the *visual order*, where the software attempts to rearranges characters, based on their directionality property, to how they are intended to be read by humans. The following is an example of Arabic script embedded in an English text: 

> Hello, hello. اسمي اندرياس. Hello again.

However, in the actual HTML source file of this page you are reading now, characters are ordered according to their *logical order* with the characters of each word ordered from start to finish irrespective of its directionality property. Since the logical order is simply an ordered sequence, it can be displayed in any direction (LTR, RTL, top to bottom, etc.). We can demonstrate this by using the exact same string of characters as above but with an invisible Unicode control character, LEFT-TO-RIGHT OVERRIDE (U+202D), at the start of the string. This control characters forces the rest of the paragraph to be displayed LTR:

> ‭Hello, hello. اسمي اندرياس. Hello again.

This is a better representation of how characters are actually stored in the file. We can do the same thing but with  RIGHT-TO-LEFT OVERRIDE (U+202E):

> ‮Hello, hello. اسمي اندرياس. Hello again.

{:.box}
*Vim: It is often easier when editing text with mixed directionality to display text in the logical order. See [a previous post](/typing-arabic-in-vim/) on how to do this in Vim.*

In the first example above with the visual reordering of the Arabic text where we have not manipulated the ordering with control characters, you may have noticed that the dot after the Arabic segment is to the right of the sentence. This may not be what you want. The dot and most other punctuation marks have a directionality property set to neutral, meaning that they adapt to the main directionality of the paragraph, which in this case is left-to-right. It is therefore placed after (to the right of) the Arabic RTL-segment in the middle.

You can control these neutral characters with the invisible characters

- LEFT-TO-RIGHT EMBEDDING (U+202a)
- RIGHT-TO-LEFT EMBEDDING (U+202b)
- POP DIRECTIONAL FORMATTING (U+202C)

The first two introduce an embedded segment that is to be displayed in LTR or RTL and the latter ends this segment, going back to whatever directionality is the main directionality of the paragraph. The following is the same line as above but with RIGHT-LEFT EMBEDDING just before the first Arabic word اسم POP DIRECTIONAL FORMATTING right after the second dot:


Hello, hello. ‫اسمي اندرياس.‬ Hello again.


Note how the dot now conforms to the Arabic visual ordering. This is how it looks in the logical order with the invisible characters explicitly shown:


‭Hello, hello. <202b>اسمي اندرياس.<202c> Hello again.


It is useful to have an editor that actually displays the invisible control characters so that you can see where they are and edit them.

## Combining characters

A class of Unicode characters that are of particular importance for Artists are the *combining characters*. These are characters that a)&nbsl;take up no horizontal space and b) are added to a preceding character. Arabic vowel signs (*fatḥa*, *ḍamma*, *kasra*, etc.) and letter modifications used in linguistic transcription (*ḥ*, *š*, etc.) of this class.

In Unicode, any combining character can be used with any non-combining character (letter) from any script, and there is no limit on the number of characters that can be added to a letter. This means that you can do silly things such as ḍ̣̣͑͑͑, a *d* with three COMBINING LEFT RING ABOVE and three COMBINING DOT BELOW, have an Arabic letter with a bunch of *fatḥa*<!---->s and *kasra*<!---->s, or something more creative: ( ▀ ͜͞ʖ▀)

Combining characters by their nature are not meant to be displayed in isolation, without the letter with which they are combined. For purposes of demonstration you might want to, however. The convention then is to use ◌ DOTTED CIRCLE (U+22CC) as a place holder. So that, for example, you can show a lone *fatḥa* like this:&nbsp;◌َ. 

### Diacritics (*taškīl*)

The combining characters that are used in modern typography (*taškīl*, vowel diacritics) are accessible on the <kbd>Shift</kbd>-layer of standard Arabic keyboard layouts.

### Enclosing marks

Another nice, if somewhat obscure, feature in the Arabic Unicode are the characters used for traditional Arabic typesetting of end of *aya*<!---->s, page numbers, years, etc. These characters are classified in Unicode as *enclosing combining marks* and encase an Arabic number that follow them in the logical order of characters in the file. In other words, enter the one of these characters

- <font face="Amiri">؁</font>&nbsp;U+0601 ARABIC SIGN SANA
- <font face="Amiri">۝</font>&nbsp;U+06DD ARABIC END OF AYAH

and then type Arabic numerals, and they will be enclosed:
 
<font face="Amiri">
؁ ٢٠٢٢ ۝ ٣٤٥  
؁٢٠٢٢ ۝٣٤٥  
</font>

## Quranic orthography

To achieve correct *Quranic* orthography, however, you need to dig a little deeper into the Arabic section of Unicode to access combining characters independently of the keyboard. Most Arabic fonts also lack glyphs for these characters and you may need a specialized or advanced font to display them. The Arabic examples in this section are shown in [Amiri](https://www.amirifont.org/). 

Consider the following two examples:[^hallbergquran]

[^hallbergquran]: For real-life use of these examples, see Hallberg ([2016](https://lup.lub.lu.se/record/8524489), p. 73).

> <font face="Amiri">‮أَنَّ ٱللهَ بَرِىٓءࣱ مِّنَ ٱلۡ‍مشۡرِكِينَ وَرَسُولُهُ</font>
 
> <font face="Amiri">‮إِنَّمَا يَخۡشَى ٱللهَ مِنۡ عِبَادِهِ ٱلۡعُلَمَـٰۤؤُاْ</font>

Note how the *sukūn* does not not have the normal circular form of modern typography but the open form used in the Quran, how the double *ḍamma* in <font face="Amiri">بَرِىٓءࣱ</font> the first quote is two visually separated signs, there is a small *alif* on top of a letter *mīm* and a *madda* on top of that in the word <font face="Amiri">ٱلۡعُلَمَـٰۤؤُاْ</font>. All of these are spare characters in the Unicode inventory that can be inserted via their code points.

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


