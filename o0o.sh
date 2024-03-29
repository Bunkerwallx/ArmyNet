#!/bin/bash




//*
##
##
##
##
##
## Licencia MIT
## Copyright (c) 2019 BunkerLand
## Se concede permiso, de forma gratuita, a cualquier persona que obtenga una copia de este software y de los archivos de documentación
## asociados (el "Software"), para tratar en el Software sin restricción, incluidos, entre otros, los derechos de uso, copia, modificación, fusión,
## publicación, distribución, sublicencia y/o venta de copias del Software, y para permitir a las personas a las que se les proporcione el Software a hacerlo, 
## sujeto a las siguientes condiciones:
## El aviso de copyright anterior y este permiso se incluirán en todas las copias o partes sustanciales del Software.
## EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, 
## EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD, 
## IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES 
## DE CUALQUIER RECLAMACIÓN, DAÑOS U OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRO MODO, DERIVADA DE, FUERA O EN CONEXIÓN 
## CON EL SOFTWARE O EL USO U OTROS TRATOS EN EL SOFTWARE.
##
##
## EL AUTOR RENUNCIA A TODAS LAS GARANTÍAS CON RESPECTO A ESTE SOFTWARE, 
## INCLUYENDO TODAS LAS GARANTÍAS IMPLÍCITAS DE COMERCIABILIDAD Y APTITUD. EN NO 
## EL EVENTO SERÁ RESPONSABLE DE CUALQUIER ESPECIAL, INDIRECTO O 
## DAÑOS CONSECUENTES O CUALQUIER DAÑO RESULTANTE DE LA PÉRDIDA DE 
## USO, DATOS O BENEFICIOS, YA SEA EN UNA ACCIÓN DE CONTRATO, NEGLIGENCIA O 
## OTRA ACCIÓN TORTOSA, QUE SURGE DE O EN RELACIÓN CON EL USO O 
## RENDIMIENTO DE ESTE SOFTWARE.
##
##
####################################################
###############$$###################################
##
##
##
## License MIT
## Copyright (c) 2019 BunkerLand
## Permission is granted, free of charge, anyone who gets a copy of this software and documentation files
## associates (the "Software"), to treat in unrestricted Software, including, but not limited to, the rights of use, copy, modification, merger,
## publication, distribution, sublicency and/or sale of copies of the Software, and to allow people to be provided with the Software to do so, 
## subject to the following conditions:
## The above copyright notice and this permission will be included in all substantial copies or parts of the Software.
## SOFTWARE IS PROVIDED "AS", WITHOUT WARRANTY OF ANY KIND, 
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
## SUITABILITY FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO CASE THE AUTHORS OR COPYRIGHT HOLDERS WILL BE RESPONSIBLE 
## OF ANY CLAIM, DAMAGES OR OTHER LIABILITY, EITHER IN A CONTRACT ACTION, AGGRAVATE OR OTHERWISE, ARISING FROM, OFF OR IN CONNECTION 
## WITH SOFTWARE OR USE OR OTHER DEALS IN THE SOFTWARE.
##
## THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, 
## INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.  IN NO 
## EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, INDIRECT OR 
## CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF 
## USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR 
## OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR 
## PERFORMANCE OF THIS SOFTWARE.
##
##
##
#############################
##
##
## Лицензия MIT
## Авторское право (c) 2019 BunkerLand
## Разрешение предоставляется, бесплатно, любой, кто получает копию этого программного обеспечения и файлов документации
## ассоциирует ("программное обеспечение"), лечить в неограниченном программном обеспечении, в том числе, но не ограничиваясь, права использования, копирования, модификации, слияния,
## публикация, распределение, подсознательность и/или продажа копий программного обеспечения, и позволить людям быть предоставлены с программным обеспечением для этого, 
## при условии следующих условий:
## Вышеперечисленное уведомление об авторском праве, и это разрешение будет включено во всех существенных копиях или частях программного обеспечения.
## ПРОГРАММНОЕ ОБЕСПЕЧЕНИЕ ПРЕДОСТАВЛЯЕТСЯ "КАК", БЕЗ ГАРАНТИИ ЛЮБОГО ВИДА, 
## EXPRESS ИЛИ ПОДРАЗУМЕВАЕТСЯ, ВКЛЮЧАЯ, НО НЕ ОГРАНИЧИВАЯСЬ ГАРАНТИЯМИ ТОВАРНОЙ ОТВЕТСТВЕННОСТИ, 
## ПРИГОДНОСТЬ ДЛЯ ОПРЕДЕЛЕННОЙ ЦЕЛИ И НЕ НАРУШЕНИЮ. НИ В КОЕМ СЛУЧАЕ АВТОРЫ ИЛИ ВЛАДЕЛЬЦЫ АВТОРСКИХ ПРАВ НЕ БУДУТ ОТВЕЧАТЬ 
## ЛЮБЫЕ ПРЕТЕНЗИИ, УБЫТКИ ИЛИ ДРУГИЕ ОБЯЗАТЕЛЬСТВА, ЛИБО В ДОГОВОРНОМ ДЕЙСТВИИ, УСУГУБЛЯЮТСЯ ИЛИ ИНЫМ ОБРАЗОМ, ВЫТЕКАЮТ ИЛИ В СВЯЗИ С ЭТИМ 
## С ПРОГРАММНЫМ ОБЕСПЕЧЕНИЕМ ИЛИ ИСПОЛЬЗОВАНИЕМ ИЛИ ДРУГИМИ СДЕЛОК В ПРОГРАММНОМ ОБЕСПЕЧЕНИИ.
##
##
## АВТОР ОТКАЗЫВАЕТ ВСЕ ГАРАНТИИ В ОТНОШЕНИИ ЭТОГО ПРОГРАММНОГО ОБЕСПЕЧЕНИЯ, 
## ВКЛЮЧАЯ ВСЕ ПОДРАЗУМЕВАЕМЫЕ ГАРАНТИИ ТОВАРНОЙ ПРИГОДНОСТИ И ФИТНЕСА. НЕТ 
## СОБЫТИЕ НЕСЕТ ОТВЕТСТВЕННОСТЬ ЗА ЛЮБЫЕ СПЕЦИАЛЬНЫЕ, КОСВЕННЫЕ ИЛИ 
## КОСВЕННЫЕ УБЫТКИ ИЛИ ЛЮБЫЕ УБЫТКИ, ВОЗНИКАЮЩИЕ В РЕЗУЛЬТАТЕ ПОТЕРИ 
## ИСПОЛЬЗУЙТЕ, ДАННЫЕ ИЛИ ПРИБЫЛЬ, БУДЬ ТО В ДЕЙСТВИИ ДОГОВОРА, ХАЛАТНОСТИ ИЛИ 
## ДРУГИЕ ПЫТОЧНЫЕ ДЕЙСТВИЯ, ВЫТЕКАЮЩИЕ ИЗ ИЛИ В СВЯЗИ С ИСПОЛЬЗОВАНИЕМ ИЛИ 
## ПРОИЗВОДИТЕЛЬНОСТЬ ЭТОГО ПРОГРАММНОГО ОБЕСПЕЧЕНИЯ.
##
##
##
##
##
##
############################################
############################################
##
##
##
##
##
##
## Lizenz MIT
## Copyright (c) 2019 BunkerLand
## Erlaubnis wird gewährt, kostenlos, jeder, der eine Kopie dieser software und dokumentationsdateien erhält
## associates (die "Software"), um in uneingeschränkten Software zu behandeln, einschließlich, aber nicht beschränkt auf die Rechte der Verwendung, Kopie, Änderung, Fusion,
## Veröffentlichung, Verteilung, sublikenz und/oder Verkauf von Kopien der Software und ermöglichen es den Menschen, die Software zu tun, dies zu tun, 
## unter den folgenden Bedingungen:
## Die oben genannte urheberrechtsanweisung und diese Erlaubnis wird in allen wesentlichen Kopien oder teilen der Software enthalten sein.
## SOFTWARE WIRD "AS", OHNE GARANTIE FÜR JEDE ART BEREITGESTELLT, 
## EXPRESS ODER IMPLIZIT, EINSCHLIEßLICH, ABER NICHT BESCHRÄNKT AUF DIE GEWÄHRLEISTUNGEN DER KAUFMANNBARKEIT, 
## EIGNUNG FÜR EINEN BESTIMMTEN ZWECK UND NICHTVERLETZUNG. IN KEINEM FALL WERDEN DIE AUTOREN ODER URHEBERRECHTSINHABER VERANTWORTLICH SEIN 
# NR. JEGLICHER ANSPRUCH, SCHÄDEN ODER SONSTIGE HAFTUNG, ENTWEDER IN EINER VERTRAGSWIRKUNG, VERSCHLIMMERN ODER ANDERWEITIG, AUS, ODER IM ZUSAMMENHANG 
## MIT SOFTWARE ODER NUTZUNG ODER ANDEREN ANGEBOTEN IN DER SOFTWARE.
##
##
##
## DER AUTOR LEHNT ALLE GARANTIEN IN BEZUG AUF DIESE SOFTWARE AB, 
## EINSCHLIEßLICH ALLER STILLSCHWEIGENDEN GARANTIEN DER KAUFMANNSCHAFT UND FITNESS. IN NEIN 
## EVENT HAFTET DER AUTOR FÜR BESONDERE, INDIREKTE ODER 
## FOLGESCHÄDEN ODER SCHÄDEN, DIE AUS VERLUST VON 
## VERWENDEN, DATEN ODER GEWINNE, OB IN EINEM VERTRAG, FAHRLÄSSIGKEIT ODER 
## ANDERE TORHAFTE WIRKUNG, DIE AUS ODER IM ZUSAMMENHANG MIT DER VERWENDUNG ODER 
## LEISTUNG DIESER SOFTWARE.
##
##
##
##
##
##########$$$#####################
##########################
##
##
#### رخصة mit
## حقوق الطبع والنشر (ج) 2019 بونكرلاند
## يتم منح إذن، مجانا ، أي شخص يحصل على نسخة من هذا البرنامج وملفات الوثائق
## شركاء ("البرمجيات") ، لعلاج في البرمجيات غير المقبولة، بما في ذلك، ولكن لا تقتصر على حقوق الاستخدام ، ونسخ ، تعديل ، الاندماج,
## نشر ، توزيع ، سنبليكنسي و/أو بيع نسخ من البرنامج، والسماح للناس أن يتم توفير البرنامج للقيام بذلك, 
## رهنا بالشروط التالية:
## إشعار حقوق الطبع والنشر أعلاه وسيتم تضمين هذا الإذن في جميع نسخ أو أجزاء كبيرة من البرنامج.
## يتم توفير البرنامج "كما" ، دون ضمان من أي نوع, 
## express أو ضمنا، بما في ذلك ولكن لا تقتصر على ضمانات القدرة على البضائع, 
## مدى ملاءمة لغرض معين وغير التعدي. في أي حال من الأحوال سوف يكون أصحاب البلاغ أو أصحاب حقوق التأليف والنشر مسؤولا 
## من أي مطالبة أو أضرار أو مسؤولية أخرى، إما في إجراءات عقد، أو تفاقم أو خلاف ذلك ، الناشئة عن أو إيقاف أو في اتصال 
## مع البرمجيات أو استخدام أو صفقات أخرى في البرنامج.
##
##
##
## الضمانات فيما يتعلق بهذا البرنامج, 
## بما في ذلك جميع الضمانات الضمنية من القدرة على البضائع واللياقة البدنية. في لا 
## الحدث يكون مسؤولا عن أي خاص أو غير مباشر أو غير مباشر 
## الأضرار الناتجة عن الأضرار أو أي أضرار على الإطلاق نتيجة فقدان 
## استخدام البيانات أو الأرباح، سواء في عمل العقد أو الإهمال أو 
##العمل وهمية الأخرى، الناشئة عن أو فيما يتعلق باستخدام أو 
## أداء هذا البرنامج.
##
##
###########################################
#######################$$$#$##
##
##
##
##
##许可证麻省理工学院
##版权(c)2019BunkerLand
##许可是免费的，任何人都可以获得此软件和文档文件副本的副本
##associates（"软件"），以在不受限制的软件中对待，包括但不限于使用权，复制，修改，合并,
##软件的出版、发行、分权和/或销售，并允许人们提供该软件这样做, 
##受以下条件约束:
##以上版权声明，本许可将包含在软件的所有实质性副本或部分。
##软件提供"作为"，没有任何类型的保修, 
##明示或暗示，包括但不限于适销性的保证, 
##适合特定目的和非侵权。 在任何情况下，作者或版权持有人将负责 
##任何索赔、损害或其他责任，无论是在合同行动、加重或其他方面，因、关闭或连接而引起的索赔、损害或其他责任 
##软件或使用或其他交易软件。
##
## 作者对此软件不承担所有保证, 
## 包括所有默示的适销性和健身保证。 不 
## 活动由提交人负责任何特殊、间接或 
## 因损失而造成的后果性损害或任何损害 
## 无论是在合同、疏忽或利润的使用、数据或利润 
## 其他受折磨行动，因使用或与使用或相关而引起 
## 此软件的性能。
##
##
##
## רישיון מיט
## זכויות יוצרים (ג) 2019 בונקרלנד
## אישור ניתן, ללא תשלום, כל מי שמקבל עותק של קבצי תוכנה ותיעוד זה
## שותפים ("התוכנה"), לטפל בתוכנה בלתי מוגבלת, כולל, אך לא מוגבל, לזכויות השימוש, העתק, שינוי, מיזוג,
## פרסום, הפצה, סובליליות ו/או מכירת עותקים של התוכנה, וכדי לאפשר לאנשים להיות מסופקים עם התוכנה לעשות זאת, 
## בכפוף לתנאים הבאים:
## הודעת זכויות היוצרים לעיל והרשאה זו תיכלל בכל העותקים או החלקים המהותיים של התוכנה.
## תוכנה מסופקת "כמו", ללא אחריות מכל סוג שהוא, 
## אקספרס או משתמע, כולל אך לא מוגבל לאחריות של סחורה, 
## התאמה למטרה מסוימת ולא הפרה. בשום מקרה המחברים או בעלי זכויות היוצרים יהיו אחראים 
## מכל תביעה, נזקים או אחריות אחרת, או בפעולה חוזה, להחמיר או אחרת, הנובע, כבוי או בקשר 
## עם תוכנה או שימוש או עסקאות אחרות בתוכנה.
##
##
## המחבר קורא את כל האחריות לגבי תוכנה זו, 
## כולל כל אחריות מרומזת של סחורה וכושר. אין 
## אירוע יהיה המחבר להיות אחראי לכל מיוחד, עקיף או 
## נזקים תוצאתיים או כל נזק מה שנובע מאובדן 
## שימוש, נתונים או רווחים, אם בפעולה של חוזה, רשלנות או 
## פעולה פורה אחרת, הנובעת או בקשר לשימוש או 
## ביצועים של תוכנה זו.
##
##
##
#############################
##
## Լիցենզիա MIT
## Հեղինակային իրավունք (c) 2019 BunkerLand
## Թույլտվություն տրվում, անվճար, ցանկացած մեկը, ով ստանում է այս ծրագրային ապահովման եւ փաստաթղթերի ֆայլերի պատճենը
## associates ("ծրագրային"), բուժել անիրական ծրագրերում, այդ թվում, բայց չի սահմանափակվում, օգտագործման իրավունքները, պատճենեք, փոփոխումը, միաձուլումը, միաձուլումը,
## հրատարակություն, բաշխում, sublicency եւ/կամ վաճառքի պատճենների ծրագրային ապահովման, եւ թույլ տալ մարդկանց տրամադրել ծրագրային ապահովման անել այնպես,, 
## ենթակա է հետեւյալ պայմաններին:
## Վերը նշված հեղինակային իրավունքի ծանուցման եւ այս թույլտվությունը կընդգրկվի ծրագրային բոլոր էական պատճենների կամ մասերի:
## ԾՐԱԳՐԱՅԻՆ ԱՊԱՀՈՎՄԱՆ ՏՐԱՄԱԴՐՎՈՒՄ Է "ՈՐՊԵՍ", ԱՌԱՆՑ ՈՐԵՒԷ ՏԵՍԱԿԻ ԵՐԱՇԽԻՔԻ, 
## EXPRESS ԿԱՄ ԵՆԹԱԴՐՅԱԼ, ԱՅԴ ԹՎՈՒՄ, ԲԱՅՑ ՉԻ ՍԱՀՄԱՆԱՓԱԿՎՈՒՄ ԵՐԱՇԽԻՔՆԵՐԻ ՎԱՃԱՌԵԼԻՈՒԹՅԱՆ, 
## SUITABILITY ՀԱՄԱՐ ՈՐՈՇԱԿԻ ՆՊԱՏԱԿԻ ԵՒ ՈՉ ԽԱԽՏԵԼԸ: ՈՉ ՄԻ ԴԵՊՔՈՒՄ ՀԵՂԻՆԱԿՆԵՐԸ ԿԱՄ ՀԵՂԻՆԱԿԱՅԻՆ ԻՐԱՎՈՒՆՔԻ ԿՐՈՂՆԵՐԸ ՊԱՏԱՍԽԱՆԱՏՈՒ ԿԼԻՆԵՆ 
## ՑԱՆԿԱՑԱԾ ՊԱՀԱՆՋԻ, ՎՆԱՍՆԵՐԻ ԿԱՄ ԱՅԼ ՊԱՏԱՍԽԱՆԱՏՎՈՒԹՅԱՆ, ԿԱՄ ՊԱՅՄԱՆԱԳՐՈՎ ԳՈՐԾՈՂՈՒԹՅԱՆ, AGGRAVATE ԿԱՄ ԱՅԼ ԿԵՐՊ, ԲԽՈՂ, ԿԱՄ ԿԱՊԻ ՄԵՋ 
## ԾՐԱԳՐԱՅԻՆ ԱՊԱՀՈՎՄԱՆ ԿԱՄ ՕԳՏԱԳՈՐԾՄԱՆ ԿԱՄ ԱՅԼ ԳՈՐԾԱՐՔՆԵՐԻ ԾՐԱԳՐԱՅԻՆ ԱՊԱՀՈՎՄԱՆ.
##
##
## ՀԵՂԻՆԱԿԸ ՀՐԱԺԱՐՎՈՒՄ Է ԲՈԼՈՐ ԵՐԱՇԽԻՔՆԵՐԻՑ ՎԵՐԱԲԵՐՅԱԼ ԱՅՍ ԾՐԱԳՐԱՅԻՆ ԱՊԱՀՈՎՄԱՆ, 
## ԱՅԴ ԹՎՈՒՄ ԲՈԼՈՐ ԵՆԹԱԴՐՅԱԼ ԵՐԱՇԽԻՔՆԵՐԸ ՎԱՃԱՌԱԿԱՆԱԿԱՆՈՒԹՅԱՆ ԵՒ ՖԻԹՆԵՍԻ. Ոչ 
## ՄԻՋՈՑԱՌՈՒՄԸ ՊԱՏԱՍԽԱՆԱՏՈՒ ԿԼԻՆԻ ՑԱՆԿԱՑԱԾ ՀԱՏՈՒԿ, ԱՆՈՒՂՂԱԿԻ ԿԱՄ 
## CONSEQUENTIAL ՎՆԱՍ ԿԱՄ ՈՐԵՒԷ ՎՆԱՍ ԱՐԴՅՈՒՆՔՈՒՄ ԿՈՐՍՏԻ 
## ՕԳՏԱԳՈՐԾԵԼ, ՏՎՅԱԼՆԵՐ ԿԱՄ ՕԳՈՒՏՆԵՐ, ԹԵ ԱՐԴՅՈՔ ՊԱՅՄԱՆԱԳՐԻ ԳՈՐԾՈՂՈՒԹՅԱՆ, ԱՆՓՈՒԹՈՒԹՅԱՆ ԿԱՄ 
## ՄԵԿ ԱՅԼ ԽՈՇՏԱՆԳԵԼ ԱԿՑԻԱՆ, ՈՐԸ ԾԱԳՈՒՄ Է ԿԱՄ ԿԱՊՎԱԾ ՕԳՏԱԳՈՐԾՄԱՆ ԿԱՄ 
## ԱՅՍ ԾՐԱԳՐԱԿԱԶՄԻ ԿԱՏԱՐՈՒՄԸ:
##
##
####################################################
###############$$###################################
##
##
##
##
##
##
## Licenza MIT
## Copyright (c) 2019 BunkerLand
## Autorizzazione è concessa, gratuitamente, chiunque abbia una copia di questo software e file di documentazione
## associates (il "Software"), per trattare in Software non corretti, inclusi, ma non limitati a, i diritti di utilizzo, copia, modifica, fusione,
## pubblicazione, distribuzione, sublicenza e/o vendita di copie del Software, e per consentire alle persone di essere fornite con il Software di farlo, 
## soggetti alle seguenti condizioni:
## L'avviso di copyright di cui sopra e questa autorizzazione sarà inclusa in tutte le copie o parti sostanziali del Software.
## SOFTWARE È FORNITO "COME", SENZA GARANZIA DI ALCUN TIPO, 
## EXPRESS O IMPLICITO, INCLUSO MA NON LIMITATO ALLE GARANZIE DI COMMERCIABILITÀ, 
## IDONEITÀ PER UNO SCOPO PARTICOLARE E NON VIOLAZIONE. IN NESSUN CASO GLI AUTORI O I TITOLARI DI COPYRIGHT SARANNO RESPONSABILI 
## DI QUALSIASI RECLAMO, DANNI O ALTRA RESPONSABILITÀ, SIA IN UN'AZIONE CONTRATTUALE, AGGRAVATA O ALTRIMENTI, DERIVANTI DA, OFF O IN CONNESSIONE 
## CON SOFTWARE O UTILIZZO O ALTRE OFFERTE NEL SOFTWARE.
##
##
## L'AUTORE RINUNCIA TUTTE LE GARANZIE RIGUARDANTI QUESTO SOFTWARE, 
## COMPRESE TUTTE LE GARANZIE IMPLICITE DI COMMERCIABILITÀ E FITNESS. NO 
## L'EVENTO SARÀ RESPONSABILE DI QUALSIASI SPECIALE, INDIRETTO O 
## DANNI CONSEQUENZIALI O DANNI DERIVANTI DALLA PERDITA DI 
## USO, DATI O BENEFICI, SIA IN UN'AZIONE CONTRATTUALE, NEGLIGENZA O 
## UN'ALTRA AZIONE TORTURATA, CHE NASCE DA O IN CONNESSIONE CON L'USO O 
## PERFORMANCE DI QUESTO SOFTWARE.
##
##
####################################################
###############$$###################################
##

