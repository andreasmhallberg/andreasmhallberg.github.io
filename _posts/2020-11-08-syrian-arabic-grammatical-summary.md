---
layout: post
title: Syrian Arabic grammatical summary
author: Andreas Hallberg
permalink: /syrian-arabic-grammatical-summary/
document: /documents/2020-11-08-syrian-arabic-grammatical-summary.md.pdf
documenttitle: Syrian Arabic grammatical summary
geometry:
    - a4paper
lang: en
length: long
toc: true
minidoc: /images/syrian-grammatical-summary.minidoc.png
excerpt_separator: <!--excerpt_end-->
excerpt: This is a short pedagogical summary of the variety of Arabic spoken in the Damascus area. It is intended to be used for quick reference for beginner to intermediate language learners and to provide a basic overview of the grammar. It was written as a complement to the Syrian-Arabic material in <i>Al-Kitaab fii Taʿallun al-ʿArabiyya</i> (Brustad et al., Georgetown University Press, 2013) but can be used independently. Parts of it are based on <i>A Reference Grammar of Syrian Arabic</i> (Georgetown University Press, 2005 [1964]), to which the reader is referred for a detailed and comprehensive grammar.
tags:
  - teaching-materials
  - linguistics
updates: 
  - date: 2020-12-29
    contents: Hollow, defective, and doubled verbs added. 
  - date: 2020-12-05
    contents: maan- negation added. Minor readability improvements.
  - date: 2020-11-20
    contents: Corrected spelling in Arabic script for numerals 11-19. Added subheading for auxiliary verbs. 
