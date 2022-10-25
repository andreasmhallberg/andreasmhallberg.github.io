---
title: \es{Minimal pairs in Standard Arabic}{Minimala par i standardarabiska}
lang: en
mainfont: Linux Libertine
header-includes:
  - |
    ```{=latex}
    \babelfont[arabic]{rm}[Scale=1.5]{Lateef}
    ```
  - \usepackage{\string ~/dotfiles/mylatexstuff/ccbyandreas}
  - \renewcommand\ccyear{2017}
  - \renewcommand{\textbf}[1]{\bfseries\textcolor{black!30}{#1}}
  - \renewcommand{\toprule}[2]{\null}
  - \renewcommand{\bottomrule}[2]{\null}
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

|                    |                  |                  |                                                |                  |           |                                       |
| :-:                | -:               | :-               | :-                                             | -:               | :-        | :-                                    |
| **[ع/ء]{lang=ar}** | [أَمَل]{lang=ar}   | *\llap{ʾ}amal*   | \es{hope}{hopp},  \es{pr. name}{egennamn} (f.) | [عَمَل]{lang=ar}   | *ʿamal*   | \es{work}{arbete}                     |
| **ʾ/ʿ**            | [سُؤال]{lang=ar}  | *suʾaal*         | \es{question}{fråga}                           | [سُعال]{lang=ar}  | *suʿaal*  | \es{cough}{hosta}                     |
|                    | [أَيْن]{lang=ar}   | *ʾayn*           | \es{where?}{var?}                              | [عَيْن]{lang=ar}   | *ʿayn*    | \es{eye}{öga}                         |
|                    |                  |                  |                                                |                  |           |                                       |
| **ø[ء/]{lang=ar}** | [صَدى]{lang=ar}   | *Sada*           | \es{echo}{eko}                                 | [صَدَأ]{lang=ar}   | *Sadaʾ*   | \es{rust}{rost}                       |
| **ø/ʾ**            | [ما]{lang=ar}    | *maa*            | \es{what?}{vad?}                               | [ماء]{lang=ar}   | *maaʾ*    | \es{water}{vatten}                    |
|                    |                  |                  |                                                |                  |           |                                       |
| **[غ/ر]{lang=ar}** | [وَرْد]{lang=ar}   | *ward*           | \es{rose}{ros}                                 | [وَغْد]{lang=ar}   | *waghd*   | \es{scoundrel}{skitstövel}            |
| **r/gh**           | [ضَرْط]{lang=ar}   | *DarT*           | \es{fart}{prutt}                               | [ضَغْط]{lang=ar}   | *DaghT*   | \es{pressure, stress}{press, tryck}
|                    |                  |                  |                                                |                  |           |                                       |
| **[ه/ح]{lang=ar}** | [حال]{lang=ar}   | *Haal*           | situation                                      | [هال]{lang=ar}   | *haal*    | \es{cardamom}{kardemumma}             |
| **H/h**            | [حَمْزة]{lang=ar}  | *Hamza*          | \es{pr. name}{egennamn} (m.)                   | [هَمْزة]{lang=ar}  | *hamza*   | *hamza* (\es{letter}{boksav})         |
|                    |                  |                  |                                                |                  |           |                                       |
| **[خ/ح]{lang=ar}** | [حال]{lang=ar}   | *Haal*           | situation                                      | [خال]{lang=ar}   | *khaal*   | \es{uncle}{morbror}                   |
| **H/kh**           | [حَدّ]{lang=ar}    | *Hadd*           | \es{sharp}{vass}                               | [خَدّ]{lang=ar}    | *khadd*   | \es{cheek}{kind}                      |
|                    | [حَوْلَ]{lang=ar}   | *Hawla*          | \es{around}{runtom}                            | [خَوْلة]{lang=ar}  | *khawla*  | \es{pr. name}{egennamn} (f.)          |
|                    | [حَلّ]{lang=ar}    | *Hall*           | \es{solution}{lösning}                         | [خَلّ]{lang=ar}    | *khall*   | \es{vinager}{vinäger}                 |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ق/ك]{lang=ar}** | [كَلْب]{lang=ar}   | *kalb*           | \es{dog}{hund}                                 | [قَـلْب]{lang=ar}  | *qalb*    | \es{heart}{hjärta}                    |
| **k/q**            | [حَكّ]{lang=ar}    | *Hakk*           | \es{itch}{klåda}                               | [حَقّ]{lang=ar}    | *Haqq*    | \es{right, truth}{rättighet, sanning} |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ز/س]{lang=ar}** | [سِرّ]{lang=ar}    | *sirr*           | \es{secret}{hemlighet}                         | [زِرّ]{lang=ar}    | *zirr*    | \es{button}{knapp}                    |
| **s/z**            | [سَمِير]{lang=ar}  | *samiir*         | \es{pr. name}{egennamn} (m.)                   | [زَمِير]{lang=ar}  | *zamiir*  | \es{honk}{tut}                        |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ص/س]{lang=ar}** | [سُورة]{lang=ar}  | *suura*          | \es{chapter (Quran)}{kapitel (Koranen)}        | [صُورة]{lang=ar}  | *Suura*   | \es{picture}{bild}                    |
| **s/S**            | [سَيْف]{lang=ar}   | *sayf*           | \es{sword}{svärd}                              | [صَيْف]{lang=ar}   | *Sayf*    | \es{summer}{sommar}                   |
|                    | [السِّين]{lang=ar} | *as-siin*        | *siin* \es{(letter)}{(bokstav)}                | [الصِّين]{lang=ar} | *aS-Siin* | \es{China}{Kina}                      |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ض/د]{lang=ar}** | [دَرْب]{lang=ar}   | *darb*           | \es{path}{stig}                                | [ضَرْب]{lang=ar}   | *Darb*    | \es{strike}{slag}                     |
| **d/D**            | [قُرُود]{lang=ar}  | *quruud*         | \es{monkeys}{apor}                             | [قُرُوض]{lang=ar}  | *quruuD*  | \es{loans}{lån (pl.)}                 |
|                    | [فادِي]{lang=ar}  | *faadii*         | \es{pr. name}{egennamn} (m.)                   | [فاضِي]{lang=ar}  | *faaDii*  | \es{empty}{tom}                       |
|                    | [أَعْداء]{lang=ar} | *\llap{ʾ}aʿdaaʾ* | \es{enemies}{fiender}                          | [أَعْضاء]{lang=ar} | *ʾaʿDaaʾ* | \es{members}{medlemmar}               |
|                    | [فَرْد]{lang=ar}   | *fard*           | \es{individual}{individ}                       | [فَرْض]{lang=ar}   | *farD*    | \es{assumption}{antagande}            |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ط/ت]{lang=ar}** | [تَيّار]{lang=ar}  | *tayyaar*        | \es{stream}{ström, fors}                       | [طَيّار]{lang=ar}  | *Tayyaar* | pilot                                 |
| **t/T**            | [تِين]{lang=ar}   | *tiin*           | \es{fig}{fikon}                                | [طِين]{lang=ar}   | *Tiin*    | \es{clay}{lera}                       |
|                    |                  |                  |                                                |                  |           |                                       |
| **[ـّ]{lang=ar}**   | [دَرَسَ]{lang=ar}   | *darasa*         | \es{study}{studera}                            | [دَرَّسَ]{lang=ar}   | *darrasa* | \es{teach}{undervisa}                 |
|                    | [حَكَى]{lang=ar}   | *Haka*          | \es{tell [story]}{berätta}                     | [حَكَّى]{lang=ar}   | *Hakka*  | \es{itch}{klia}                       |
|                    | [عَلِي]{lang=ar}   | *ʿAli*          | \es{pr. name}{egennamn}                     | [عَلِّي]{lang=ar}   | *ʿallī*  | \es{raise}{höj}                       |
|                    | [أَنَا]{lang=ar}   | *ana*          | \es{I}{jag}                     | [أنَّ]{lang=ar}   | *anna*  | \es{to (conj.)}{att}                       |


