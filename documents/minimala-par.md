---
title: Minimala par i arabiska
lang: sv
mainfont: Linux Libertine O
header-includes:
    - \usepackage{\string ~/mylatexstuff/ccbyandreas}
    - \input{\string ~/mypandocstuff/texttt-to-textarabic.tex}
    - \renewcommand{\textbf}[1]{\bfseries\textcolor{black!30}{#1}}
    - \renewcommand{\toprule}{\null}
    - \renewcommand{\bottomrule}{\null}
    - \AtBeginDocument{\Large}
papersize: a4
---

\vspace{-2cm}\centerline{\small\textit{\today}}\par\bigskip

<!-- % Language conditional -->
\newif\ifeng

<!-- % Choose language here: -->
 \engfalse
      \engtrue

<!-- Conditionally print Swedish or English. English in first argument, Swedish in second. -->

\newcommand\es[2]{\ifeng#1\else#2\fi}

|             |         |                       |         |                    |
| :-:         | -:      | :-                    | -:      | :-                 |
| **`ع/ء`**   | `أَمَل`   | \es{hope, personal name}{hopp, personnamn}      | `عَمَل`   | \es{work}{arbete}             |
|             | `سُؤال`  | \es{question}{fråga}                 | `سُعال`  | \es{cough}{hosta}              |
|             | `سَأَل`   | \es{(he) asked}{(han) frågade}         | `سَعَل`   | \es{(he) coughed}{(han) hostade}      |
|             | `أَيْن`   | \es{where?}{var?}                   | `عَيْن`   | \es{eye}{öga}                |
|             |         |                       |         |                    |
| **`ء/ø`**   | `ما`    | \es{what?}{vad?}                  | `ماء`   | \es{whater}{vatten}             |
|             | `فاس`   | Fez                   | `فَأْس`   | \es{axe}{yxa}                |
|             |         |                       |         |                    |
| **`غ/ر`**   | `وَرْد`   | \es{rose}{ros}                   | `وَغْد`   | \es{scoundrel}{skitstövel}         |
|             | `ضَغْط`   | \es{pressure, stress}{press, tryck}          | `ضَرْط`   | \es{frat}{prutt}              |
|             |         |                       |         |                    |
| **`ه/ح`**   | `حال`   | situation             | `هال`   | \es{cardamom}{kardemumma}         |
|             | `حَمْزة`  | *hamza* (\es{letter}{boksav})        | `هَمْزة`  | \es{lion, person name}{lejon, personnamn}  |
|             |         |                       |         |                    |
| **`خ/ح`**   | `حال`   | situation             | `خال`   | \es{uncle}{morbror}            |
|             | `حَدّ`    | \es{sharp}{vass}                  | `خَدّ`    | \es{cheek}{kind}               |
|             | `حَوْلَ`   | \es{around}{runtom}                | `خَوْلة`  | \es{person name}{personnamn}         |
|             | `حَلّ`    | \es{solution}{lösning}               | `خَلّ`    | \es{vinager}{vinäger}            |
|             |         |                       |         |                    |
| **`ق/ك`**   | `كَلْب`   | \es{dog}{hund}                  | `قَـلْب`  | \es{heart}{hjärta}             |
|             | `حَكّ`    | \es{itch}{klåda}                 | `حَقّ`    | \es{right, truth}{rättighet, sanning} |
|             |         |                       |         |                    |
| **``ز/س``** | `سِرّ`    | \es{secret}{hemlighet}             | `زِرّ`    | \es{button}{knapp}              |
|             | `سَمِير`  | \es{person name}{personnamn}            | `زَمِير`  | \es{honk}{tut}                |
|             |         |                       |         |                    |
| **`ص/س`**   | `سُورة`  | \es{chapter (Quran)}{kapitel (Koranen)}     | `صُورة`  | \es{pucture}{bild}               |
|             | `سَيْف`   | \es{sword}{svärd}                 | `صَيْف`   | \es{summer}{sommar}             |
|             | `السِّين` | *siin* (\es{letter}{bokstav})      | `الصِّين` | \es{China}{Kina}               |
|             |         |                       |         |                    |
| **`ض/د`**   | `دَرْب`   | \es{path}{stig}                  | `ضَرْب`   | \es{strike}{slag}               |
|             | `قُرُود`  | \es{monkeys}{apor}                  | `قُرُوض`  | \es{loans}{lån (pl.)}          |
|             | `فادِي`  | \es{redeemer, person name}{förlösare, personnamn} | `فاضِي`  | \es{empty}{tom}                |
|             | `أَعْداء` | \es{enemies}{fiender}               | `أَعْضاء` | \es{members}{medlemmar}          |
|             |         |                       |         |                    |
| **`ط/ت`**   | `تَيّار`  | \es{stream}{ström, fors}           | `طَيّار`  | pilot              |
|             | `تِين`   | \es{fig}{fikon}                 | `طِين`   | \es{clay}{lera}               |