header-includes:
    - \usepackage[bottom]{footmisc} 
    - \newfontfamily\arabicfont[Script=Arabic]{Lateef}
    - \newfontfamily\arabicfontsf[Script=Arabic]{Lateef}
    - \newfontfamily\arabicfontit[Script=Arabic]{Lateef}
    - \frenchspacing
    - \let\oldlongtable\longtable
    - \let\oldendlongtable\endlongtable
    - \renewenvironment{longtable}{\begin{minipage}{\textwidth}\oldlongtable}{\oldendlongtable\end{minipage}}
    - \renewcommand{\toprule}{\null}
    - \renewcommand{\bottomrule}{\null}
    - \usepackage{ccicons}
    - \usepackage{titleps}
    - \newpagestyle{mystyle}{\sethead{\itshape\today}{}{\thepage}\setfoot{\raisebox{-3cm}{\footnotesize Andreas Hallberg \ccby{} 2020. This document is available for download at \href{http://andreasmhallberg.github.io}{\textit{http://andreasmhallberg.github.io}}.}}{}{}}
    - \pagestyle{mystyle}
---
    
<!--
mv 2020-11-08-syrian-arabic-grammatical-summary.md.pdf ../documents/
-->

*A pdf of this post for pretty printing can be found [here](/documents/2020-11-08-syrian-arabic-grammatical-summary.md.pdf).*

- TOC
{:toc}

```
This grammar is under construction. The
following topics are planned to be added:

- [ ] syllable structure
- [ ] phonology table
- [ ] exclamations(?)
- [ ] imperative
- [ ] dual
- [ ] gender
- [ ] adverbs
- [ ] the possessive exponent 
- [ ] verbal uses of participles
- [x] hollow, defective and doubles verbs
- [x] maa-n- negation
```

# Introduction

This is a short pedagogical summary of the variety of Arabic spoken in the Damascus area. It is intended to be used for quick reference and overview for beginner to intermediate language learners. It was written as a complement to the Syrian-Arabic material in *Al-Kitaab fii Taʿallun al-ʿArabiyya* (Brustad et al., Georgetown University Press, 2013) but can be used independently. Parts of it are based on *A Reference Grammar of Syrian Arabic* (Georgetown University Press, 2005 [1964]), to which the reader is referred for a detailed and comprehensive grammar.

This grammar uses a simplified transcription (see [Phonology](#phonolgy)) adapted from *Alif Baa* (Brustad et al., Georgetown University Press, 2010). Examples in Arabic script represent written vernacular as used in text messaging, advertisement, etc. There is a considerable variation in vernacular orthography, especially in the extent to which Standard Arabic spelling is followed, and forms that differ from those presented here are therefore common.

For corrections or suggestions on improvements, please contact the author.[^email]

[^email]: [*andreas.hallberg@sprak.gu.se*](mailto:andreas.hallberg@sprak.gu.se)

# Phonology {#phonolgy}

## Consonants

|        |                                    |    |        |                                    |
| :-     | :-                                 | :- | :-     | :-                                 |
| *ʾ*    | <span lang="ar" dir="rtl">ء</span> |    | *D*    | <span lang="ar" dir="rtl">ض</span> |
| *b*    | <span lang="ar" dir="rtl">ب</span> |    | *T*    | <span lang="ar" dir="rtl">ط</span> |
| *t*    | <span lang="ar" dir="rtl">ت</span> |    | *(DH)* | <span lang="ar" dir="rtl">ظ</span> |
| *(th)* | <span lang="ar" dir="rtl">ث</span> |    | *ʿ*    | <span lang="ar" dir="rtl">ع</span> |
| *j*    | <span lang="ar" dir="rtl">ج</span> |    | *gh*   | <span lang="ar" dir="rtl">غ</span> |
| *H*    | <span lang="ar" dir="rtl">ح</span> |    | *f*    | <span lang="ar" dir="rtl">ف</span> |
| *kh*   | <span lang="ar" dir="rtl">خ</span> |    | *(q)*  | <span lang="ar" dir="rtl">ق</span> |
| *d*    | <span lang="ar" dir="rtl">د</span> |    | *k*    | <span lang="ar" dir="rtl">ك</span> |
| *(dh)* | <span lang="ar" dir="rtl">ذ</span> |    | *l*    | <span lang="ar" dir="rtl">ل</span> |
| *r*    | <span lang="ar" dir="rtl">ر</span> |    | *m*    | <span lang="ar" dir="rtl">م</span> |
| *z*    | <span lang="ar" dir="rtl">ز</span> |    | *n*    | <span lang="ar" dir="rtl">ن</span> |
| *s*    | <span lang="ar" dir="rtl">س</span> |    | *h*    | <span lang="ar" dir="rtl">ه</span> |
| *sh*   | <span lang="ar" dir="rtl">ش</span> |    | *w*    | <span lang="ar" dir="rtl">و</span> |
| *S*    | <span lang="ar" dir="rtl">ص</span> |    | *y*    | <span lang="ar" dir="rtl">ي</span> |

Phonemes within parenthesis are specific to Standard Arabic and are not part of the Syrian Arabic phonemic system. Their respective letters are, however, commonly used in Syrian-Standard cognates in written vernacular.[^connected]

[^connected]: For the use of connected letter-forms, see [*The Arabic Writing System*](http://andreasmhallberg.github.io/documents/arabic-letters-and-vowel-markers.tex.pdf) (available for download at *<http://andreasmhallberg.github.io/documents/>*).

## Vowels


| Short | Long |                                    |
| :-:   | :-:  | :-:                                |
| *i*   | *ii* | <span lang="ar" dir="rtl">ي</span> |
| *e*   | *ee* | <span lang="ar" dir="rtl">ي</span> |
| *u*   | *uu* | <span lang="ar" dir="rtl">و</span> |
| *o*   | *oo* | <span lang="ar" dir="rtl">و</span> |
| *a*   | *aa* | <span lang="ar" dir="rtl">ا</span> |

Note:

- Only long vowels have an orthographic representation. 

- The short vowels *i* and *u* only occur in word final position as part of inflections (*beet-i* 'my house', *byeʿmal-u* 'they do').

- The vowel here represented as *e* is generally realized as *schwa*&nbsp;[ə].

- There are no diphthongs in Syrian Arabic. The Standard Arabic diphthongs *ay* and *aw* correspond in Syrian Arabic to the long vowels *ee* and *oo* respectively.

## Standard to Syrian Arabic phonemic conversion rules 

These conversion rules represent regular sound relations in Standard–Syrian cognates. Standard Arabic pronunciation is often retained in formal or literary words (*dimuqraaTiyye*) and in non-Syrian Arabic place names (*il-qaahira* ‘Cairo’). Standard Arabic *th* and *dh* are normally realized as *s* and *z* respectively for such words. 

|      |    |       |         |             |    |           |         |                              |             |
| :-   | :- | :-    | :------ | :-          | :- | :-        | :------ | :-                           | :-          |
| *aw* | →  | *oo*  |         | *yawm*      | →  | *yoom*    |         | <span lang="ar" dir="rtl">يوم</span>   | day         |
| *ay* | →  | *ee*  |         | *bayn*      | →  | *been*    |         | <span lang="ar" dir="rtl">بين</span>   | between     |
| *q*  | →  | *ʾ*   |         | *daqiiqa*   | →  | *daʾiiʾa* |         | <span lang="ar" dir="rtl">دقيقة</span> | minute      |
| *DH* | →  | *D*   |         | *DHuhr*     | →  | *Duhr*    |         | <span lang="ar" dir="rtl">ضهر</span>   | noon        |
| *ʾ*  | →  | *ø*   |         | *masaaʾ*    | →  | *masa*    |         | <span lang="ar" dir="rtl">مسا</span>   | eavening    |
| *th* | →  | *t*   |         | *thalaatha* | →  | *tlaate*  |         | <span lang="ar" dir="rtl">تلاتة</span>  | three       |
|      |    | *(s)* |         | *mathalan*  | →  | *masalan* |         | <span lang="ar" dir="rtl">مثلا</span>   | for example |
| *dh* | →  | *d*   |         | *dhahab*    | →  | *dahab*   |         | <span lang="ar" dir="rtl">دهب</span>   | gold        |
|      |    | *(z)* |         | *idha*      | →  | *iza*     |         | <span lang="ar" dir="rtl">اذا</span>   | if          |

# Pronouns 

## Personal pronouns {#personal-pronouns}

|            | Independent | Attached |          |                                        | <span lang="ar" dir="rtl">متصل</span> | <span lang="ar" dir="rtl">منفصل</span> |
| :-         | :-          | :-       | :-       | -:                                     | -:                                    | -:                                     |
| I          | *ana*       | *‑i*     | *(‑ya)*  |                                        | <span lang="ar" dir="rtl">ـي</span>   | <span lang="ar" dir="rtl">انا</span>   |
| you (m.s.) | *enti*      | *‑ak*    | *(‑k)*   |                                        | <span lang="ar" dir="rtl">ـك</span>   | <span lang="ar" dir="rtl">انت</span>   |
| you (f.s.) | *enta*      | *‑ik*    | *(‑ki)*  | <span lang="ar" dir="rtl">(ـكي)</span> | <span lang="ar" dir="rtl">ـك</span>   | <span lang="ar" dir="rtl">انتي</span>  |
| he         | *huwwe*     | *‑o*     | *(‑h)*   | <span lang="ar" dir="rtl">(ـه)</span>  | <span lang="ar" dir="rtl">ـو</span>   | <span lang="ar" dir="rtl">هو</span>    |
| she        | *hiyye*     | *‑a*     | *(‑ha)*  |                                        | <span lang="ar" dir="rtl">ـها</span>  | <span lang="ar" dir="rtl">هي</span>    |
| we         | *neHna*     | *‑na*    |          |                                        | <span lang="ar" dir="rtl">ـنا</span>  | <span lang="ar" dir="rtl">نحنا</span>  |
| you (pl.)  | *intu*      | *‑kon*   |          |                                        | <span lang="ar" dir="rtl">ـكن</span>  | <span lang="ar" dir="rtl">انتو</span>  |
| they       | *honnen*    | *‑on*    | *(‑hon)* | <span lang="ar" dir="rtl">(ـهن)</span> | <span lang="ar" dir="rtl">ـن</span>   | <span lang="ar" dir="rtl">هنن</span>   |


Forms in parenthesis are used with words with final vowel: *aʿTaa-ki* ‘he gave you&nbsp;(f.)’.

Attached pronouns are used for:

|                           |              |                   |
| :-                        | :-           | :-                |
| possession                | *ktaab‑o*    | ‘his book’        |
| prepositional complements | *maʿ‑o*      | ‘with‑him’        |
| direct objects            | *katabt‑o*   | ‘I wrote it’      |
| indirect objects          | *katabt‑l‑o* | ‘I wrote for him’ |

The connective *-l-* ‘for’ for indirect objects may take the form *-el-* to prevent consonant clusters: *katabt‑el‑kon* ‘I wrote for you&nbsp;(pl.)’. A direct object may then be added with the word *yaa-:* *katabt-l-ak yaa-ha* ‘I wrote it&nbsp;(fem.) for you’.

## Demonstrative pronouns

|      | Close       | Distant      | <span lang="ar" dir="rtl">بعيد</span>   | <span lang="ar" dir="rtl">قريب</span> |
| :-   | :-          | :-           | -:                                      | -:                                    |
| m.s. | *haada*     | *hadaak(e)*  | <span lang="ar" dir="rtl">هداك</span>   | <span lang="ar" dir="rtl">هادا</span> |
| f.s  | *haay(e)*   | *hadiik(e)*  | <span lang="ar" dir="rtl">هديك</span>   | <span lang="ar" dir="rtl">هاي</span>  |
| pl.  | *hadool(e)* | *haadooliik* | <span lang="ar" dir="rtl">هدوليك</span> | <span lang="ar" dir="rtl">هدول</span> |

Note:

- Several forms have a stylistic variant with final *e*.

- *haada* has a shortened form, *haad*, used only at the end of phrases: *shuu haad?* ‘What is this?’.

- The distant plural pronoun has several variants not listed above, including *hadook, hadenk*, and *hadenken*.

# Nouns

Nouns are inflected for number and definiteness, and most animate nouns (referring to humans or animals) are also inflected for gender.

## Plural

There are four ways to form plural: *irregular*, *regular masculine*, *regular feminine*, and *general human*:

|                   |           | Singular  | Plural       |        | <span lang="ar" dir="rtl">جمع</span>    | <span lang="ar" dir="rtl">مفرد</span>  |
| :-                | :-        | :-        | :-           | :-     | -:                                      | -:                                     |
| Irrergula         |           | *beet*    | *buyuut*     | house  | <span lang="ar" dir="rtl">بيوت</span>   | <span lang="ar" dir="rtl">بيت</span>   |
| Regular masculine | *‑iin*    | *muslem*  | *muslemiin*  | muslim | <span lang="ar" dir="rtl">مسلمين</span> | <span lang="ar" dir="rtl">مسلم</span>  |
| Regular feminine  | *‑aat*    | *sheghle* | *sheghlaat*  | thing  | <span lang="ar" dir="rtl">شغلات</span>  | <span lang="ar" dir="rtl">شغلة</span>  |
| General human     | *‑(iyy)e* | *ʿeraaqi* | *ʿeraaqiyye* | Iraqi  | <span lang="ar" dir="rtl">عراقية</span> | <span lang="ar" dir="rtl">عراقي</span> |

# Prepositions

|                 |                                             |                 |
| :-              | -:                                          | :-              |
| *ʿa‑*           | <span lang="ar" dir="rtl">ع</span>          | to              |
| *ʿala/ʿalee‑*   | <span lang="ar" dir="rtl">على/عليـ</span>   | on              |
| *ʿand*          | <span lang="ar" dir="rtl">عند</span>        | with, at        |
| *been*          | <span lang="ar" dir="rtl">بين</span>        | between         |
| *been/beenaat‑* | <span lang="ar" dir="rtl">بين/بيناتـ</span> | among           |
| *bi‑/fii‑*      | <span lang="ar" dir="rtl">بـ/فيـ</span>     | in, at          |
| *men*           | <span lang="ar" dir="rtl">من</span>         | from            |
| *Hadd*          | <span lang="ar" dir="rtl">حد</span>         | next to         |
| *fooʾ*          | <span lang="ar" dir="rtl">فوق</span>        | above           |
| *taHt*          | <span lang="ar" dir="rtl">تحت</span>        | below           |
| *maʿ*           | <span lang="ar" dir="rtl">مع</span>         | with            |
| *wara*          | <span lang="ar" dir="rtl">ورا</span>        | behind          |
| *ʾuddaam*       | <span lang="ar" dir="rtl">قدام</span>       | in front of     |
| *la‑/el‑*       | <span lang="ar" dir="rtl">لـ/الـ</span>     | for (ownership) |

For the prepositions with two alternate forms, the first is used with nouns and the second with pronouns:

|             |                                         |                |
| :-          | -:                                      | :-             |
| *bi‑l‑beet* | <span lang="ar" dir="rtl">بالبيت</span> | ‘in the house’ |
| *fii‑h*     | <span lang="ar" dir="rtl">فيه</span>    | ‘in it’        |


# Verbs

## Inflection

|           | Non-past      | Past       | <span lang="ar" dir="rtl">المضارع</span>         | <span lang="ar" dir="rtl">الماضي</span>          |
| :-        | :-            | :-         | -:                                     | -:                                     |
| I         | *e‑ktob*      | *katab‑t*  | <span lang="ar" dir="rtl">اكتب</span>  | <span lang="ar" dir="rtl">كتبت</span>  |
| you (ms.) | *t(e)‑ktob*   | *katab‑t*  | <span lang="ar" dir="rtl">تكتب</span>  | <span lang="ar" dir="rtl">كتبت</span>  |
| you (fs.) | *t(e)‑ktob‑i* | *katab‑ti* | <span lang="ar" dir="rtl">تكتبي</span> | <span lang="ar" dir="rtl">كتبتي</span> |
| he        | *ye‑ktob*     | *katab*    | <span lang="ar" dir="rtl">يكتب</span>  | <span lang="ar" dir="rtl">كتب</span>   |
| she       | *t(e)‑ktob*   | *katab‑et* | <span lang="ar" dir="rtl">تكتب</span>  | <span lang="ar" dir="rtl">كتبت</span>  |
| we        | *n(e)‑ktob*   | *katab‑na* | <span lang="ar" dir="rtl">نكتب</span>  | <span lang="ar" dir="rtl">كتبنا</span> |
| you (pl.) | *t(e)‑ktob‑u*   | *katab‑tu* | <span lang="ar" dir="rtl">تكتبو</span> | <span lang="ar" dir="rtl">كتبتو</span> |
| they      | *ye‑ktob‑u*   | *katab‑u*  | <span lang="ar" dir="rtl">يكتبو</span> | <span lang="ar" dir="rtl">كتبو</span>  |

The pronoun is often omitted. The *e* in parenthesis is omitted on stems beginning with a single consonant *t-shuuf-i* ‘you&nbsp;(fs.) see’.

The non-past verb form is preceded by one of the following:

|                                    |                                        |                        |
| :-                                 | -:                                     | :-                     |
| *b‑*                               | <span lang="ar" dir="rtl">بـ</span>    | habitual, generalities |
| *ʿam*                              | <span lang="ar" dir="rtl">عم</span>    | ongoing (progressive)  |
| *Ha‑/raH*                          | <span lang="ar" dir="rtl">حـ/رح</span> | future                 |
| *laazim*                           | <span lang="ar" dir="rtl">لازم</span>   | ‘have to’              |
| [auxiliary verb](#auxiliary-verbs) |                                        |                        |

Note:

- For 1s, the initial letter *alif*&nbsp;<span lang="ar" dir="rtl">ا</span> is normally omitted when preceded by *b­*: *bektob* <span lang="ar" dir="rtl">بكتب</span>.

- For 1pl. the *b-* prefix is partially assimilated and pronounced as *m:* *mniktib*. This is often reflected in orthography: <span lang="ar" dir="rtl">منكتب</span>.

- Some speakers combine *b-* and *ʿam*: *ʿam b-yektob*.

### Hollow verbs

Hollow verbs have a long vowel in the middle of the stem. They are of three types, each with different middle vowel in non-past tense: 1)&nbsp;*uu*, 2)&nbsp;*ii*, and 3)&nbsp;*aa*. The inflection of the three types does not differ in past tense, where the middle long vowel is invariably *aa*, reduced to *e* in past tense in forms with consonantal suffixes (1s, 2ms, 2mf,1pl, and 2pl).

1. Middle *uu* (*raaH* 'went'):

    |           | Non-Past    | Past      | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
    | :-        | :-          | :-        | -:                                       | -:                                      |
    | I         | *e‑ruuH*    | *reH‑t*    | <span lang="ar" dir="rtl">اروح</span>    | <span lang="ar" dir="rtl">رحت</span>    |
    | you (ms.) | *t‑ruuH*    | *reH‑t*    | <span lang="ar" dir="rtl">تروح</span>    | <span lang="ar" dir="rtl">رحت</span>    |
    | you (fs.) | *t‑ruuH‑i*  | *reH‑ti*  | <span lang="ar" dir="rtl">تروحي</span>   | <span lang="ar" dir="rtl">رحتي</span>   |
    | he        | *ye‑ruuH*   | *raaH*    | <span lang="ar" dir="rtl">يروح</span>    | <span lang="ar" dir="rtl">راح</span>    |
    | she       | *t‑ruuH*    | *raaH‑et* | <span lang="ar" dir="rtl">تروح</span>    | <span lang="ar" dir="rtl">راحت</span>   |
    | we        | *n‑ruuH*    | *reH‑na*  | <span lang="ar" dir="rtl">نروح</span>    | <span lang="ar" dir="rtl">رحا</span>    |
    | you (pl.) | *t‑ruuH‑u*  | *reH‑tu*  | <span lang="ar" dir="rtl">تروحو</span>   | <span lang="ar" dir="rtl">رحتو</span>   |
    | they      | *ye‑ruuH‑u* | *raaH‑u*  | <span lang="ar" dir="rtl">يروحو</span>   | <span lang="ar" dir="rtl">راحو</span>   |

    Some other frequent verbs of this type are: 
    *kaan* 'was',
    *ʾaal* 'said',
    *raaH* 'went',
    *shaaf* 'saw'/'met',
    *ʾaam* 'stood up', and
    *maat* 'died'.


1. Middle *ii* (*Saar* 'became'):

    |           | Non-Past    | Past      | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
    | :-        | :-          | :-        | -:                                       | -:                                      |
    | I         | *e‑Siir*    | *Sert*    | <span lang="ar" dir="rtl">اروح</span>    | <span lang="ar" dir="rtl">رحت</span>    |
    | you (ms.) | *t‑Siir*    | *Sert*    | <span lang="ar" dir="rtl">تروح</span>    | <span lang="ar" dir="rtl">رحت</span>    |
    | you (fs.) | *t‑Siir‑i*  | *Sert‑i*  | <span lang="ar" dir="rtl">تروحي</span>   | <span lang="ar" dir="rtl">رحتي</span>   |
    | he        | *ye‑Siir*   | *Saar*    | <span lang="ar" dir="rtl">يروح</span>    | <span lang="ar" dir="rtl">راح</span>    |
    | she       | *t‑Siir*    | *Saar‑et* | <span lang="ar" dir="rtl">تروح</span>    | <span lang="ar" dir="rtl">راحت</span>   |
    | we        | *n‑Siir*    | *Ser‑na*  | <span lang="ar" dir="rtl">نروح</span>    | <span lang="ar" dir="rtl">رحا</span>    |
    | you (pl.) | *t‑Siir‑u*  | *Ser‑tu*  | <span lang="ar" dir="rtl">تروحو</span>   | <span lang="ar" dir="rtl">رحتو</span>   |
    | they      | *ye‑Siir‑u* | *Saar‑u*  | <span lang="ar" dir="rtl">يروحو</span>   | <span lang="ar" dir="rtl">راحو</span>   |

    Some other frequent verbs of this type are: 
    *ʿaash* 'lived',
    *jaab* 'fetched',
    *baaʿ* 'sold'. and
    *daar* 'turned'.


1. Middle *aa* (*naam* 'slept'):

    |           | Non-Past    | Past      | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
    | :-        | :-          | :-        | -:                                       | -:                                      |
    | I         | *e‑naam*    | *nem‑t*   | <span lang="ar" dir="rtl">انام</span>    | <span lang="ar" dir="rtl">نمت</span>    |
    | you (ms.) | *t‑naam*    | *nem‑t*   | <span lang="ar" dir="rtl">تنام</span>    | <span lang="ar" dir="rtl">نمت</span>    |
    | you (fs.) | *t‑naam‑i*  | *nemt‑i*  | <span lang="ar" dir="rtl">تنامي</span>   | <span lang="ar" dir="rtl">نمتي</span>   |
    | he        | *ye‑naam*   | *naam*    | <span lang="ar" dir="rtl">ينام</span>    | <span lang="ar" dir="rtl">نام</span>    |
    | she       | *t‑naam*    | *naam‑et* | <span lang="ar" dir="rtl">تنام</span>    | <span lang="ar" dir="rtl">نامت</span>   |
    | we        | *n‑naam*    | *nem‑na*  | <span lang="ar" dir="rtl">ننام</span>    | <span lang="ar" dir="rtl">نمنا</span>    |
    | you (pl.) | *t‑naam‑u*  | *nem‑tu*  | <span lang="ar" dir="rtl">تنامو</span>   | <span lang="ar" dir="rtl">نمتو</span>   |
    | they      | *ye‑naam‑u* | *naam‑u*  | <span lang="ar" dir="rtl">ينامو</span>   | <span lang="ar" dir="rtl">نامو</span>   |

    Some other frequent verbs of this type are: 
    *khaaf* 'was frightened' and
    *ghaar* 'was jealous'.

### Defective verbs

Defective verbs have a stem ending in a vowel *i* in non-past tense and *a*/*ee* in past tense. There is only one type of defective verb.

*Haka* 'talked':

|           | Non-Past | Past       | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span>  |
| :-        | :-       | :-         | -:                                       | -:                                       |
| I         | *e‑Hki*  | *Hakee‑t*  | <span lang="ar" dir="rtl">احكي</span>   | <span lang="ar" dir="rtl">حكيت</span>  |
| you (ms.) | *te‑Hki* | *Hakee‑t*  | <span lang="ar" dir="rtl">تحكي</span>   | <span lang="ar" dir="rtl">حكيت</span>  |
| you (fs.) | *te‑Hki* | *Hakee‑ti* | <span lang="ar" dir="rtl">تحكي</span>    | <span lang="ar" dir="rtl">حكيتي</span> |
| he        | *ye‑Hki* | *Haka*     | <span lang="ar" dir="rtl">يحكي</span>    | <span lang="ar" dir="rtl">حكى</span>   |
| she       | *te‑Hki* | *Hak‑et*   | <span lang="ar" dir="rtl">تحكي</span>    | <span lang="ar" dir="rtl">حكت</span>   |
| we        | *ne‑Hki* | *Hakee‑na* | <span lang="ar" dir="rtl">نحكي</span>    | <span lang="ar" dir="rtl">حكينا</span> |
| you (pl.) | *te‑Hk‑u* | *Hakee‑tu* | <span lang="ar" dir="rtl">تحكو</span>   | <span lang="ar" dir="rtl">حكيتو</span> |
| they      | *ye‑Hk‑u* | *Hak‑u*    | <span lang="ar" dir="rtl">يحكو</span>   | <span lang="ar" dir="rtl">حكو</span>   |

Some other frequent verbs of this type are:
*masha* 'walked',
*ʿaTa* 'gave', and
*shtara* 'baught'.

### Doubled verbs

Doubled verbs have a stem ending in a lengthened (doubled) consonant. In past tense forms with consonantal suffixes, *ee* is added.

*Hass* 'felt':

|           | Non-Past    | Past        | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
| :-        | :-          | :-          | -:                                       | -:                                      |
| I         | *e‑Hess*    | *Hassee‑t*  | <span lang="ar" dir="rtl">احس</span>     | <span lang="ar" dir="rtl">حسيت</span>   |
| you (ms.) | *t‑Hess*    | *Hassee‑t*  | <span lang="ar" dir="rtl">تحسي</span>    | <span lang="ar" dir="rtl">حسيت</span>   |
| you (fs.) | *t‑Hess‑i*  | *Hassee‑ti* | <span lang="ar" dir="rtl">تحس</span>     | <span lang="ar" dir="rtl">حسيتي</span>  |
| he        | *y‑Hess*    | *Hass*      | <span lang="ar" dir="rtl">يحس</span>     | <span lang="ar" dir="rtl">حس</span>     |
| she       | *t‑Hess*    | *Hass‑et*   | <span lang="ar" dir="rtl">تحس</span>     | <span lang="ar" dir="rtl">حست</span>    |
| we        | *n‑Hess*    | *Hassee‑na* | <span lang="ar" dir="rtl">نحس</span>     | <span lang="ar" dir="rtl">حسينا</span>  |
| you (pl.) | *t‑Hess‑u*  | *Hassee‑tu* | <span lang="ar" dir="rtl">تحسو</span>    | <span lang="ar" dir="rtl">حسيتو</span>  |
| they      | *ye‑Hess‑u* | *Hass‑u*    | <span lang="ar" dir="rtl">يحسو</span>     | <span lang="ar" dir="rtl">حسو</span>    |

Some other frequent verbs of this type are:
*radd* 'answered' and
*Dall* 'remained'.

## Auxiliary verbs

The main verb may be preceded by an auxiliary verb. Both the auxiliary and the main verb are inflected for person:

|                  |                                            |                     |
| :-               | -:                                         | :-                  |
| *beddo yektob*   | <span lang="ar" dir="rtl">بدو يكتب</span>  | ‘he wants to write’ |
| *byeHebb yektob* | <span lang="ar" dir="rtl">بيحب يكتب</span> | ‘he likes to write’ |
| *kaan yektob*    | <span lang="ar" dir="rtl">كان يكتب</span>  | ‘he was writing’    |
| *Saar yektob*    | <span lang="ar" dir="rtl">صار يكتب</span>  | ‘he began to write’ |

## *kaan* 'was'

The verb *kaan* 'was' is used

1.  to make a verb-less clause past or future tense:

    |                          |                           |
    | :-                       | :-                        |
    | *aHmed kaan Taaleb*      | ‘Ahmad was a student’     |
    | *aHmed Ha‑yekuun Taaleb* | ‘Ahmad will be a student’ |

2.  to express a past ongoing (progressive) event:

    |                           |                      |
    | :-                        | :-                   |
    | *aHmed kaan (ʿam) yedros* | ‘Ahmed was studying’ |

It is a [hollow verb with middle *uu*](#hollow-verbs) in non-past tense:

|           | Non-past    | Past      | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
| :-        | :-          | :-        | -:                                       | -:                                      |
| I         | *e‑kuun*    | *ken‑t*   | <span lang="ar" dir="rtl">اكون</span>    | <span lang="ar" dir="rtl">كنت</span>    |
| you (ms.) | *t‑kuun*    | *ken‑t*   | <span lang="ar" dir="rtl">تكون</span>    | <span lang="ar" dir="rtl">كنت</span>    |
| you (fs.) | *t‑kuun‑i*  | *kent‑i*  | <span lang="ar" dir="rtl">تكوني</span>   | <span lang="ar" dir="rtl">كنتي</span>   |
| he        | *ye‑kuun*   | *kaan*    | <span lang="ar" dir="rtl">يكون</span>    | <span lang="ar" dir="rtl">كان</span>    |
| she       | *t‑kuun*    | *kaan‑et* | <span lang="ar" dir="rtl">تكون</span>    | <span lang="ar" dir="rtl">كانت</span>   |
| we        | *n‑kuun*    | *ken‑na*  | <span lang="ar" dir="rtl">نكون</span>    | <span lang="ar" dir="rtl">كنا</span>    |
| you (pl.) | *t‑kuun‑u*  | *ken‑tu*  | <span lang="ar" dir="rtl">تكونو</span>   | <span lang="ar" dir="rtl">كنتو</span>   |
| they      | *ye‑kuun‑u* | *kaan‑u*  | <span lang="ar" dir="rtl">يكونو</span>   | <span lang="ar" dir="rtl">كانو</span>   |




## Pseudo-verbs

|         |                                      |            |
| :-      | -:                                   | :-         |
| *bedd‑* | <span lang="ar" dir="rtl">بد</span>  | ‘want’     |
| *ʿand‑* | <span lang="ar" dir="rtl">عند</span> | ‘has’      |
| *fii*   | <span lang="ar" dir="rtl">في</span>  | ‘there is’ |


The pseudo-verbs are negated as verbs with *maa* (see [Negation](#negation)) but do not follow
verbal person and tense inflection. *bedd‑* and *ʿand-* are inflected
for person with attached pronouns, like nouns, while *fii* is not
inflected:

|                |                                             |                                            |
| :-             | :-                                          | :-                                         |
| *bedd-a ktaab* | <span lang="ar" dir="rtl">بدها كتاب</span>  | ‘she wants a book’  [‘her wish is a book’] |
| *ʿand-a ktaab* | <span lang="ar" dir="rtl">عندها كتاب</span> | ‘she has a book’ [‘with her is a book’]    |
| *fii ktaab*    | <span lang="ar" dir="rtl">في كتاب</span>    | ‘there is a book’                          |

Pseudo-verbs are inflected for tense with an auxiliary *kaan*:

|                          |                                                   |                         |
| :-                       | :-                                                | :-                      |
| *kaan ʿand-a ktaab*      | <span lang="ar" dir="rtl">كان عندها كتاب</span>   | ‘She had a book’.       |
| *Ha-yekuun ʿand-a ktaab* | <span lang="ar" dir="rtl">حيكون عندها كتاب</span> | ‘She will have a book’. |

# Question words

|               |                                           |            |
| :-            | -:                                        | :-         |
| *shuu*        | <span lang="ar" dir="rtl">شو</span>       | what       |
| *miin*        | <span lang="ar" dir="rtl">مين</span>      | who        |
| *eemta*       | <span lang="ar" dir="rtl">ايمتى</span>    | when       |
| *kiif/shloon* | <span lang="ar" dir="rtl">كيف/شلون</span> | how        |
| *ween*        | <span lang="ar" dir="rtl">وين</span>      | where      |
| *minnen*      | <span lang="ar" dir="rtl">منين</span>     | from where |
| *laween*      | <span lang="ar" dir="rtl">لوين</span>     | whereto    |
| *leesh*       | <span lang="ar" dir="rtl">ليش</span>      | why        |
| *addeesh*     | <span lang="ar" dir="rtl">قديش</span>     | how much   |
| *kam*         | <span lang="ar" dir="rtl">كم</span>       | how many   |
| *ayyi/anu*    | <span lang="ar" dir="rtl">اي/انو</span>   | which      |
  
Question words are normally clause-inital, and may be preceded by a preposition:

|                       |                           |
| :-                    | -:                        |
| *maʿ miin ʿam teHki?* | ‘Who are you talking to?’ |

*Ween* and *kiif* take attached pronouns:

|            |                                        |                  |
| :-         | -:                                     | :-               |
| *ween-ak?* | <span lang="ar" dir="rtl">وينك؟</span> | ‘Where are you?’ |
| *kiif-ak?* | <span lang="ar" dir="rtl">كيفك؟</span> | ‘How are you?’   |

Yes/no-question are formed with rising intonation.

# Negation {#negation}

|       |                                     |                    |
| :-    | -:                                  | :-                 |
| *maa* | <span lang="ar" dir="rtl">ما</span> | verbs              |
| *muu* | <span lang="ar" dir="rtl">مو</span> | non-verbal clauses |
| *laa* | <span lang="ar" dir="rtl">لا</span>  | imperative         |

For declarative clauses, in effect, *muu* is used to negate verbless clauses in
present tense, otherwise the negation *maa* is used:

|         | Verbal clause                                       | Verbless ("is") clause                                   |
| :-      | :-                                                  | :-                                                       |
|         | 'Ahmed is studying.'                                | 'Ahmed is a student.'                                    |
| Past    | *aHmed* ***maa*** *daras*                           | *aHmed* ***maa*** *kaan Taaleb*                          |
|         | <span lang="ar" dir="rtl">أحمد ما درس</span>        | <span lang="ar" dir="rtl">أحمد ما كان طالب</span>        |
| Present | *aHmed* ***maa*** *byedrus*                         | *aHmed* ***muu*** *Taaleb*                               |
|         | <span lang="ar" dir="rtl">أحمد ما بيدرس</span>      | <span lang="ar" dir="rtl">أحمد مو طالب</span>            |
| Future  | *aHmed* ***maa*** *Ha‑/raH* *yedrus*                | *aHmed* ***maa*** *Ha‑/raH yekuun Taaleb*                |
|         | <span lang="ar" dir="rtl">أحمد ما حـ/رح يدرس</span> | <span lang="ar" dir="rtl">أحمد ما حـ/رح يكين طالب</span> |

## *maa-n-*

*maa‑* followed by a connecting *‑n‑* and an [attached pronoun](#personal-pronouns) (*maan‑i, maan‑ak, maan‑ik,* etc.) may be used to reply in the negative to a statement, question, or implication. For example,

|                  |                                             |                   |
| :-               | -:                                          | :-                |
| *maa‑n‑i juʿaan* | <span lang="ar" dir="rtl">ماني جوعان</span> | 'I am not hungry' |

can be used to answer someone saying that you are hungry, asking whether you are hungry, or urging you to eat.

# Numerals 1--100


|     | Independent                  | Counting       | <span lang="ar" dir="rtl">مضاف</span>     | <span lang="ar" dir="rtl">غير مضاف</span>    |
| :-  | :-                           | :-             | -:                                        | -:                                           |
| 1   | *waaHed* (m.)/*waHde* (f.)   |                |                                           | <span lang="ar" dir="rtl">واحد/وحدة</span>   |
| 2   | *etneen* (m.)/*tenteen* (f.) |                |                                           | <span lang="ar" dir="rtl">اتنين/تنتين</span> |
|     |                              |                |                                           |                                              |
| 3   | *tlaate*                     | *tlatt*        | <span lang="ar" dir="rtl">تلات</span>      | <span lang="ar" dir="rtl">تلاتة</span>        |
| 4   | *arbaʿa*                     | *arbaʿ*        | <span lang="ar" dir="rtl">أربع</span>     | <span lang="ar" dir="rtl">أربعة</span>       |
| 5   | *khamse*                     | *khams*        | <span lang="ar" dir="rtl">خمس</span>      | <span lang="ar" dir="rtl">خمسة</span>        |
| 6   | *sette*                      | *sett*         | <span lang="ar" dir="rtl">ست</span>       | <span lang="ar" dir="rtl">ستة</span>         |
| 7   | *sabʿa*                      | *sabʿ*         | <span lang="ar" dir="rtl">سبع</span>      | <span lang="ar" dir="rtl">سبعة</span>        |
| 8   | *tmaane*                     | *tman*         | <span lang="ar" dir="rtl">تمان</span>     | <span lang="ar" dir="rtl">تمانة</span>       |
| 9   | *tesʿa*                      | *tesʿ*         | <span lang="ar" dir="rtl">تسع</span>      | <span lang="ar" dir="rtl">تسعة</span>        |
| 10  | *ʿashara*                    | *ʿashar*       | <span lang="ar" dir="rtl">عشر</span>      | <span lang="ar" dir="rtl">عشرة</span>        |
|     |                              |                |                                           |                                              |
| 11  | *eddaʿsh*                    | *eddaʿshar*    | <span lang="ar" dir="rtl">ادعشر</span>    | <span lang="ar" dir="rtl">ادعش</span>        |
| 12  | *eTnaʿsh*                    | *eTnaʿshar*    | <span lang="ar" dir="rtl">اطنعشر</span>   | <span lang="ar" dir="rtl">اطنعش</span>       |
| 13  | *tlaTaʿsh*                   | *tlaTaʿshar*   | <span lang="ar" dir="rtl">تلاطعشر</span>   | <span lang="ar" dir="rtl">تلاطعش</span>       |
| 14  | *arbaʿTaʿsh*                 | *arbaʿTaʿshar* | <span lang="ar" dir="rtl">اربعطعشر</span> | <span lang="ar" dir="rtl">اربعطعش</span>     |
| 15  | *khamasTaʿsh*                | *khamsTaʿshar* | <span lang="ar" dir="rtl">خمسطعشر</span>  | <span lang="ar" dir="rtl">خمسطعش</span>      |
| 16  | *seTTaʿsh*                   | *seTTaʿshar*   | <span lang="ar" dir="rtl">سطعشر</span>    | <span lang="ar" dir="rtl">سطعش</span>        |
| 17  | *sabʿaTaʿsh*                 | *sabʿaTaʿshar* | <span lang="ar" dir="rtl">سبعطعشر</span>  | <span lang="ar" dir="rtl">سبعطعش</span>      |
| 18  | *tmanTaʿsh*                  | *tmanTaʿshar*  | <span lang="ar" dir="rtl">تماطعشر</span>  | <span lang="ar" dir="rtl">تماطعش</span>      |
| 19  | *tesʿaTaʿsh*                 | *tesʿaTaʿshar* | <span lang="ar" dir="rtl">تسعطعشر</span>  | <span lang="ar" dir="rtl">تسعطعش</span>      |
|     |                              |                |                                           |                                              |
| 20  | *ʿeshriin*                   |                |                                           | <span lang="ar" dir="rtl">عشرين</span>       |
| 30  | *tlaatiin*                   |                |                                           | <span lang="ar" dir="rtl">تلاتين</span>       |
| 40  | *arbaʿiin*                   |                |                                           | <span lang="ar" dir="rtl">اربعين</span>      |
| 50  | *khamsiin*                   |                |                                           | <span lang="ar" dir="rtl">خمسين</span>       |
| 60  | *settiin*                    |                |                                           | <span lang="ar" dir="rtl">ستين</span>        |
| 70  | *sabʿiin*                    |                |                                           | <span lang="ar" dir="rtl">سبعين</span>       |
| 80  | *tmaaniin*                   |                |                                           | <span lang="ar" dir="rtl">تمانين</span>      |
| 90  | *tesʿiin*                    |                |                                           | <span lang="ar" dir="rtl">يسعين</span>       |
|     |                              |                |                                           |                                              |
| 100 | *miyye*                      | *miit*         |                                           | <span lang="ar" dir="rtl">مية</span>         |


The *independent* form of the numeral is used when it stands by itself and is not followed by a noun. The *counting* form is when the numeral is followed by counted a noun: *tlaate* 'three', but *tlatt ewlaad* ‘three boys.’

Note:

- 1--2 are used only for emphasis or contrast, or when ordering in restaurants and the like (*itneen shaay* ‘two tea’). Otherwise, the lone noun in singular or dual is used (*ktaab* '[a/one] book'; *ktabeen* 'two books'). 1 and 2 are the only numerals that inflect for gender.

- 3--10 have a special form with a final *-t* when used with one of three following nouns:

  |          |             |                                   |
  | :-       | :-          | :-                                |
  | *eyyaam* | ’days’      | (*khamst eyyam* ’five days’)      |
  | *eshhur* | ’months’    | (*khamst eshhur* 'five months')   |
  | *aalaaf* | ’thousands’ | (*ʿashart aalaaf* 'ten thousand') |

- For 3–10, the counted noun is in the plural: *tlatt kutub* 'three books', and for numerals above 10, it is in the singular: *iddaʿashar ktaab* ‘eleven book\[s\]’.

- 11—19 are constructed from the counting form of the unit number and the ending *‑Taʿsh*, with irregularites in 11, 12, and 15.

- Decades (20, 30, etc.) are constructed from the counting form of the unit numer and the ending *‑iin*, with only 20 having an irregular form. In complex numbers, the unit in independent form appears before the decades with the two parts connected with *u‑* 'and': *sabʿa u‑tlaatiin*, ‘thirty‑six’.

- For numbers above one hundred there is no counting form for 100: *miyye u‑tlaate kelime* ‘103&nbsp;words’.
