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
  - \renewcommand\ccyear{2017, 2023}
  - \renewcommand{\textbf}[1]{\bfseries\textcolor{black!30}{#1}}
  - \renewcommand{\toprule}[2]{\null}
  - \renewcommand{\bottomrule}[2]{\null}
  - \AtBeginDocument{\Large}
  - \newcommand\es[2]{\ifeng#1\else#2\fi}
  - \newif\ifeng
  - \engfalse
# - \engtrue
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

|                    |                  |                 |                                                |                  |           |                                       |
| :-:                | -:               | :-              | :-                                             | -:               | :-        | :-                                    |
| **[ع/ء]{lang=ar}** | [أَمَل]{lang=ar}   | *\llap{ʾ}amal*  | \es{hope}{hopp},  \es{pr. name}{egennamn} (f.) | [عَمَل]{lang=ar}   | *ʿamal*   | \es{work}{arbete}                     |
| **ʾ/ʿ**            | [سُؤال]{lang=ar}  | *suʾāl*         | \es{question}{fråga}                           | [سُعال]{lang=ar}  | *suʿāl*   | \es{cough}{hosta}                     |
|                    | [أَيْن]{lang=ar}   | *ʾayn*          | \es{where?}{var?}                              | [عَيْن]{lang=ar}   | *ʿayn*    | \es{eye}{öga}                         |
|                    |                  |                 |                                                |                  |           |                                       |
| **ø[ء/]{lang=ar}** | [صَدى]{lang=ar}   | *ṣadā*          | \es{echo}{eko}                                 | [صَدَأ]{lang=ar}   | *ṣadaʾ*   | \es{rust}{rost}                       |
| **ø/ʾ**            | [ما]{lang=ar}    | *mā*            | \es{what?}{vad?}                               | [ماء]{lang=ar}   | *māʾ*     | \es{water}{vatten}                    |
|                    |                  |                 |                                                |                  |           |                                       |
| **[غ/ر]{lang=ar}** | [وَرْد]{lang=ar}   | *ward*          | \es{rose}{ros}                                 | [وَغْد]{lang=ar}   | *waghd*   | \es{scoundrel}{skitstövel}            |
| **r/gh**           | [ضَرْط]{lang=ar}   | *ḍarṭ*          | \es{fart}{prutt}                               | [ضَغْط]{lang=ar}   | *ḍaghṭ*   | \es{pressure, stress}{press, tryck}
|                    |                  |                 |                                                |                  |           |                                       |
| **[ه/ح]{lang=ar}** | [حال]{lang=ar}   | *ḥāl*           | situation                                      | [هال]{lang=ar}   | *hāl*     | \es{cardamom}{kardemumma}             |
| **ḥ/h**            | [حَمْزة]{lang=ar}  | *ḥamza*         | \es{pr. name}{egennamn} (m.)                   | [هَمْزة]{lang=ar}  | *hamza*   | *hamza* (\es{letter}{boksav})         |
|                    |                  |                 |                                                |                  |           |                                       |
| **[خ/ح]{lang=ar}** | [حال]{lang=ar}   | *ḥāl*           | situation                                      | [خال]{lang=ar}   | *khāl*    | \es{uncle}{morbror}                   |
| **ḥ/kh**           | [حَدّ]{lang=ar}    | *ḥadd*          | \es{sharp}{vass}                               | [خَدّ]{lang=ar}    | *khadd*   | \es{cheek}{kind}                      |
|                    | [حَوْلَ]{lang=ar}   | *ḥawla*         | \es{around}{runtom}                            | [خَوْلة]{lang=ar}  | *khawla*  | \es{pr. name}{egennamn} (f.)          |
|                    | [حَلّ]{lang=ar}    | *ḥall*          | \es{solution}{lösning}                         | [خَلّ]{lang=ar}    | *khall*   | \es{vinager}{vinäger}                 |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ق/ك]{lang=ar}** | [كَلْب]{lang=ar}   | *kalb*          | \es{dog}{hund}                                 | [قَـلْب]{lang=ar}  | *qalb*    | \es{heart}{hjärta}                    |
| **k/q**            | [حَكّ]{lang=ar}    | *ḥakk*          | \es{itch}{klåda}                               | [حَقّ]{lang=ar}    | *ḥaqq*    | \es{right, truth}{rättighet, sanning} |
|                    |                  |                 |                                                |                  |           |                                       |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ز/س]{lang=ar}** | [سِرّ]{lang=ar}    | *sirr*          | \es{secret}{hemlighet}                         | [زِرّ]{lang=ar}    | *zirr*    | \es{button}{knapp}                    |
| **s/z**            | [سَمِير]{lang=ar}  | *samīr*         | \es{pr. name}{egennamn} (m.)                   | [زَمِير]{lang=ar}  | *zamīr*   | \es{honk}{tut}                        |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ص/س]{lang=ar}** | [سُورة]{lang=ar}  | *sūra*          | \es{chapter (Quran)}{kapitel (Koranen)}        | [صُورة]{lang=ar}  | *ṣūra*    | \es{picture}{bild}                    |
| **s/ṣ**            | [سَيْف]{lang=ar}   | *sayf*          | \es{sword}{svärd}                              | [صَيْف]{lang=ar}   | *ṣayf*    | \es{summer}{sommar}                   |
|                    | [السِّين]{lang=ar} | *as-sīn*        | *sīn* \es{(letter)}{(bokstav)}                 | [الصِّين]{lang=ar} | *aṣ-ṣīn*  | \es{China}{Kina}                      |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ض/د]{lang=ar}** | [دَرْب]{lang=ar}   | *darb*          | \es{path}{stig}                                | [ضَرْب]{lang=ar}   | *ḍarb*    | \es{strike}{slag}                     |
| **d/ḍ**            | [قُرُود]{lang=ar}  | *qurūd*         | \es{monkeys}{apor}                             | [قُرُوض]{lang=ar}  | *qurūḍ*   | \es{loans}{lån (pl.)}                 |
|                    | [فادِي]{lang=ar}  | *fādī*          | \es{pr. name}{egennamn} (m.)                   | [فاضِي]{lang=ar}  | *fāḍī*    | \es{empty}{tom}                       |
|                    | [أَعْداء]{lang=ar} | *\llap{ʾ}aʿdāʾ* | \es{enemies}{fiender}                          | [أَعْضاء]{lang=ar} | *ʾaʿḍāʾ*  | \es{members}{medlemmar}               |
|                    | [فَرْد]{lang=ar}   | *fard*          | \es{individual}{individ}                       | [فَرْض]{lang=ar}   | *farḍ*    | \es{assumption}{antagande}            |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ط/ت]{lang=ar}** | [تَيّار]{lang=ar}  | *tayyār*        | \es{stream}{ström, fors}                       | [طَيّار]{lang=ar}  | *ṭayyār*  | pilot                                 |
| **t/ṭ**            | [تِين]{lang=ar}   | *tīn*           | \es{fig}{fikon}                                | [طِين]{lang=ar}   | *ṭīn*     | \es{clay}{lera}                       |
|                    |                  |                 |                                                |                  |           |                                       |
| **[ـّ]{lang=ar}**   | [دَرَسَ]{lang=ar}   | *darasa*        | \es{study}{studera}                            | [دَرَّسَ]{lang=ar}   | *darrasa* | \es{teach}{undervisa}                 |
|                    | [حَكَى]{lang=ar}   | *ḥaka*          | \es{tell [story]}{berätta}                     | [حَكَّى]{lang=ar}   | *ḥakkā*   | \es{itch}{klia}                       |
|                    | [عَلِي]{lang=ar}   | *ʿalī*          | \es{pr. name}{egennamn} (m.)                   | [عَلِّي]{lang=ar}   | *ʿallī*   | \es{raise}{höj}                       |
|                    | [أَنَا]{lang=ar}   | *ʾanā*          | \es{I}{jag}                                    | [أَنَّ]{lang=ar}    | *ʾanna*   | \es{to (conj.)}{att}                  |