##
##
##
##
##
## Dozvola MIT
## Autorska prava (c) 2019 BunkerLand
## Dozvola se odobrava, besplatno, svako ko dobije kopiju ovog softvera i dokumentacionih datoteka
## saradnici ("softver"), za liječenje neograničenog softvera, uključujući, ali ne ograničavajući se na, prava upotrebe, kopiranja, modifikacije, spajanja,
## publikacija, distribucija, sublicencija i/ili prodaja kopija softvera, i omogućiti ljudima da se to daju softver za to, 
## podložno sljedećim uslovima:
## Gore navedeno Obaveštenje o autorskim pravima i ova dozvola će biti uključena u sve značajne kopije ili delove softvera.
## SOFTVER JE OBEZBEĐEN "KAO", BEZ GARANCIJE BILO KOJE VRSTE, 
## EXPRESS ILI IMPLICIRAN, UKLJUČUJUĆI, ALI NE OGRANIČAVAJUĆI SE NA GARANCIJE ROBE, 
## PRIKLADNOST ZA ODREĐENU SVRHU I NEPOGREŠIVOST. NI U KOM SLUČAJU AUTORI ILI NOSIOCI AUTORSKIH PRAVA NEĆE BITI ODGOVORNI 
## OD BILO KOJE TVRDNJE, ŠTETE ILI DRUGE ODGOVORNOSTI, BILO U UGOVORNOJ AKCIJI, POGORŠANJU ILI NA DRUGI NAČIN, PROIZILAZE IZ, ISKLJUČENO ILI U VEZI 
## SA SOFTVEROM ILI UPOTREBOM ILI DRUGIM PONUDAMA U SOFTVERU.
##
##
## AUTOR ČEKA SVE GARANCIJE U VEZI SA OVIM SOFTVEROM, 
## UKLJUČUJUĆI SVE IMPLICIRANE GARANCIJE ROBE I FITNESA. Ne. 
## DOGAĐAJ ĆE BITI ODGOVORAN ZA BILO KOJI POSEBAN, INDIREKTAN ILI 
## POSLJEDIČNA ŠTETA ILI BILO KAKVA ŠTETA ŠTO REZULTIRA GUBITKOM 
## UPOTREBA, PODACI ILI POGODNOSTI, BILO U UGOVORNOJ AKCIJI, NEMAR ILI 
## JOŠ JEDNA MUČENA AKCIJA, KOJA NASTAJE IZ ILI U VEZI SA UPOTREBOM ILI 
## PERFORMANSE OVOG SOFTVERA.
##
##
####################################################
###############$$###################################
##

