
Why are academics in the humanities crap at computers?


- outputtable to all formats
- no need to think about layout, only structure
  - first order retrieveability with markup
- portability
  - all platforms with same result 
- long-term storage
  - no propriety version changes
  - been around for 50 years
- you can use advanced editors

Om man ägnar sig åt ett hantverk vet man hur mycket det kan betyda att ha bra verktyg. Högkvalitativa verktyg är inte bara sådana som låter en utföra ett visst arbete mer effektivt och med högre precision och därmed leder till en bättre slutprodukt, de är också sådana som är ergonomiska och känns solida och bra att hålla i handen, vilket gör själva arbetet mer tillfredsställande och njutbart. Bra verktyg är också sådana kan modifiera för specifika syften och projekt och för att bättra passa ens eget specifika arbetsrätt: man kan byta greppet i ett handtag, fila ner en kant som skaver vid en viss typ av fattning, vässa en klinga eller byta ett munstycke. Värdet av kvaliteten i verktyget ökar proportionerlig med användandet. För ett verktyg man införskaffar för att använda en enda gång gör det inte så mycket om det greppet skaver lite eller om det har en kant som stöter emot varje gång man ska fästa det verktygsbältet. För ett verktyg man använder 10 gånger i veckan eller 1000 gånger om dagen kan en mycket liten kvalitetsförbättring, eliminerandet av en i sig själv försumbar olägenhet, eller en marginell förbättring i hanteringen få stor effekt på den övergripande arbetsglädjen.

Som universitetslärare och forskare ägnar man den största delen av sin dag åt att producera och manipulera olika typer av text: e-mail, lektionsplaneringar, anteckningar, utkast, artiklar, feedback till studenter, böcker, för att nämna några. Att undersöka och testa sig fram till det bästa verktyget för att att skapa och manipulera text kan därför ha stor inverkan på ens produktivitet och den tillfredsställelse och glädje man finner i sitt arbete. Även om det tar tid att lära sig ett bättre verktyg än det man för närvarande använder, och att anpassa detta verktyg för sina egna syften, behov och vanor, kommer det nästan garanterat, förutsatt att verktyget faktiskt är bättre, att betala sig.

Det underliggande antagandet i den här texten är att de ordbehandlare de flesta akademiker använder sig av är mycket dåliga verktyg för att producera och manipulera text. (I 95% av fallen är denna ordbehandlare Word, i resterande 5% ett program som imiterar Word, såsom OpenOffice.)

# Hur Vim förändrade mitt liv

Vim är ett effektivt och bekvämt verktyg för att skapa och manipulera digital text. Det släpptes i sin första version 1991 men bygger på och ärver sitt grundläggande arbetsrätt från VI, vilket skapades redan 1976. Vim är gratis och kan fritt distribueras och manipuleras. Jag upptäckte Vim för kring 2014 när jag arbetade med min avhandling och hade insprängda kommentarer med programmeringskod i texten som jag ville kunna dölja när jag inte var intresserad av den. Vim var ett av de alternativ som hade funktioner som gör detta möjligt så jag började undersöka närmare.

Jag vill också poängtera att titeln inte är överdrift. Som universitetslärare och forskare ägnar jag den största delen av sin dag åt att producera och manipulera olika typer av text: e-mail, lektionsplaneringar, anteckningar, utkast, artiklar, feedback till studenter, etc. I mitt och i många andra yrken lever man en stor del av sitt i och genom text; text och bokstäver är en huvudsaklig beståndsdel av den värld man befolkar. En grundläggande omvälvning i det sätt på vilket man interagerar med dessa textuella delar av ens verklighet är därmed en stor förändring av ens liv. Det är denna förändring jag här ska försöka beskriva.

