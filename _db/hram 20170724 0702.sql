﻿--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.2.76.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 24.07.2017 07:02:52
-- Версия сервера: 5.7.19-log
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE hram;

--
-- Описание для таблицы main_menu
--
DROP TABLE IF EXISTS main_menu;
CREATE TABLE main_menu (
  id INT(11) NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(255) DEFAULT NULL,
  item_route VARCHAR(255) DEFAULT NULL,
  is_active TINYINT(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы news
--
DROP TABLE IF EXISTS news;
CREATE TABLE news (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  news_title VARCHAR(512) DEFAULT NULL,
  news_description VARCHAR(512) DEFAULT NULL,
  news_text TEXT DEFAULT NULL,
  news_image VARCHAR(255) DEFAULT NULL,
  is_active TINYINT(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы pages
--
DROP TABLE IF EXISTS pages;
CREATE TABLE pages (
  id INT(11) NOT NULL AUTO_INCREMENT,
  page_alias VARCHAR(255) DEFAULT NULL,
  page_title VARCHAR(255) DEFAULT NULL,
  page_text TEXT DEFAULT NULL,
  page_type INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

-- 
-- Вывод данных для таблицы main_menu
--
INSERT INTO main_menu VALUES
(1, 'Главная', 'home', 1),
(2, 'Новости', 'new', 1),
(3, 'О храме', 'about', 1),
(4, 'Расписание Богослужений', 'schedule', 1),
(5, 'Галерея', 'gallery', 1),
(6, 'Контакты', 'contacts', 1),
(7, 'И еще', '/', 1);

-- 
-- Вывод данных для таблицы news
--
INSERT INTO news VALUES
(1, '2017-04-24 22:43:45', 'ГОТОВИМСЯ К РАДОНИЦЕ', 'Во вторник Фоминой седмицы Святая Церковь совершает службу с поминовением усопших — этот день известен под названием Радоница.', '<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>Во вторник Фоминой седмицы Святая Церковь совершает службу с поминовением усопших — этот день известен под названием Радоница.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>Радоница обязана своим происхождением тому уставному предписанию, по которому в Великом посте поминовение усопших, не совершается в свое время по случаю великопостной службы и переносится на один из ближайших будничных дней, в который может быть совершена не только панихида, но и полная Литургия. Таким и является вторник Фоминой седмицы, так как накануне понедельника после вечерни, еще нельзя совершать панихиду, как должно быть при поминовении.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>Особое место Радоницы в годичном круге церковных праздников ― сразу после Светлой пасхальной недели ― как бы обязывает христиан не углубляться в переживания по поводу смерти близких, а, наоборот, радоваться их рождению в другую жизнь ― жизнь вечную. Победа над смертью, одержанная смертью и Воскресением Христа, вытесняет печаль о временной разлуке с родными, и поэтому мы, по слову митрополита Антония Сурожского, «с верой, надеждой и пасхальной уверенностью стоим у гроба усопших». Ведь, поминовение усопших в этот день совершается также и на кладбищах, куда верующие вместе с молитвой приносят близким усопшим и всем православным христианам радостную весть о Воскресении Христовом, предвозвещающем общее воскресение умерших и жизнь «в невечернем дни Царствия Христова». Отсюда и сам день поминовения называется Радоницей.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>По свидетельству святителя Иоанна Златоуста, этот праздник отмечался на христианских кладбищах уже в древности. «Постараемся, сколько возможно, помогать усопшим, вместо слез, вместо рыданий, вместо пышных гробниц ― нашими о них молитвами, милостынями и приношениями, дабы таким образом и им, и нам получить обетованные блага», ― пишет святитель.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>К сожалению, в некоторых семьях существует кощунственный обычай сопровождать эти посещения могил своих родных диким пьяным разгулом в сочетании с особенно недопустимыми языческими обычаями. Кладбища ― это священные места, где покоятся тела умерших до будущего воскресения. Даже по законам языческих государств усыпальницы считали священными и неприкосновенными. Поэтому следует помнить, что вести себя на кладбище христианину подобает соответствующим образом.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>Молитва за усопших ― это самое большое и главное, что мы можем сделать для тех, кто отошел в мир иной. По большому счету, покойник не нуждается ни в гробе, ни в памятнике ― все это дань традициям, пусть и благочестивым. Но вечно живая душа почившего испытывает великую потребность в нашей постоянной молитве, поскольку сама она уже не может творить добрых дел и повлиять на свою загробную участь.</p>\r\n<p style=''text-indent: 10px; font-size: 110%; text-align: justify;''>Исходя из этого, лучшим обычаем праздника Радоницы для каждого христианина, было бы: прежде посещения кладбища, прийти в храм к началу службы, подать записку с именами усопших для поминовения в алтаре за проскомидией. При совершении этой службы, за души усопших священником вынимаются из особой просфоры частички, а затем в знак омовения их грехов, опускаются в Чашу со Святыми Дарами. Если поминающий в этот день сам причастится Тела и Крови Христовой, его прошения об усопших будут более близки ко Господу.</p>\r\n', 'padonica01.jpeg', 1),
(2, '2017-04-29 22:48:36', 'ЗІ СВЯТОМ ВАС, ДОРОГІ ЖІНКИ МИРОНОСИЦІ', 'Церква прославляє подвиг святих жінок-мироносиць - Марії Магдалини, Марії Клеопової, Саломії, Іоанни, Марфи і Марії, Сусанни та інших. Вони були супутницями Христа, служили Вчителеві, були віддані йому серцем та страждали разом з Ним. Вони супроводжували Ісуса Христа під час подорожей та йшли з ним на хресну смерть — на Голгофу.', '<p class=''news-text-1''>Церква прославляє подвиг святих жінок-мироносиць - Марії Магдалини, Марії Клеопової, Саломії, Іоанни, Марфи і Марії, Сусанни та інших. Вони були супутницями Христа, служили Вчителеві, були віддані йому серцем та страждали разом з Ним. Вони супроводжували Ісуса Христа під час подорожей та йшли з ним на хресну смерть — на Голгофу.</p>\r\n<p class=''news-text-1''>Вони були свідками хресних страждань Господа. Після хресної смерті Спасителя саме вони затемна поспішили до Гробу Господнього аби помазати тіло Христа миром. Вони ж першими і дізналися, що Христос Воскрес. Вперше після хресної смерті Спаситель явився жінці – Марії Магдалині. Згодом, за переказами, свята рівноапостольна Марія Магдалина піднесла римському імператору Тиберію червоне яйце зі словами -  «Христос Воскрес!», звідки й пішов звичай на Великдень фарбувати яйця.</p>\r\n<p class=''news-text-1''>Святі жінки-мироносиці являють нам приклад істинної жертовної любові і самовідданого служіння Господу. Свята Православна церква відзначає цей день як свято всіх жінок-християнок. В цей день відзначається їх особливо важлива роль у сім”ї та суспільстві.</p>\r\n\r\n ', 'jen-mironosec.jpg', 1),
(3, '2017-07-23 08:30:53', 'NEWS1', 'NeWS1 ', 'ldgldfkdfl', NULL, 1),
(4, '2017-07-23 08:30:53', 'news2', 'news 2', 'news2', NULL, 1),
(5, '2017-07-23 08:30:53', 'news3', 'news 3', 'news 3', NULL, 1);

-- 
-- Вывод данных для таблицы pages
--
INSERT INTO pages VALUES
(1, 'georg', 'ЖИТИЕ СВЯТОГО ВЕЛИКОМУЧЕНИКА ГЕОРГИЯ ПОБЕДОНОСЦА', '         <hr>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Великомученик Георгий был сыном богатых и благочестивых родителей, воспитавших его в христианской вере. Родился он в городе Бейрут (в древности – Белит) у подножия Ливанских гор.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Поступив на военную службу, великомученик Георгий выделялся среди прочих воинов своим умом, храбростью, физической силой, воинской осанкой и красотой. Достигнув вскоре звания тысяченачальника, св. Георгий сделался любимцем императора Диоклитиана. Диоклитиан был талантливым правителем, но фанатичным приверженцем римских богов. Поставив себе целью возродить в Римской империи отмирающее язычество, он вошел в историю как один из самых жестоких гонителей христиан.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Услышав однажды на суде бесчеловечный приговор об истреблении христиан, св. Георгий воспламенился состраданием к ним. Предвидя, что его тоже ожидают страдания, Георгий раздал свое имущество бедным, отпустил на волю своих рабов, явился к Диоклитиану и, объявив себя христианином, обличил его в жестокости и несправедливости. Речь св. Георгия была полна сильных и убедительных возражений против императорского приказа преследовать христиан.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">После безрезультатных уговоров отречься от Христа император приказал подвергнуть святого различным мучениям. Св. Георгий был заключен в темницу, где его положили спиной на землю, ноги заключили в колодки, а на грудь положили тяжелый камень. Но св. Георгий мужественно переносил страдания и прославлял Господа. Тогда мучители Георгия начали изощряться в жестокости. Они били святого воловьими жилами, колесовали, бросали в негашеную известь, принуждали бежать в сапогах с острыми гвоздями внутри. Святой мученик все терпеливо переносил. В конце концов император приказал отрубить мечом голову святому. Так святой страдалец отошел ко Христу в Никомидии в 303 году.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Великомученика Георгия за мужество и за духовную победу над мучителями, которые не смогли заставить его отказаться от христианства, а также за чудодейственную помощь людям в опасности – называют еще Победоносцем. Мощи святого Георгия Победоносца положили в палестинском городе Лида, в храме, носящем его имя, глава же его хранилась в Риме в храме, тоже посвященном ему.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">На иконах св. Георгий изображается сидящим на белом коне и поражающим копьем змия. Это изображение основано на предании и относится к посмертным чудесам святого великомученика Георгия. Рассказывают, что недалеко от места, где родился св. Георгий в городе Бейруте, в озере жил змей, который часто пожирал людей той местности. Что это был за зверь – удав, крокодил или большая ящерица – неизвестно.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Суеверные люди той местности для утоления ярости змея начали регулярно по жребию отдавать ему на съедение юношу или девицу. Однажды жребий выпал на дочь правителя той местности. Ее отвели к берегу озера и привязали, где она в ужасе стала ожидать появления змея.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Когда же зверь стал приближаться к ней, вдруг появился на белом коне светлый юноша, который копьем поразил змея и спас девицу. Этот юноша был святой великомученик Георгий. Таким чудесным явлением он прекратил уничтожение юношей и девушек в пределах Бейрута и обратил ко Христу жителей той страны, которые до этого были язычниками.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Можно предположить, что явление святого Георгия на коне для защиты жителей от змея, а также описанное в житии чудесное оживление единственного вола у земледельца послужили поводом к почитанию святого Георгия покровителем скотоводства и защитником от хищных зверей.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">В дореволюционное время в день памяти святого Георгия Победоносца жители русских деревень в первый раз после холодной зимы выгоняли скот на пастбище, совершив молебен святому великомученику с окроплением домов и животных святой водой. День великомученика Георгия в народе еще называют «Юрьев день», в этот день, до времен царствования Бориса Годунова, крестьяне могли переходить к другому помещику.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Св. Георгий – покровитель воинства. Изображение Георгия Победоносца на коне символизирует победу над диаволом – «древним змием» (Откр.12:3, 20:2).</p>     \r\n\r\n<br><center><h4>10/23 ноября – Колесование святого великомученика Георгия</h4></center><br>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Грузия, просвещенная христианской верой святой равноапостольной Ниной († 335), родственницей святого великомученика Георгия Победоносца († 303, память 23 апреля), особо чтит святого Георгия, как своего покровителя. Одно из наименований Грузии – в честь Георгия (это название сохраняется и сейчас во многих языках мира). В честь великомученика святая Нина установила праздник. Он совершается и поныне в Грузии 10 ноября – в воспоминание колесования святого Георгия. В 1891 году на Кавказе, вблизи села Кахи Закатальского округа, построен на месте древнего новый храм в честь святого великомученика Георгия Победоносца к которому стекается множество богомольцев разных вероисповеданий.</p>\r\n\r\n<br><center><h4>3/16 ноября – Освящение храма святого великомученика Георгия в Лидде</h4></center><br>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Город Лидда (Лод) – родина великомученика Георгия Победоносца. Здесь был дом его матери, здесь прошло его детство. Святой великомученик Георгий был римским воином, пострадал он при императоре Диоклитиане в Никомидии в начале IV века. Мощи его христиане перенесли на родину, в Лидду, и здесь он был погребен.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Гробница, в которой были положены мощи великомученика, сейчас расположена в крипте православного храма, посвященного великомученику Георгию. В самом храме имеется частица мощей святого Георгия, а также цепь, которой был скован великомученик.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Первую церковь здесь возвели в VI веке. Храм несколько раз разрушался и в своем нынешнем виде был восстановлен лишь в 1872 году благодаря пожертвованиям из России. Освящение обновленного храма состоялось 3/16 ноября 1872 года , в годовщину того дня, в который он был освящен впервые. Воспоминание о сем знаменательном событии Русская церковь совершает в этот день и до настоящего времени; этот праздник внесен в месяцеслов, в честь сего торжества на Руси строились храмы.</p>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">Также в Лидде апостол Петр исцелил Энея, восемь лет лежавшего в расслаблении (Деян. 9:32-35).</p>\r\n\r\n<br><center><h4>26 ноября/9 декабря – Воспоминание освящения храма великомученика Георгия в Киеве</h4></center><br>\r\n<p style="text-indent: 15px; text-align: justify; font-size: 120%;">У русских князей, начиная с равноапостольного князя Владимира, существовал благочестивый обычай основывать храмы в честь своих Ангелов Хранителей. Так, равноапостольный Владимир, в Святом Крещении Василий, построил в Киеве и Вышгороде храмы во имя святителя Василия Великого, князь Изяслав I (1054–1068), в Крещении Димитрий, построил в Киеве храм и монастырь во имя святого великомученика Димитрия (память 26 октября), князь Ярослав Мудрый (1019–1054), во Святом Крещении Георгий, положил начало храму и мужской обители в честь своего Ангела Хранителя – великомученика Георгия (память 23 апреля), а также построил храм во имя великомученицы Ирины (память 5 мая), Ангела Хранителя своей супруги. Храм в честь великомученика Георгия находился перед вратами Святой Софии, на его строительство князь Ярослав затратил большие средства, в возведении храма принимало участие большое число строителей. 26 ноября храм был освящен святителем Иларионом, митрополитом Киевским (память 21 октября), и установлено ежегодное празднование в честь этого события.</p>\r\n', 1),
(2, 'TEST', 'TEST', 'TEST', 2),
(3, 'history', 'История храма', 'История Храма', 2),
(4, 'hollidays', 'Храмовые праздники', 'Про храмовые праздники', 2),
(5, 'clir', 'Клир', 'Про клир', 2),
(6, 'school', 'Воскресная школа', 'Про воскресную школу', 2);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;