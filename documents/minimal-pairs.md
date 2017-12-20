---
title: \es{Minimal pairs in Standard Arabic}{Minimala par i standardarabiska}
lang: sv
mainfont: Linux Libertine O
header-includes:
    - \usepackage{\string ~/mylatexstuff/ccbyandreas}
    - \input{\string ~/mypandocstuff/texttt-to-textarabic.tex}
    - \renewcommand{\textbf}[1]{\bfseries\textcolor{black!30}{#1}}
    - \renewcommand{\toprule}{\null}
    - \renewcommand{\bottomrule}{\null}
    - \AtBeginDocument{\Large}
    - \newif\ifeng
    - \engfalse
    - \engtrue
    - \newcommand\es[2]{\ifeng#1\else#2\fi}
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

|             |         |                  |                                                |         |           |                                       |
| :-:         | -:      | :-               | :-                                             | -:      | :-        | :-                                    |
| **`ع/ء`**   | `أَمَل`   | *\llap{ʾ}amal*   | \es{hope}{hopp},  \es{pr. name}{egennamn} (f.) | `عَمَل`   | *ʿamal*   | \es{work}{arbete}                     |
| **ʾ/ʿ**     | `سُؤال`  | *suʾaal*         | \es{question}{fråga}                           | `سُعال`  | *suʿaal*  | \es{cough}{hosta}                     |
|             | `أَيْن`   | *ʾayn*           | \es{where?}{var?}                              | `عَيْن`   | *ʿayn*    | \es{eye}{öga}                         |
|             |         |                  |                                                |         |           |                                       |
| **ø`ء/`**   | `صَدى`   | *Sada*           | \es{echo}{eko}                                 | `صَدَأ`   | *Sadaʾ*   | \es{rust}{rost}                       |
| **ø/ʾ**     | `ما`    | *maa*            | \es{what?}{vad?}                               | `ماء`   | *maaʾ*    | \es{water}{vatten}                    |
|             |         |                  |                                                |         |           |                                       |
| **`غ/ر`**   | `وَرْد`   | *ward*           | \es{rose}{ros}                                 | `وَغْد`   | *waghd*   | \es{scoundrel}{skitstövel}            |
| **r/gh**    | `ضَرْط`   | *DarT*           | \es{fart}{prutt}                               | `ضَغْط`   | *DaghT*   | \es{pressure, stress}{press, tryck}
|             |         |                  |                                                |         |           |                                       |
| **`ه/ح`**   | `حال`   | *Haal*           | situation                                      | `هال`   | *haal*    | \es{cardamom}{kardemumma}             |
| **H/h**     | `حَمْزة`  | *Hamza*          | \es{pr. name}{egennamn} (m.)                   | `هَمْزة`  | *hamza*   | *hamza* (\es{letter}{boksav})         |
|             |         |                  |                                                |         |           |                                       |
| **`خ/ح`**   | `حال`   | *Haal*           | situation                                      | `خال`   | *khaal*   | \es{uncle}{morbror}                   |
| **H/kh**    | `حَدّ`    | *Hadd*           | \es{sharp}{vass}                               | `خَدّ`    | *khadd*   | \es{cheek}{kind}                      |
|             | `حَوْلَ`   | *Hawla*          | \es{around}{runtom}                            | `خَوْلة`  | *khawla*  | \es{pr. name}{egennamn} (f.)          |
|             | `حَلّ`    | *Hall*           | \es{solution}{lösning}                         | `خَلّ`    | *khall*   | \es{vinager}{vinäger}                 |
|             |         |                  |                                                |         |           |                                       |
| **`ق/ك`**   | `كَلْب`   | *kalb*           | \es{dog}{hund}                                 | `قَـلْب`  | *qalb*    | \es{heart}{hjärta}                    |
| **k/q**     | `حَكّ`    | *Hakk*           | \es{itch}{klåda}                               | `حَقّ`    | *Haqq*    | \es{right, truth}{rättighet, sanning} |
|             |         |                  |                                                |         |           |                                       |
| **``ز/س``** | `سِرّ`    | *sirr*           | \es{secret}{hemlighet}                         | `زِرّ`    | *zirr*    | \es{button}{knapp}                    |
| **s/z**     | `سَمِير`  | *samiir*         | \es{pr. name}{egennamn} (m.)                   | `زَمِير`  | *zamiir*  | \es{honk}{tut}                        |
|             |         |                  |                                                |         |           |                                       |
| **`ص/س`**   | `سُورة`  | *suura*          | \es{chapter (Quran)}{kapitel (Koranen)}        | `صُورة`  | *Suura*   | \es{picture}{bild}                    |
| **s/S**     | `سَيْف`   | *sayf*           | \es{sword}{svärd}                              | `صَيْف`   | *Sayf*    | \es{summer}{sommar}                   |
|             | `السِّين` | *as-siin*        | *siin* \es{(letter)}{(bokstav)}                | `الصِّين` | *aS-Siin* | \es{China}{Kina}                      |
|             |         |                  |                                                |         |           |                                       |
| **`ض/د`**   | `دَرْب`   | *darb*           | \es{path}{stig}                                | `ضَرْب`   | *Darb*    | \es{strike}{slag}                     |
| **d/D**     | `قُرُود`  | *quruud*         | \es{monkeys}{apor}                             | `قُرُوض`  | *quruuD*  | \es{loans}{lån (pl.)}                 |
|             | `فادِي`  | *faadii*         | \es{pr. name}{egennamn} (m.)                   | `فاضِي`  | *faaDii*  | \es{empty}{tom}                       |
|             | `أَعْداء` | *\llap{ʾ}aʿdaaʾ* | \es{enemies}{fiender}                          | `أَعْضاء` | *ʾaʿDaaʾ* | \es{members}{medlemmar}               |
|             | `فَرْد`   | *fard*           | \es{individual}{individ}                       | `فَرْض`   | *farD*    | \es{assumption}{andtagande}           |
|             |         |                  |                                                |         |           |                                       |
| **`ط/ت`**   | `تَيّار`  | *tayyaar*        | \es{stream}{ström, fors}                       | `طَيّار`  | *Tayyaar* | pilot                                 |
| **t/T**     | `تِين`   | *tiin*           | \es{fig}{fikon}                                | `طِين`   | *Tiin*    | \es{clay}{lera}                       |