*//






# Solicitar al usuario el nombre del proyecto
read -p "Ingrese el nombre del proyecto: " PROJECT_NAME
mkdir "$PROJECT_NAME" && cd "$PROJECT_NAME" || exit

# Lógica para seleccionar el lenguaje y crear la estructura de proyecto correspondiente
case "$1" in
    perl)
        # Crear la carpeta de Perl
        mkdir perl
        cd perl || exit
        echo "Carpeta de Perl creada"

        # Crear el archivo principal de Perl
        touch main.pl
        echo "Archivo 'main.pl' creado"

        echo "¡Estructura de proyecto 'perl/$PROJECT_NAME' creada exitosamente!"
        ;;
    python)
        # Crear la carpeta de Python
        mkdir $PROJECT_NAME
        cd $PROJECT_NAME || touch setup.py  ||  || touch requerido.txt || exit
        echo "Proyecto Python creado"

        # Crear el archivo principal de Python
        touch main.py
        echo "Archivo 'main.py' creado"

        echo "¡Estructura de proyecto 'python/$PROJECT_NAME' creada exitosamente!"
        ;;
    c)
        # Crear la carpeta de C
        mkdir c
        cd c || exit
        echo "Carpeta de C creada"

        # Crear los archivos de código fuente y encabezado
        touch main.c
        echo "Archivo 'main.c' creado"
        mkdir include src tests bin
        touch include/modulo1.h include/modulo2.h
        touch src/modulo1.c src/modulo2.c
        touch tests/test_modulo1.c tests/test_modulo2.c
        touch bin/ejecutable
        touch Makefile README.md

        echo "¡Estructura de proyecto 'c/$PROJECT_NAME' creada exitosamente!"
        ;;
    ruby)
        # Crear la carpeta de Ruby
        mkdir ruby
        cd ruby || exit
        echo "Carpeta de Ruby creada"

        # Crear el archivo principal de Ruby
        touch main.rb
        echo "Archivo 'main.rb' creado"

        echo "¡Estructura de proyecto 'ruby/$PROJECT_NAME' creada exitosamente!"
        ;;
    *)
        echo "Uso: $0 {perl|python|c|ruby}"
        exit 1
        ;;
esac