Ibland när man skriver, förutsatt att man har någorlunda god fingersättning i sitt tangentbordsskrivande, uppstår det ett flöde. Medan man skriver är fingrarna så invanda i sina rörelser att man glömmer att de finns, de rör sig av sig själva, och det är som att bokstäverna, och orden förflyttar sig direkt från ens hjärna till skärmen man han har framför sig. Många som musicerar, och alla som spelar datorspel, har upplevt samma sak: övergången mellan kropp och maskin blir så effektiv och automatisk att den blir osynlig. Detta är en mycket behaglig känsla. Men att skriva nya meningar är bara en del av textproduktion, och ju mer komplex texten är ju mindre blir den. Mycket av arbetet med producera text är att redigera: flytta om, ändra, rätta, omformulera. Nästan alltid är detta insprängt i det faktiska skriande: man skriver en mening, kommer på att ett ord i den borde bytas ut eller att den hör bättre hemma tidigare i stycket. I de flesta program för textproduktion gör man detta med musen. Detta skapar ett kognitivt brott. Man tvingar stoppa det flöde man befann sig i i det att man flyttar ena handen till musen, rör den i cirklar för att lokalisera pekaren på skärmen, flyttar pekar dit den ska och klickar på punkten i texten där man vill göra ingreppet eller drar med pekaren för att markera en del av texten som man vill flytta eller ta bort. Sedan, för att lägga in text vid den valda platsen, måste man flytta handen tillbaka till tangentbordet och fortsätta skriva. Eftersom redigering i regel är tätt inbyggt i skrivandet avbryts ständigt flödet med det att man måste hantera musen. Föreställ dig i stället att också redigeringen, att hoppa runt i texten, flytta delar, gå tillbaka två sidor för att se hur man formulerade sig tidigare, öppna en annan fil där man för två månader sedan skriv några anteckningar man nu vill kopiera ifrån --- att allt detta kunde ske med samma ljuvt automatiserade fingerflöde som när man faktiskt skriver ny text. Detta låter Vim en göra. Fingrarna behöver i allt detta aldrig lämna sina korrekta platser (med pekfingrarna på F och J) och man kan redigera text med samma typ av motoriskt, automatiserade, behagliga flöde som man trycker på tangenterna för att lägga till ny text. För mig var upptäckten att detta är möjligt (att det ens skulle kunna vara möjligt fanns inte inom min horisont) inget mindre än en revolution. I en populär introduktionsbok till Vim kallas detta "edit text at the speed of thought", en bara delvis överdriven men mycket träffande beskrivning.

Det att kunna redigera text med tankens snabbhet möjliggörs genom att tangentbordet i Vim har två huvudsakliga funktioner vilka man ständigt växlar mellan. Dessa kallas *normal mode* och *insert mode*. I normal mode fyller tangenterna på tangentbordet inte inte funktionen att de lägger in en given bokstav i texten utan är var och en i stället vad som kan betraktas som kortkommandon. Dessa är dels kommandon för att röra sig i texten, som att hoppa till nästa eller föregående paragraf, ord, mening eller skiljetecken, och dels kommandon för att manipulera texten, som att kopiera, ta bort, byta ut. I normal mode fungerar tangentbordet så som det göra i andra program, dvs. att varje tangenttryck lägger in det givna tecknet där markören är placerad i texten. Genom att kombinera kommandon i normal mode för att röra sig och och manipulera, med att "skiva vanligt" i insert mode kan man, när detta arbetssätt satt sig i muskelminnet, göra alla tänkbara redigeringar med hjälp av tangentbordet i ett och samma flöde.

Låt oss illustra med ett exempel. Säg du efter att ha skrivit en lång mening ser att du vill lägga till ordet "att" efter första ordet i meningen innan du fortsätter skriva. I Vim kan du kära detta genom att skriva följande

<kb>(ea att<ESC>A</kb>

och sedan bara fortsätta skriva.

Låt oss packa upp detta

- `(` placerar markören i början av meningen
- `e` placerar markören i slutet av ordet du är på (nu det första i meningen)
- `a` startar insert mode efter markören.

- Nu i insert moder skriver du det du vill lägga till nämligen `_att` (där `_` representerar mellanslag)

- <ESC> tar dig ut ur insert mode tillbaka till normal mode så att du kan flytta dig i texten igen.

- A sätter dig i insert mode i slutet av raden och du kan fortsätta skriva.

Allt detta utan att du lyfter händerna från tangentbordet (du behöver inte ens använda piltangenterna) och utan att du bryter ditt fingerflöde.

För att detta ska fungera någorlunda effektivt måste lära sig ett antal funktioner hos tangenter i normal mode. Uppskattningsvis krävs 20 för effektiv grundläggande textredigering. Man behöver inte bara lära sig dessa funktioner utan också få in dem i muskelminnet för att utföra dem snabbt. Detta tar viss tid att träna in. Systemet med specifika funktioner för alla tangenter i nomral mode innebär också att Vim inte är ett program man kan öppna och förvänta sig kunna använda direkt. Man måste investera i det för att få det att funka. En vanlig uppfattning är att det tar en vecka av att använda Vim innan man blir bekväm med det och får upp en hyfsad fart.

[![Praktisk översikt över tangenternas funktioner i *normal mode*.](http://www.viemu.com/vi-vim-cheat-sheet.gif)](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)

Känslan, den typ av rymd man träder in i, när man öppnar ett dokument i Vim skiljer sig radikalt från känslan när man öppnar ett dokument i en ordbehandlare som Word, OpenOffice, eller liknande. Jag älskar känslan av att träda in i Vim. Det är en känsla av att mina tankar och intentioner direkt överförs till operationer i datorn.
