---
layout: post
title: Syrian Arabic grammatical summary
author: Andreas Hallberg
permalink: /syrian-arabic-grammatical-summary/
document: /documents/2020-11-08-syrian-arabic-grammatical-summary.md.pdf
documenttitle: Syrian Arabic grammatical summary
mainfont: Linux Libertine O
geometry:
    - a4paper
lang: en
length: long
toc: true
minidoc: /images/syrian-grammatical-summary.minidoc.png
excerpt_separator: <!--excerpt_end-->
excerpt: This is a short pedagogical summary of the variety of Arabic spoken in the Damascus area in Syria. It is intended to be used for quick reference and overview for beginner to intermediate language learners. It is partially based on <i>A Reference Grammar of Syrian Arabic</i> (Cowell 2005 [1964], Georgetown University Press) and <i>Arabisch-syrische grammatik</i> (Grotzfeld 1965, Harrassowitz), to which the reader is referred for detailed and comprehensive grammatical descriptions.
tags:
  - teaching-materials
  - linguistics
updates: 
  - date: 2021-01-18
    contents: Phonology section expanded considerably.
  - date: 2021-01-03
    contents: 'Presentation order standardized: translation, transcription, Arabic. Indefinite pronouns added. Various minor additions and edits.'
  - date: 2020-12-29
    contents: Hollow and doubled verbs added. 
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
    - \newpagestyle{mystyle}{\sethead{\itshape\today}{}{\thepage}\setfoot{\raisebox{-3cm}{\footnotesize Andreas Hallberg \ccby{} 2020, 2021. This document is available for download at \href{http://andreasmhallberg.github.io}{\textit{http://andreasmhallberg.github.io}}.}}{}{}}
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

- syllable structure
- exclamations(?)
- imperative
- dual
- gender
- adverbs
- the possessive exponent 
- participles
- verbal noun
```

# Introduction

This is a short pedagogical summary of the variety of Arabic spoken in the Damascus area in Syria. It is intended to be used for quick reference and overview for beginner to intermediate language learners. It is partially based on *A Reference Grammar of Syrian Arabic* (Cowell 2005 [1964], Georgetown University Press) and *Arabisch-syrische grammatik* (Grotzfeld 1965, Harrasowitz), to which the reader is referred for detailed and comprehensive grammatical descriptions.

This grammar uses a simplified transcription (see [Phonology](#phonolgy)) adapted from *Alif Baa* (Brustad et al., Georgetown University Press, 2010). Words and examples are presented in transcription, translation, and, space permitting, also in Arabic script.[^connected] The Arabic script represents written vernacular as used in text messaging, advertisement, etc. There is considerable variation in vernacular Arabic orthography, especially in the extent to which Standard Arabic spelling is followed, and forms that differ from those presented here are therefore common.

[^connected]: For an overview of the Arabic script, see [*The Arabic Writing System*](http://andreasmhallberg.github.io/documents/arabic-letters-and-vowel-markers.tex.pdf) (available for download at *<http://andreasmhallberg.github.io/documents/>*).

For corrections or suggestions on improvements, please contact the author at [*andreas.hallberg@sprak.gu.se*](mailto:andreas.hallberg@sprak.gu.se).

# Phonology {#phonolgy}

Many of the IPA symbols in square brackets are hyper-linked to sound samples on Wikimedia. Click on them to hear an example of the pronunciation.

## Consonants

Compared to Standard Arabic, several consonants are missing in Syrian Arabic, namely the dentals
*th*&nbsp;<span lang="ar" dir="rtl">ث</span>,
*dh*&nbsp;<span lang="ar" dir="rtl">ذ</span>, and
*DH*&nbsp;<span lang="ar" dir="rtl">ظ</span>; as well as
*q*&nbsp;<span lang="ar" dir="rtl">ق</span>.
Furthermore, *j*&nbsp;<span lang="ar" dir="rtl">ج</span> is in Syrian Arabic pronounced&nbsp;[[ʒ]](https://upload.wikimedia.org/wikipedia/commons/3/30/Voiced_palato-alveolar_sibilant.ogg), as opposed to the Standard Arabic affricate&nbsp;[[ʤ]](https://upload.wikimedia.org/wikipedia/commons/e/e6/Voiced_palato-alveolar_affricate.ogg).

| &nbsp;           | Labial | Alveolar | Palatal | Velar/Uvular | Pharyngal | Glottal |
| :-               | :-:    | :-:      | :-:     | :-:          | :-:       | :-:     |
| Fricative        |        |          |         |              |           |         |
|   --- *voiced*    |        |          | *j*     | *gh*         | *ʿ*       |         |
|   --- *voiceless* | *f*    |          |         | *kh*         | *H*       | *h*     |
| Plosive          |        |          |         |              |           |         |
|   --- *voiced*    | *b*    | *d, D*   |         |              |           |         |
|   --- *voiceless* |        | *t, T*   | *k*     |              |           | *ʾ*     |
| Lateral          |        | *l*      |         |              |           |         |
| Trill            |        | *r*      |         |              |           |         |
| Nasal            | *m*    | *n*      |         |              |           |         |
| Sibilant         |        |          |         |              |           |         |
|   --- *voiced*     |        | *z*      |         |              |           |         |
|   --- *voiceless*  |        | *s, S*   |         |              |           |         |
| Semi-vowel       | *w*    |          | *y*     |              |           |         |

The following consonants are used only in a few words:

- emphatic *m* (*maamaa* 'mum')
- emphatic *b* (*baaba* 'dad')
- emphatic *l* (*alla* 'God')
- *g* (*ergiile* 'water pipe')

The emphasis distinction in *m*, *b*, and *l* is not reflected in the transcription employed here.

### Pointers on pronunciation {#pointers-pron}

|      |                         |                                                                                                                                                                                    |                                                                                                                                                                                        |
| :-:  | :-:                     | :-                                                                                                                                                                                 | :-------------------------------                                                                                                                                                                                    |
| *r*  | <span lang="ar">ر</span> | [[r]](https://upload.wikimedia.org/wikipedia/commons/c/ce/Alveolar_trill.ogg)                                                                                                      | Rolled *r*, as in Spanish. Pronounced emphatically [rˤ] when adjacent to *a* or another emphatic consonant (*mara* 'wife', *rSaas* 'led').                                             |
| *j*  | <span lang="ar">ج</span> | [[ʒ]](https://upload.wikimedia.org/wikipedia/commons/3/30/Voiced_palato-alveolar_sibilant.ogg)                                                                                     | As in French *journal*.                                                                                                                                                                |
| *H*  | <span lang="ar">ح</span> | [[ħ]](https://upload.wikimedia.org/wikipedia/commons/b/b2/Voiceless_pharyngeal_fricative.ogg)                                                                                      | Hissing *h* formed by tensioning the throat.                                                                                                                                           |
| *kh* | <span lang="ar">خ</span> | [[x]](https://upload.wikimedia.org/wikipedia/commons/0/0f/Voiceless_velar_fricative.ogg)/[[χ]](https://upload.wikimedia.org/wikipedia/commons/c/c8/Voiceless_uvular_fricative.ogg) | As the German *ach* or (Castilian) Spanish *jota*.                                                                                                                                     |
| *gh* | <span lang="ar">غ</span> | [[ɣ]](https://upload.wikimedia.org/wikipedia/commons/4/47/Voiced_velar_fricative.ogg)/[[ʁ]](https://upload.wikimedia.org/wikipedia/commons/a/af/Voiced_uvular_fricative.ogg)       | As the French or German throaty *r*.                                                                                                                                                   |
| *ʿ*  | <span lang="ar">ع</span> | [[ʕ]](https://upload.wikimedia.org/wikipedia/commons/c/cd/Voiced_pharyngeal_fricative.ogg)                                                                                         | Produced by using swolloing muscles to restrict the air flow. It is one of the most difficult sounds for language learners to produce. Learners often wrongly percieved as a vowel *a*. |
| *ʾ*  | <span lang="ar">ء</span> | [[ʔ]](https://upload.wikimedia.org/wikipedia/commons/4/4d/Glottal_stop.ogg)                                                                                                        | A stop and quick release of the air pressure by the vocal-cords, as the *t* in colloquial British *better*.                                                                              |
| *S*  | <span lang="ar">ص</span> | [[sˤ]](https://upload.wikimedia.org/wikipedia/commons/8/8b/Voiceless_pharyngealized_alveolar_sibilant.ogg)                                                                         | Emphatic *s*.                                                                                                                                                                          |
| *D*  | <span lang="ar">ض</span> | [[dˤ]](https://upload.wikimedia.org/wikipedia/commons/0/07/Voiced_pharyngealized_alveolar_stop.ogg)                                                                                | Emphatic *d*.                                                                                                                                                                          |
| *T*  | <span lang="ar">ط</span> | [[tˤ]](https://upload.wikimedia.org/wikipedia/commons/4/4c/Voiceless_pharyngealized_alveolar_stop.ogg)                                                                             | Emphatic *t*.                                                                                                                                                                           |

### Emphatic consonants

Emphatic consonants (technically "pharyngalized") are pronounced as their non-emphatic equivalents but with the back of the tongue raised, giving a darker, thicker sound. This affects the quality of surrounding vowels, most clearly heard in *aa*&nbsp;[[æː]](https://upload.wikimedia.org/wikipedia/commons/c/c9/Near-open_front_unrounded_vowel.ogg) (as English *bad*) becoming a backed&nbsp;[[ɑː]](https://upload.wikimedia.org/wikipedia/commons/e/e5/Open_back_unrounded_vowel.ogg) (as in English *far*).

### Consonant length

All consonants have a short and a long variant. The long variant is transcribed as a doubled letter. Consonant length is a central part of Arabic phonology, often changing the meaning of a word (*daras* 'he studied' vs. *darras* 'he taught', *Hakat* 'she talked' vs. *Hakkat* 'she scratched').

For plosives (*ʾ, b, d, D, t, T, k*) the long variant is produced by briefly holding the air pressure before releasing it and producing the sound.

Consonant length is not indicated in the Arabic script. Only very rarely is it marked with the diacritic&nbsp;<span lang="ar" dir="rtl">ـّ</span> (*shadda*).

## Vowels

| Short |         | Long |                                                                                                 |                                    |
| :-:   | :-      | :-:  | :-                                                                                              | -:                                 |
| *i*   | [i]     | *ii* | [[iː]](https://upload.wikimedia.org/wikipedia/commons/9/91/Close_front_unrounded_vowel.ogg)     | <span lang="ar" dir="rtl">ي</span> |
| *e*   | [e]/[ə] | *ee* | [[eː]](https://upload.wikimedia.org/wikipedia/commons/6/6c/Close-mid_front_unrounded_vowel.ogg) | <span lang="ar" dir="rtl">ي</span> |
| *u*   | [u]     | *uu* | [[uː]](https://upload.wikimedia.org/wikipedia/commons/5/5d/Close_back_rounded_vowel.ogg)        | <span lang="ar" dir="rtl">و</span> |
| *o*   | [o]     | *oo* | [[oː]](https://upload.wikimedia.org/wikipedia/commons/0/0e/PR-open_front_unrounded_vowel.ogg)   | <span lang="ar" dir="rtl">و</span> |
| *a*   | [a]/[ɑ] | *aa* | [[æː]](https://upload.wikimedia.org/wikipedia/commons/c/c9/Near-open_front_unrounded_vowel.ogg)/[[ɑː]](https://upload.wikimedia.org/wikipedia/commons/e/e5/open_back_unrounded_vowel.ogg) | <span lang="ar" dir="rtl">ا</span> |

Note:

- The Arabic letters only represent long vowels. Short vowels are not indicated.

- *i* and *u* occur primarily in word final position as part of inflections (*beet-i* 'my house', *byeʿmel-u* 'they do').

- The vowel here transcribes as *e* is pronounced

  - [[ə]](https://upload.wikimedia.org/wikipedia/commons/d/d9/Mid-central_vowel.ogg)&nbsp;*schwa* (as in English *the*) before or at word stress
  - [[e]](https://upload.wikimedia.org/wikipedia/commons/6/6c/Close-mid_front_unrounded_vowel.ogg) (as in English *when*) after word stress

- Short and long *a* is pronounced backed&nbsp;[[ɑ]](https://upload.wikimedia.org/wikipedia/commons/e/e5/open_back_unrounded_vowel.ogg) when adjacent to an emphatic consonant.

- There are no diphthongs in Syrian Arabic. The Standard Arabic diphthongs *ay* and *aw* correspond in Syrian Arabic to the long vowels *ee* and *oo* respectively.

## Word stress

Word stress in Syrian Arabic is largely predictable and corresponds with the rules of word stress in Standard Arabic. Word stress occurs on

- the last
  - long vowel followed by consonant (*darasúuna*)
  - short vowel followed by two consonants or a long consonant (*darásna*, *byedárres*) 
- or else on the first vowel (*dárasu*), excluding any prefix.

## Standard to Syrian Arabic phonological conversion rules {#sa-conversion}

|      |    |       |         |             |    |           |         |              |                                       |
| :-   | :- | :-    | :------ | :-          | :- | :-        | :------ |  :-          |:-                                     |
| *aw* | →  | *oo*  |         | *yawm*      | →  | *yoom*    |         |  day         |<span lang="ar" dir="rtl">يوم</span>   |
| *ay* | →  | *ee*  |         | *bayn*      | →  | *been*    |         |  between     |<span lang="ar" dir="rtl">بين</span>   |
| *q*  | →  | *ʾ*   |         | *daqiiqa*   | →  | *daʾiiʾa* |         |  minute      |<span lang="ar" dir="rtl">دقيقة</span> |
| *DH* | →  | *D*   |         | *DHuhr*     | →  | *Duhr*    |         |  noon        |<span lang="ar" dir="rtl">ضهر</span>   |
| *ʾ*  | →  | *ø*   |         | *masaaʾ*    | →  | *masa*    |         |  eavening    |<span lang="ar" dir="rtl">مسا</span>   |
| *th* | →  | *t*   |         | *thalaatha* | →  | *tlaate*  |         |  three       |<span lang="ar" dir="rtl">تلاتة</span>  |
|      |    | *(s)* |         | *mathalan*  | →  | *masalan* |         |  for example |<span lang="ar" dir="rtl">مثلا</span>   |
| *dh* | →  | *d*   |         | *dhahab*    | →  | *dahab*   |         |  gold        |<span lang="ar" dir="rtl">دهب</span>   |
|      |    | *(z)* |         | *idha*      | →  | *iza*     |         |  if          |<span lang="ar" dir="rtl">اذا</span>   |

Loans from Standard Arabic, including foreign Arabic place names, often retain the Standard Arabic pronunciation. In such words, *th* and *dh* are pronounced *s* and&nbsp;*z* respectively. Some examples are:

| Syrian Arabic   | Standard Arabic  |           |                                            |
| :-              | :-              | :-        | -:                                         |
| *saqaafe*       | *thaqaafa*      | culture   | <span lang="ar" dir="rtl">ثقافة</span>     |
| *ustaaz*        | *ustaadh*       | teacher   | <span lang="ar" dir="rtl">أستاذ</span>     |
| *demuqraaTiyye* | *dimuqraaTiyya* | democracy | <span lang="ar" dir="rtl">ديمقراطية</span> |
| *el-qurʾaan*    | *al-qurʾaan*    | the Quran | <span lang="ar" dir="rtl">القرآن</span>    |
| *el-qaahira*    | *al-qaahira*    | Cairo     | <span lang="ar" dir="rtl">القاهرة</span>   |

# Pronouns 

## Personal pronouns {#personal-pronouns}

|            | Independent | Attached |          |                                        | <span lang="ar" dir="rtl">متصل</span> | <span lang="ar" dir="rtl">منفصل</span> |
| :-         | :-          | :-       | :-       | -:                                     | -:                                    | -:                                     |
| I          | *ana*       | *‑i*     | *(‑ya)*  |                                        | <span lang="ar" dir="rtl">ـي</span>   | <span lang="ar" dir="rtl">انا</span>   |
| you (m.s.) | *enta*      | *‑ak*    | *(‑k)*   |                                        | <span lang="ar" dir="rtl">ـك</span>   | <span lang="ar" dir="rtl">انت</span>   |
| you (f.s.) | *enti*      | *‑ik*    | *(‑ki)*  | <span lang="ar" dir="rtl">(ـكي)</span> | <span lang="ar" dir="rtl">ـك</span>   | <span lang="ar" dir="rtl">انتي</span>  |
| he         | *huwwe*     | *‑o*     | *(‑h)*   | <span lang="ar" dir="rtl">(ـه)</span>  | <span lang="ar" dir="rtl">ـو</span>   | <span lang="ar" dir="rtl">هو</span>    |
| she        | *hiyye*     | *‑a*     | *(‑ha)*  |                                        | <span lang="ar" dir="rtl">ـها</span>  | <span lang="ar" dir="rtl">هي</span>    |
| we         | *neHna*     | *‑na*    |          |                                        | <span lang="ar" dir="rtl">ـنا</span>  | <span lang="ar" dir="rtl">نحنا</span>  |
| you (pl.)  | *intu*      | *‑kon*   |          |                                        | <span lang="ar" dir="rtl">ـكن</span>  | <span lang="ar" dir="rtl">انتو</span>  |
| they       | *honnen*    | *‑on*    | *(‑hon)* | <span lang="ar" dir="rtl">(ـهن)</span> | <span lang="ar" dir="rtl">ـن</span>   | <span lang="ar" dir="rtl">هنن</span>   |


Forms in parenthesis are used with words with final vowel: *aʿTaa-ki* ‘he gave you&nbsp;(f.)’.

Attached pronouns are used for:

|                           |              |                 |                                         |
| :-                        | :-           | :-              | -:                                      |
| possession                | *ktaab‑o*    | his book        | <span lang="ar" dir="rtl">كتابو</span>  |
| prepositional complements | *maʿ‑o*      | with‑him        | <span lang="ar" dir="rtl">معو</span>    |
| direct objects            | *katabt‑o*   | I wrote it      | <span lang="ar" dir="rtl">كتبتو</span>  |
| indirect objects          | *katabt‑l‑o* | I wrote for him | <span lang="ar" dir="rtl">كتبتلو</span> |

The connective *-l-* ‘for’ for indirect objects may take the form *-el-* to prevent consonant clusters: *katabt‑el‑kon* ‘I wrote for you&nbsp;(pl.)’. A direct object may then be added with the word *yaa-:* *katabt-l-ak yaa-ha* ‘I wrote it&nbsp;(fem.) for you’.

## Demonstrative pronouns

|      | Close       | Distant      | <span lang="ar" dir="rtl">بعيد</span>   | <span lang="ar" dir="rtl">قريب</span> |
| :-   | :-          | :-           | -:                                      | -:                                    |
| m.s. | *haada*     | *hadaak(e)*  | <span lang="ar" dir="rtl">هداك</span>   | <span lang="ar" dir="rtl">هادا</span> |
| f.s  | *haay*      | *hadiik(e)*  | <span lang="ar" dir="rtl">هديك</span>   | <span lang="ar" dir="rtl">هاي</span>  |
| pl.  | *hadool(e)* | *haadooliik* | <span lang="ar" dir="rtl">هدوليك</span> | <span lang="ar" dir="rtl">هدول</span> |

Note:

- Several forms have a stylistic variant with final *e*.

- *haada* has a shortened form, *haad*, used only at the end of phrases: *shuu haad?* ‘What is this?’.

- The distant plural pronoun has several variants not listed above, including *hadook, hadenk*, and *hadenken*.

## Indefinite pronouns

|        |           |                                      |
| :-     | :-        | -:                                   |
| *Hada* | someone   | <span lang="ar" dir="rtl">حدا</span> |
| *shi*  | something | <span lang="ar" dir="rtl">شي</span>  |

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

|                 |                 |                                             |
| :-              | :-              | -:                                          |
| *ʿa‑*           | to              | <span lang="ar" dir="rtl">ع</span>          |
| *ʿala/ʿalee‑*   | on              | <span lang="ar" dir="rtl">على/عليـ</span>   |
| *ʿand*          | with, at        | <span lang="ar" dir="rtl">عند</span>        |
| *been*          | between         | <span lang="ar" dir="rtl">بين</span>        |
| *been/beenaat‑* | among           | <span lang="ar" dir="rtl">بين/بيناتـ</span> |
| *bi‑/fii‑*      | in, at          | <span lang="ar" dir="rtl">بـ/فيـ</span>     |
| *men*           | from            | <span lang="ar" dir="rtl">من</span>         |
| *Hadd*          | next to         | <span lang="ar" dir="rtl">حد</span>         |
| *fooʾ*          | above           | <span lang="ar" dir="rtl">فوق</span>        |
| *taHt*          | below           | <span lang="ar" dir="rtl">تحت</span>        |
| *maʿ*           | with            | <span lang="ar" dir="rtl">مع</span>         |
| *wara*          | behind          | <span lang="ar" dir="rtl">ورا</span>        |
| *ʾuddaam*       | in front of     | <span lang="ar" dir="rtl">قدام</span>       |
| *la‑/el‑*       | for (ownership) | <span lang="ar" dir="rtl">لـ/الـ</span>     |

For the prepositions with two alternate forms, the first is used with nouns and the second with pronouns:

|             |              |                                         |
| :-          | :-           | -:                                      |
| *bi‑l‑beet* | in the house | <span lang="ar" dir="rtl">بالبيت</span> |
| *fii‑h*     | in it        | <span lang="ar" dir="rtl">فيه</span>    |


# Verbs

## Inflection

|           | Non-past      | Past       | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
| :-        | :-            | :-         | -:                                       | -:                                      |
| I         | *e‑ktob*      | *katab‑t*  | <span lang="ar" dir="rtl">اكتب</span>    | <span lang="ar" dir="rtl">كتبت</span>   |
| you (ms.) | *t(e)‑ktob*   | *katab‑t*  | <span lang="ar" dir="rtl">تكتب</span>    | <span lang="ar" dir="rtl">كتبت</span>   |
| you (fs.) | *t(e)‑ktob‑i* | *katab‑ti* | <span lang="ar" dir="rtl">تكتبي</span>   | <span lang="ar" dir="rtl">كتبتي</span>  |
| he        | *ye‑ktob*     | *katab*    | <span lang="ar" dir="rtl">يكتب</span>    | <span lang="ar" dir="rtl">كتب</span>    |
| she       | *t(e)‑ktob*   | *katab‑et* | <span lang="ar" dir="rtl">تكتب</span>    | <span lang="ar" dir="rtl">كتبت</span>   |
| we        | *n(e)‑ktob*   | *katab‑na* | <span lang="ar" dir="rtl">نكتب</span>    | <span lang="ar" dir="rtl">كتبنا</span>  |
| you (pl.) | *t(e)‑ktob‑u* | *katab‑tu* | <span lang="ar" dir="rtl">تكتبو</span>   | <span lang="ar" dir="rtl">كتبتو</span>  |
| they      | *ye‑ktob‑u*   | *katab‑u*  | <span lang="ar" dir="rtl">يكتبو</span>   | <span lang="ar" dir="rtl">كتبو</span>   |

The pronoun is often omitted. The *e* in parenthesis is omitted on stems beginning with a single consonant *t-shuuf-i* ‘you&nbsp;(fs.) see’.

The non-past verb form is preceded by one of the following:

|                                    |                        |                                        |
| :-                                 | :-                     | -:                                     |
| *b‑*                               | habitual, generalities | <span lang="ar" dir="rtl">بـ</span>    |
| *ʿam*                              | ongoing (progressive)  | <span lang="ar" dir="rtl">عم</span>    |
| *Ha‑/raH*                          | future                 | <span lang="ar" dir="rtl">حـ/رح</span> |
| *laazim*                           | ‘have to’              | <span lang="ar" dir="rtl">لازم</span>   |
| [auxiliary verb](#auxiliary-verbs) |                        |                                        |

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
    | we        | *n‑ruuH*    | *reH‑na*  | <span lang="ar" dir="rtl">نروح</span>    | <span lang="ar" dir="rtl">رحنا</span>    |
    | you (pl.) | *t‑ruuH‑u*  | *reH‑tu*  | <span lang="ar" dir="rtl">تروحو</span>   | <span lang="ar" dir="rtl">رحتو</span>   |
    | they      | *ye‑ruuH‑u* | *raaH‑u*  | <span lang="ar" dir="rtl">يروحو</span>   | <span lang="ar" dir="rtl">راحو</span>   |

    Some other frequent verbs of this type are 
    *kaan* 'was',
    *ʾaal* 'said',
    *raaH* 'went',
    *shaaf* 'saw'/'met',
    *ʾaam* 'stood up', and
    *maat* 'died'.


1. Middle *ii* (*Saar* 'became'):

    |           | Non-Past    | Past      | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
    | :-        | :-          | :-        | -:                                       | -:                                      |
    | I         | *e‑Siir*    | *Sert*    | <span lang="ar" dir="rtl">اصير</span>    | <span lang="ar" dir="rtl">صرت</span>    |
    | you (ms.) | *t‑Siir*    | *Sert*    | <span lang="ar" dir="rtl">تصير</span>    | <span lang="ar" dir="rtl">صرت</span>    |
    | you (fs.) | *t‑Siir‑i*  | *Sert‑i*  | <span lang="ar" dir="rtl">تصيري</span>   | <span lang="ar" dir="rtl">صرتي</span>   |
    | he        | *ye‑Siir*   | *Saar*    | <span lang="ar" dir="rtl">يصير</span>    | <span lang="ar" dir="rtl">صار</span>    |
    | she       | *t‑Siir*    | *Saar‑et* | <span lang="ar" dir="rtl">تصير</span>    | <span lang="ar" dir="rtl">صارت</span>   |
    | we        | *n‑Siir*    | *Ser‑na*  | <span lang="ar" dir="rtl">نصير</span>    | <span lang="ar" dir="rtl">صرنا</span>    |
    | you (pl.) | *t‑Siir‑u*  | *Ser‑tu*  | <span lang="ar" dir="rtl">تصيرو</span>   | <span lang="ar" dir="rtl">صرتو</span>   |
    | they      | *ye‑Siir‑u* | *Saar‑u*  | <span lang="ar" dir="rtl">يصيرو</span>   | <span lang="ar" dir="rtl">صارو</span>   |

    Some other frequent verbs of this type are 
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

    Some other frequent verbs of this type are 
    *khaaf* 'was frightened' and
    *ghaar* 'was jealous'.

<!--
### Defective verbs

Defective verbs have a stem ending in a vowel *i* in non-past tense and *a*/*ee* in past tense. There is only one type of defective verb.

*Haka* 'talked':

|           | Non-Past  | Past       | <span lang="ar" dir="rtl">المضارع</span> | <span lang="ar" dir="rtl">الماضي</span> |
| :-        | :-        | :-         | -:                                       | -:                                      |
| I         | *e‑Hki*   | *Hakee‑t*  | <span lang="ar" dir="rtl">احكي</span>    | <span lang="ar" dir="rtl">حكيت</span>   |
| you (ms.) | *te‑Hki*  | *Hakee‑t*  | <span lang="ar" dir="rtl">تحكي</span>    | <span lang="ar" dir="rtl">حكيت</span>   |
| you (fs.) | *te‑Hki*  | *Hakee‑ti* | <span lang="ar" dir="rtl">تحكي</span>    | <span lang="ar" dir="rtl">حكيتي</span>  |
| he        | *ye‑Hki*  | *Haka*     | <span lang="ar" dir="rtl">يحكي</span>    | <span lang="ar" dir="rtl">حكى</span>    |
| she       | *te‑Hki*  | *Hak‑et*   | <span lang="ar" dir="rtl">تحكي</span>    | <span lang="ar" dir="rtl">حكت</span>    |
| we        | *ne‑Hki*  | *Hakee‑na* | <span lang="ar" dir="rtl">نحكي</span>    | <span lang="ar" dir="rtl">حكينا</span>  |
| you (pl.) | *te‑Hk‑u* | *Hakee‑tu* | <span lang="ar" dir="rtl">تحكو</span>    | <span lang="ar" dir="rtl">حكيتو</span>  |
| they      | *ye‑Hk‑u* | *Hak‑u*    | <span lang="ar" dir="rtl">يحكو</span>    | <span lang="ar" dir="rtl">حكو</span>    |

Some other frequent verbs of this type are:
*masha* 'walked',
*ʿaTa* 'gave', and
*shtara* 'baught'.

-->

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

Some other frequent verbs of this type are
*radd* 'answered' and
*Dall* 'remained'.

## Auxiliary verbs

The main verb may be preceded by an auxiliary verb. Both the auxiliary and the main verb are inflected for person:

|                  |                     |                                            |
| :-               | :-                  | -:                                         |
| *beddo yektob*   | ‘he wants to write’ | <span lang="ar" dir="rtl">بدو يكتب</span>  |
| *byeHebb yektob* | ‘he likes to write’ | <span lang="ar" dir="rtl">بيحب يكتب</span> |
| *kaan yektob*    | ‘he was writing’    | <span lang="ar" dir="rtl">كان يكتب</span>  |
| *Saar yektob*    | ‘he began to write’ | <span lang="ar" dir="rtl">صار يكتب</span>  |

## *kaan* 'was'

The verb *kaan* 'was' is used

1.  to make a verb-less clause past or future tense:

    |                          |                           |
    | :-                       | :-                        |
    | *aHmad kaan Taaleb*      | Ahmad was a student     |
    | *aHmad Ha‑yekuun Taaleb* | Ahmad will be a student |

2.  to express a past ongoing (progressive) event:

    |                           |                      |
    | :-                        | :-                   |
    | *aHmad kaan (ʿam) yedros* | Ahmed was studying |

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

|         |          |                                      |
| :-      | :-       | -:                                   |
| *bedd‑* | want     | <span lang="ar" dir="rtl">بد</span>  |
| *ʿand‑* | has      | <span lang="ar" dir="rtl">عند</span> |
| *fii*   | there is | <span lang="ar" dir="rtl">في</span>  |


The pseudo-verbs are negated as verbs with *maa* (see [Negation](#negation)) but do not follow
verbal person and tense inflection. *bedd‑* and *ʿand-* are inflected
for person with attached pronouns, like nouns, while *fii* is not
inflected:

|                |                                        |                                             |
| :-             | :-                                     | :-                                          |
| *bedd-a ktaab* | she wants a book  [her wish is a book] | <span lang="ar" dir="rtl">بدها كتاب</span>  |
| *ʿand-a ktaab* | she has a book [with her is a book]    | <span lang="ar" dir="rtl">عندها كتاب</span> |
| *fii ktaab*    | there is a book                        | <span lang="ar" dir="rtl">في كتاب</span>    |

Pseudo-verbs are inflected for tense with an auxiliary *kaan*:

|                          |                          |                                                  |
| :-                       |  :-                      |:-                                                |
| *kaan ʿand-a ktaab*      |  She had a book.       |<span lang="ar" dir="rtl">كان عندها كتاب</span>   |
| *Ha-yekuun ʿand-a ktaab* |  She will have a book. |<span lang="ar" dir="rtl">حيكون عندها كتاب</span> |


# Question words

|               |            |                                           |
| :-            | :-         | -:                                        |
| *shuu*        | what       | <span lang="ar" dir="rtl">شو</span>       |
| *miin*        | who        | <span lang="ar" dir="rtl">مين</span>      |
| *eemta*       | when       | <span lang="ar" dir="rtl">ايمتى</span>    |
| *kiif/shloon* | how        | <span lang="ar" dir="rtl">كيف/شلون</span> |
| *ween*        | where      | <span lang="ar" dir="rtl">وين</span>      |
| *minnen*      | from where | <span lang="ar" dir="rtl">منين</span>     |
| *laween*      | whereto    | <span lang="ar" dir="rtl">لوين</span>     |
| *leesh*       | why        | <span lang="ar" dir="rtl">ليش</span>      |
| *addeesh*     | how much   | <span lang="ar" dir="rtl">قديش</span>     |
| *kam*         | how many   | <span lang="ar" dir="rtl">كم</span>       |
| *ayyi/anu*    | which      | <span lang="ar" dir="rtl">اي/انو</span>   |
  
Question words are normally clause-inital, and may be preceded by a preposition:

|                       |                           |                                                  |
| :-                    | :-                        | -:                                               |
| *maʿ miin ʿam teHki?* | ‘Who are you talking to?’ | <span lang="ar" dir="rtl">مع مين عم تحكي؟</span> |

*Ween* and *kiif* take attached pronouns:

|            |                   |                                       |
| :-         |  :-               |-:                                     |
| *ween-ak?* |  Where are you? |<span lang="ar" dir="rtl">وينك؟</span> |
| *kiif-ak?* |  How are you?   |<span lang="ar" dir="rtl">كيفك؟</span> |

Yes/no-question are formed with rising intonation.

# Negation {#negation}

|       |                                     |                    |
| :-    | -:                                  | :-                 |
| *maa* | <span lang="ar" dir="rtl">ما</span> | verbs              |
| *muu* | <span lang="ar" dir="rtl">مو</span> | non-verbal clauses |
| *laa* | <span lang="ar" dir="rtl">لا</span>  | imperative         |

For declarative clauses, in effect, *muu* is only used to negate a verbless clauses in
present tense, otherwise the *maa* is used:

|         | Verbal clause                                       | Verbless ("is") clause                                   |
| :-      | :-                                                  | :-                                                       |
|         | Ahmed is studying.                                  | Ahmed is a student.                                      |
| Past    | *aHmad* ***maa*** *daras*                           | *aHmad* ***maa*** *kaan Taaleb*                          |
|         | <span lang="ar" dir="rtl">أحمد ما درس</span>        | <span lang="ar" dir="rtl">أحمد ما كان طالب</span>        |
| Present | *aHmad* ***maa*** *byedrus*                         | *aHmad* ***muu*** *Taaleb*                               |
|         | <span lang="ar" dir="rtl">أحمد ما بيدرس</span>      | <span lang="ar" dir="rtl">أحمد مو طالب</span>            |
| Future  | *aHmad* ***maa*** *Ha‑/raH* *yedrus*                | *aHmad* ***maa*** *Ha‑/raH yekuun Taaleb*                |
|         | <span lang="ar" dir="rtl">أحمد ما حـ/رح يدرس</span> | <span lang="ar" dir="rtl">أحمد ما حـ/رح يكين طالب</span> |

## *maa-n-*

*maa‑* followed by a connecting *‑n‑* and an [attached pronoun](#personal-pronouns) (*maan‑i, maan‑ak, maan‑ik,* etc.) may be used to reply in the negative to a statement, question, or implication. For example,

|                  |                 |                                             |
| :-               | :-              | -:                                          |
| *maa‑n‑i juʿaan* | I am not hungry | <span lang="ar" dir="rtl">ماني جوعان</span> |

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


The independent form of the numeral is used when it stands by itself and is not followed by a noun. The counting form is when the numeral is followed by counted a noun: *tlaate* 'three', but *tlatt ewlaad* ‘three boys.’

Note:

- 1--2 are used only for emphasis or contrast, or when ordering in restaurants and the like (*etneen shaay* ‘two tea’). Otherwise, the lone noun in singular or dual is used (*ktaab* '[a/one] book'; *ktabeen* 'two books'). 1 and 2 are the only numerals that inflect for gender.

- 3--10 have a special form with a final *-t* when used with one of three following nouns:

  |          |           |                                   |
  | :-       | :-        | :-                                |
  | *eyyaam* | days      | (*khamst eyyam* five days)        |
  | *eshhur* | months    | (*khamst eshhur* 'five months')   |
  | *aalaaf* | thousands | (*ʿashart aalaaf* 'ten thousand') |

- For 3–10, the counted noun is in the plural: *tlatt kutub* 'three books', and for numerals above 10, it is in the singular: *iddaʿashar ktaab* ‘eleven book\[s\]’.

- 11—19 are constructed from the counting form of the unit number and the ending *‑Taʿsh*, with irregularities in 11, 12, and 15.

- Decades (20, 30, etc.) are constructed from the counting form of the unit number and the ending *‑iin*, with only 20 having an irregular form. In complex numbers, the unit in independent form appears before the decades with the two parts connected with *u‑* 'and': *sabʿa u‑tlaatiin*, ‘thirty‑six’.

- For numbers above one hundred there is no counting form for 100: *miyye u‑tlaate kelime* ‘103&nbsp;words’.
