---
title: \es{Minimal pairs in Standard Arabic}{Minimala par i standardarabiska}
lang: en
mainfont: Linux Libertine O
header-includes:
  - \newfontfamily\arabicfont[Script=Arabic]{Lateef}
  - \newfontfamily\arabicfontsf[Script=Arabic]{Lateef}
  - \newfontfamily\arabicfontit[Script=Arabic]{Lateef}
  - \usepackage{\string ~/dotfiles/mylatexstuff/ccbyandreas}
  - \renewcommand\ccyear{2017}
  - \renewcommand{\textbf}[1]{\bfseries\textcolor{black!30}{#1}}
  - \renewcommand{\toprule}{\null}
  - \renewcommand{\bottomrule}{\null}
  - \AtBeginDocument{\Large}
  - \newcommand\es[2]{\ifeng#1\else#2\fi}
  - \newif\ifeng
  - \engfalse
  - \engtrue
geometry:
  - hmargin=2cm
papersize: a4
---

<!--
!mv minimal-pairs.md.pdf minimal-pairs-sv.md.pdf
!mv minimal-pairs.md.pdf minimal-pairs-en.md.pdf
-->

\center

\vspace{-2cm}{\small\textit{\today}}\par\bigskip

|                              |                          |                  |                                                |                          |           |                                       |
| :-:                          | -:                       | :-               | :-                                             | -:                       | :-        | :-                                    |
| **[ع/ء]{lang=ar dir=rtl}**   | [أَمَل]{lang=ar dir=rtl}   | *\llap{ʾ}amal*   | \es{hope}{hopp},  \es{pr. name}{egennamn} (f.) | [عَمَل]{lang=ar dir=rtl}   | *ʿamal*   | \es{work}{arbete}                     |
| **ʾ/ʿ**                      | [سُؤال]{lang=ar dir=rtl}  | *suʾaal*         | \es{question}{fråga}                           | [سُعال]{lang=ar dir=rtl}  | *suʿaal*  | \es{cough}{hosta}                     |
|                              | [أَيْن]{lang=ar dir=rtl}   | *ʾayn*           | \es{where?}{var?}                              | [عَيْن]{lang=ar dir=rtl}   | *ʿayn*    | \es{eye}{öga}                         |
|                              |                          |                  |                                                |                          |           |                                       |
| **ø[ء/]{lang=ar dir=rtl}**   | [صَدى]{lang=ar dir=rtl}   | *Sada*           | \es{echo}{eko}                                 | [صَدَأ]{lang=ar dir=rtl}   | *Sadaʾ*   | \es{rust}{rost}                       |
| **ø/ʾ**                      | [ما]{lang=ar dir=rtl}    | *maa*            | \es{what?}{vad?}                               | [ماء]{lang=ar dir=rtl}   | *maaʾ*    | \es{water}{vatten}                    |
|                              |                          |                  |                                                |                          |           |                                       |
| **[غ/ر]{lang=ar dir=rtl}**   | [وَرْد]{lang=ar dir=rtl}   | *ward*           | \es{rose}{ros}                                 | [وَغْد]{lang=ar dir=rtl}   | *waghd*   | \es{scoundrel}{skitstövel}            |
| **r/gh**                     | [ضَرْط]{lang=ar dir=rtl}   | *DarT*           | \es{fart}{prutt}                               | [ضَغْط]{lang=ar dir=rtl}   | *DaghT*   | \es{pressure, stress}{press, tryck}
|                              |                          |                  |                                                |                          |           |                                       |
| **[ه/ح]{lang=ar dir=rtl}**   | [حال]{lang=ar dir=rtl}   | *Haal*           | situation                                      | [هال]{lang=ar dir=rtl}   | *haal*    | \es{cardamom}{kardemumma}             |
| **H/h**                      | [حَمْزة]{lang=ar dir=rtl}  | *Hamza*          | \es{pr. name}{egennamn} (m.)                   | [هَمْزة]{lang=ar dir=rtl}  | *hamza*   | *hamza* (\es{letter}{boksav})         |
|                              |                          |                  |                                                |                          |           |                                       |
| **[خ/ح]{lang=ar dir=rtl}**   | [حال]{lang=ar dir=rtl}   | *Haal*           | situation                                      | [خال]{lang=ar dir=rtl}   | *khaal*   | \es{uncle}{morbror}                   |
| **H/kh**                     | [حَدّ]{lang=ar dir=rtl}    | *Hadd*           | \es{sharp}{vass}                               | [خَدّ]{lang=ar dir=rtl}    | *khadd*   | \es{cheek}{kind}                      |
|                              | [حَوْلَ]{lang=ar dir=rtl}   | *Hawla*          | \es{around}{runtom}                            | [خَوْلة]{lang=ar dir=rtl}  | *khawla*  | \es{pr. name}{egennamn} (f.)          |
|                              | [حَلّ]{lang=ar dir=rtl}    | *Hall*           | \es{solution}{lösning}                         | [خَلّ]{lang=ar dir=rtl}    | *khall*   | \es{vinager}{vinäger}                 |
|                              |                          |                  |                                                |                          |           |                                       |
| **[ق/ك]{lang=ar dir=rtl}**   | [كَلْب]{lang=ar dir=rtl}   | *kalb*           | \es{dog}{hund}                                 | [قَـلْب]{lang=ar dir=rtl}  | *qalb*    | \es{heart}{hjärta}                    |
| **k/q**                      | [حَكّ]{lang=ar dir=rtl}    | *Hakk*           | \es{itch}{klåda}                               | [حَقّ]{lang=ar dir=rtl}    | *Haqq*    | \es{right, truth}{rättighet, sanning} |
|                              |                          |                  |                                                |                          |           |                                       |
| **[ز/س]{lang=ar dir=rtl}** | [سِرّ]{lang=ar dir=rtl}    | *sirr*           | \es{secret}{hemlighet}                         | [زِرّ]{lang=ar dir=rtl}    | *zirr*    | \es{button}{knapp}                    |
| **s/z**                      | [سَمِير]{lang=ar dir=rtl}  | *samiir*         | \es{pr. name}{egennamn} (m.)                   | [زَمِير]{lang=ar dir=rtl}  | *zamiir*  | \es{honk}{tut}                        |
|                              |                          |                  |                                                |                          |           |                                       |
| **[ص/س]{lang=ar dir=rtl}**   | [سُورة]{lang=ar dir=rtl}  | *suura*          | \es{chapter (Quran)}{kapitel (Koranen)}        | [صُورة]{lang=ar dir=rtl}  | *Suura*   | \es{picture}{bild}                    |
| **s/S**                      | [سَيْف]{lang=ar dir=rtl}   | *sayf*           | \es{sword}{svärd}                              | [صَيْف]{lang=ar dir=rtl}   | *Sayf*    | \es{summer}{sommar}                   |
|                              | [السِّين]{lang=ar dir=rtl} | *as-siin*        | *siin* \es{(letter)}{(bokstav)}                | [الصِّين]{lang=ar dir=rtl} | *aS-Siin* | \es{China}{Kina}                      |
|                              |                          |                  |                                                |                          |           |                                       |
| **[ض/د]{lang=ar dir=rtl}**   | [دَرْب]{lang=ar dir=rtl}   | *darb*           | \es{path}{stig}                                | [ضَرْب]{lang=ar dir=rtl}   | *Darb*    | \es{strike}{slag}                     |
| **d/D**                      | [قُرُود]{lang=ar dir=rtl}  | *quruud*         | \es{monkeys}{apor}                             | [قُرُوض]{lang=ar dir=rtl}  | *quruuD*  | \es{loans}{lån (pl.)}                 |
|                              | [فادِي]{lang=ar dir=rtl}  | *faadii*         | \es{pr. name}{egennamn} (m.)                   | [فاضِي]{lang=ar dir=rtl}  | *faaDii*  | \es{empty}{tom}                       |
|                              | [أَعْداء]{lang=ar dir=rtl} | *\llap{ʾ}aʿdaaʾ* | \es{enemies}{fiender}                          | [أَعْضاء]{lang=ar dir=rtl} | *ʾaʿDaaʾ* | \es{members}{medlemmar}               |
|                              | [فَرْد]{lang=ar dir=rtl}   | *fard*           | \es{individual}{individ}                       | [فَرْض]{lang=ar dir=rtl}   | *farD*    | \es{assumption}{antagande}            |
|                              |                          |                  |                                                |                          |           |                                       |
| **[ط/ت]{lang=ar dir=rtl}**   | [تَيّار]{lang=ar dir=rtl}  | *tayyaar*        | \es{stream}{ström, fors}                       | [طَيّار]{lang=ar dir=rtl}  | *Tayyaar* | pilot                                 |
| **t/T**                      | [تِين]{lang=ar dir=rtl}   | *tiin*           | \es{fig}{fikon}                                | [طِين]{lang=ar dir=rtl}   | *Tiin*    | \es{clay}{lera}                       |
