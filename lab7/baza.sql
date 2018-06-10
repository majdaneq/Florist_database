/*lab7 zad 1*/
SET storage_engine=INNODB; /*str 25 wyklad 6*/

CREATE TABLE Klienci 
(
idklienta VARCHAR(10) PRIMARY KEY,
haslo VARCHAR(10) NOT NULL, 
nazwa VARCHAR(40) NOT NULL,
miasto VARCHAR(40) NOT NULL,
kod CHAR(6) NOT NULL,
adres VARCHAR(40) NOT NULL,
email VARCHAR(40),
telefon VARCHAR(16) NOT NULL,
fax VARCHAR(16) NOT NULL,
nip  CHAR(13),
regon CHAR(9)
);


CREATE TABLE Kompozycje
(
idkompozycji CHAR(5) PRIMARY KEY,
nazwa CHAR(40) NOT NULL,
opis VARCHAR(100),
cena NUMERIC(7,2) CHECK(cena >= 40.00),
minimum INTEGER, 
stan INTEGER
);


CREATE TABLE Odbiorcy
(
idodbiorcy INTEGER PRIMARY KEY,
nazwa VARCHAR(40) NOT NULL,
miasto VARCHAR(40) NOT NULL,
kod CHAR(6) NOT NULL,
adres VARCHAR(40) NOT NULL
);

CREATE TABLE Zamowienia
(
idzamowienia INTEGER PRIMARY KEY, 
idklienta VARCHAR(10) NOT NULL, /*FK*/
idodbiorcy INTEGER NOT NULL,		/*FK*/
idkompozycji CHAR(5) NOT NULL,	/*FK*/
termin DATE,
cena NUMERIC(7,2),
zaplacone BOOLEAN,
uwagi VARCHAR(200),
FOREIGN KEY (idklienta) REFERENCES klienci(idklienta),
FOREIGN KEY (idodbiorcy) REFERENCES odbiorcy(idodbiorcy),
FOREIGN KEY (idkompozycji) REFERENCES kompozycje(idkompozycji)
);

CREATE TABLE Zapotrzebowanie
(
idzapotrzebowania INTEGER PRIMARY KEY,
idzamowienia INTEGER,
idkompozycji CHAR(5) ,		/*FK*/
ilosc INTEGER,
FOREIGN KEY (idzamowienia) REFERENCES zamowienia(idzamowienia),
FOREIGN KEY (idkompozycji) REFERENCES kompozycje(idkompozycji)
);


/*zad2idklienta VARCHAR(10) PRIMARY KEY,
haslo VARCHAR(10) NOT NULL, 
nazwa VARCHAR(40) NOT NULL,
miasto VARCHAR(40) NOT NULL,
kod CHAR(6) NOT NULL,
adres VARCHAR(40) NOT NULL,
email VARCHAR(40),
telefon VARCHAR(16) NOT NULL,
fax VARCHAR(16) NOT NULL,
nip  CHAR(13),
regon CHAR(9)*/
INSERT INTO Klienci(idklienta,
haslo, 
nazwa,
miasto,
kod,
adres,
email,
telefon,
fax,
nip,
regon)VALUES("A00001","B00001","Adam Kowalski","Skawina","43-190","Zielona 45b","adamkowalski@gmail.com","600000001","7000000001","N000000000001","R00000001"),
("A00002","AlamaKota","Jan Kowalski","Katowice","42-190","czerwona 45b","jankowalski@gmail.com","600000002","7000000002",NULL,NULL),
("A00003","B00003","Michał Janosik","Mikołów","43-190","Zielona 45b","michaljanosik@gmail.com","600000003","7000000003","N000000000003",NULL),
("A00004","B00004","Paulina Sobczak","Mikołów","43-190","Zielona 45b","sobczak@gmail.com","600000004","7000000004",NULL,NULL),
("A00005","B00005","Henryk Bąk","Kraków","43-190","Zielona 45b","hbak@gmail.com","600000005","7000000005","N000000000005","R00000005"),
("A00006","B00006","Kazimierz Górski","Katowice","43-190","Zielona 45b","gorski@gmail.com","600000006","7000000006",NULL,NULL),
("A00007","B00007","Irena Wójcik","Sosnowiec","43-190","Zielona 45b","wojcik@gmail.com","600000007","7000000007","N000000000007","R00000007"),
("A00008","B00008","Marian Chmielewski","Warszawa","43-190","Zielona 45b","chmielewski@gmail.com","600000008",NULL,NULL),
("A00009","B00009","Małgorzata Jaworska","Warszawa","43-190","Zielona 45b","mjaworska@gmail.com","600000009","7000000009","N000000000009","R00000009"),
("A00010","B00010","Ewa Duda","Kraków","43-190","Zielona 45b","eduda@gmail.com","600000010","7000000010",NULL,NULL),
("A00011","B00011","Jakub Malinowski","Skawina","43-190","Zielona 45b","jmalinowski@gmail.com","600000011","7000000011","N000000000011","R00000011"),
("A00012","B00012","Jadwiga Brzezińska","Mikołów","43-190","Zielona 45b","brzezinska@gmail.com","600000012",NULL,NULL),
("A00013","B00013","Marcin Szymczak","Mikołów","43-190","Zielona 45b","szymczak@gmail.com","600000013","7000000013","N000000000013","R00000013"),
("A00014","B00014","Joanna Baranowska","Mikołów","43-190","Zielona 45b","baranowska@gmail.com","600000014",NULL,NULL),
("A00015","B00015","Maciej Szczepański","Mikołów","43-190","Zielona 45b","szczepanski@gmail.com","600000015","7000000015","N000000000015","R00000015"),
("A00016","B00016","Czesław Wróbel","Mikołów","43-190","Zielona 45b","wrobel@gmail.com","600000016","7000000016",NULL,NULL),
("A00017","B00017","Jan Kowalski","Katowice","42-190","czerwona 45b","jankowalski@gmail.com","600000017","7000000017","N000000000017",NULL),
("A00018","B00018","Grażyna Górska","Mikołów","43-190","Zielona 45b","ggorska@gmail.com","600000018","7000000018",NULL,NULL),
("A00019","B00019","Wanda Krawczyk","Kraków","43-190","Zielona 45b","wkrawczyn@gmail.com","600000019","7000000019","N000000000019","R00000019"),
("A00020","B00020","Renata Urbańska","Skawina","43-190","Zielona 45b","rurbanska@gmail.com","600000020","7000000020",NULL,NULL),
("A00021","B00021","Wiesława Tomaszewska","Kraków","43-190","Zielona 45b","wTomaszewska@gmail.com","600000021","7000000021","N000000000021",NULL),
("A00022","B00022","Bożena Baranowska","Kraków","43-190","Zielona 45b","bbaranowska@gmail.com","600000022","7000000022","N000000000022","R00000022"),
("A00023","B00023","Ewelina Malinowska","Skawina","43-190","Zielona 45b","emalinowska@gmail.com","600000023","7000000023",NULL,NULL),
("A00024","B00024","Anna Krajewska","Alwernia","43-190","Zielona 45b","akrajewska@gmail.com","600000024","7000000024","N000000000024",NULL),
("A00025","B00025","Mieczysław Zając","Alwernia","43-190","Zielona 45b","mzajac@gmail.com","600000025","7000000025","N000000000025","R00000025"),
("A00026","B00026","Wiesław Przybylski","Katowice","43-190","Zielona 45b","wprzybylski@gmail.com","600000026","7000000026",NULL,NULL),
("A00027","B00027","Dorota Tomaszewska","Sosnowiec","43-190","Zielona 45b","dtomaszewska@gmail.com","600000027","7000000027","N000000000027","R00000027"),
("A00028","B00028","Jerzy Wróblewski","Mikołów","43-190","Zielona 45b","jwroblewski@gmail.com","600000028","7000000028","N000000000028","R00000028"),
("A00029","B00029","Magdalena Adamczyk","Mikołów","43-190","Zielona 45b","madamczyk@gmail.com","600000029","7000000029",NULL,NULL),
("A00030","B00030","Władysław Piotrowski","Mikołów","43-190","Zielona 45b","wpiotrowski@gmail.com","600000030","7000000030",NULL,NULL);

INSERT INTO Kompozycje(idkompozycji,
nazwa,
opis,
cena,
minimum,
stan) VALUES
("K0001","Czerwone Róze","Ładna",40.00,10,5),
("K0002","Białe Róze","piękne",41.00,12,6),
("K0003","Niebieskie Róze","cudowne",42.00,13,7),
("K0004","Białe piwonie","urodzajne",43.00,14,51),
("K0005","Różowe piwonie","urzekający",44.00,15,52),
("K0006","Zółte tulipany","apetyczne",45.00,16,53),
("K0007","Niebieskie tulipany","rosłe",46.00,17,54),
("K0008","Forsycje","zadbane",47.00,18,55),
("K0009","Irysy","Wytworne",48.00,19,56),
("K0010","Jaskry","czarujące",49.00,20,57),
("K0011","Chryzantemy","Hoże",50.00,20,58),
("K0012","Chryzantemy złociste","anielskie",51.00,30,59),
("K0013","Magnolie","arcy-piękne",52.00,40,15),
("K0014","Konwalie","boskie",53.00,50,25),
("K0015","Krokusy","dorodne",54.00,60,35),
("K0016","Stokrotki","fantastyczne",55.00,21,45),
("K0017","Storczyki różowe","przewyborne",56.00,23,55),
("K0018","Mlecze","zjawiskowe",57.00,24,65),
("K0019","Alpejska trawa","rewelacyjne",58.00,25,65),
("K0020","Karczochy","jak z bajki",40.10,26,75),
("K0021","Niezapominajki","jak z obrazka",40.20,15,85),
("K0022","Gerbery","zachwycające",40.30,23,95),
("K0023","Słoneczniki","pierwszej klasy",40.40,24,115),
("K0024","Gwiazda Dawida","apolińskie",40.50,25,225),
("K0025","Barwinek różowy","seraficzne",40.60,26,53),
("K0026","Hiacynty","olśniewające",40.70,27,54),
("K0027","Ciemierniki","kapitalne",40.80,1,52),
("K0028","Grujecznik","rosłe",40.90,12,53),
("K0029","Frezje","zadbane",40.01,3,54),
("K0030","Gozdziki","fantastyczne",40.02,4,55);

INSERT INTO Odbiorcy (idodbiorcy,
nazwa,
miasto,
kod,
adres) VALUES
(1,"Adaś Kowalski1","Mikołów","00-333","Czarna 6"),
(2,"Adam Adamski","Mikołów","00-333","Niebieska 8"),
(3,"Karol Nowak","Zachełmie","00-333","Słoneczna 4"),
(4,"Jan Jasoń","Zachełmie","00-333","Pochmurna 23"),
(5,"Wojciech Wojko","Szczebrzeszyn","00-333","Zółta 2"),
(6,"Adam Broś","Warszawa","00-333","Zielona 11"),
(7,"Karolina Kanior","Warszawa","00-333","Smutna 4"),
(8,"Olga Wojno","Kraków","00-333","Jana Pawła 2 2/4"),
(9,"Szymon Pan","Kraków","00-333","Zielona 1"),
(10,"Roman Romański","Kraków","00-333","Obrońców Westerplatte 22"),
(11,"Paulina Pik","Kraków","00-333","30-lecia 21/33"),
(12,"Paweł Gaweł","Skawina","00-333","Rynek 4"),
(13,"Piotr Nowak","Sosnowiec","00-333","Szara 5"),
(14,"Ada Skok","Kraków","00-333","Reksia 4"),
(15,"Monika Mądra","Kraków","00-333","Pszczółki Maji 16"),
(16,"Michał Masło","Trzebinia","00-333","Adriana Mierzejewskiego 3"),
(17,"Aleksandra Nowakowska","Sosnowiec","00-333","Czarnowiejska 45"),
(18,"Władysław Wagło","Radom","00-333","Mokra 1"),
(19,"Maksymilian Stopka","Kraków","00-333","Dobra 3"),
(20,"Aleksander Nowak","Kraków","00-333","Krupnicza 13"),
(21,"Adam Asfalt","Zachełmie","00-333","Zielona 30"),
(22,"Zofia Figa","Wrocław","00-333","Czerwona 14"),
(23,"Zenon Martyniuk","Kraków","00-333","Dobra 7"),
(24,"Andrzej Duda","Gdańsk","00-333","Kolorowa 20/9"),
(25,"Wojciech Jaruzelski","Kalisz","00-333","Czarnowiejska 45"),
(26,"Ewa Adam","Kraków","00-333","Smoleńsk 10"),
(27,"Kacper Kłos","Kraków","00-333","Czarnowiejska 45"),
(28,"Beata Buczer","Poznań","00-333","Smutna 8"),
(29,"Emil Kowalski","Bydgoszcz","00-333","Lecha Kaczyńskiego 10/4"),
(30,"Bożena Kasprzyk","Toruń","00-333","Wesoła 12");




INSERT INTO Zamowienia(idzamowienia,
idklienta,
idodbiorcy,
idkompozycji,
termin,
cena,
zaplacone,
uwagi) VALUES
(1,"A00001",1,"K0001","2018-01-05",40.00,true,"brak"),
(2,"A00002",2,"K0002","2018-02-05",41.00,true,"brak"),
(3,"A00003",3,"K0003","2018-03-05",42.00,true,"brak2"),
(4,"A00004",4,"K0004","2018-04-05",43.00,true,"brak3"),
(5,"A00005",5,"K0005","2018-05-05",44.00,true,"brak"),
(6,"A00006",6,"K0006","2018-06-05",45.00,true,"brak4"),
(7,"A00007",7,"K0007","2018-07-05",46.00,true,"brak"),
(8,"A00008",8,"K0008","2018-08-05",47.00,true,"brak5"),
(9,"A00009",9,"K0009","2018-09-05",48.00,true,"brak"),
(10,"A00010",10,"K0010","2018-11-05",49.00,true,"brak"),
(11,"A00011",11,"K0011","2018-12-05",140.00,true,"brak"),
(12,"A00012",12,"K0012","2018-10-05",120.00,true,"brak"),
(13,"A00013",13,"K0013","2018-01-05",240.00,true,"brak"),
(14,"A00014",14,"K0014","2011-01-05",340.00,true,"brak"),
(15,"A00015",15,"K0015","2012-01-05",440.00,true,"brak"),
(16,"A00016",16,"K0016","2013-01-05",540.00,false,"brak"),
(17,"A00017",17,"K0017","2014-01-05",640.00,false,"brak"),
(18,"A00018",18,"K0018","2015-01-05",740.00,false,"brak"),
(19,"A00019",19,"K0019","2016-01-05",840.00,false,"brak"),
(20,"A00020",20,"K0020","2017-01-05",940.00,false,"brak"),
(21,"A00021",21,"K0021","2018-01-05",40.10,false,"brak"),
(22,"A00022",22,"K0022","2018-01-05",40.20,false,"brak"),
(23,"A00023",23,"K0023","2018-01-05",40.30,false,"brak"),
(24,"A00024",24,"K0024","2018-01-05",40.40,false,"brak"),
(25,"A00025",25,"K0025","2018-01-05",40.50,false,"brak"),
(26,"A00026",26,"K0026","2018-01-05",40.60,false,"brak"),
(27,"A00027",27,"K0027","2018-01-05",40.70,true,"brak"),
(28,"A00028",28,"K0028","2018-01-05",40.80,true,"brak"),
(29,"A00029",29,"K0029","2018-01-02",40.90,true,"brak"),
(30,"A00030",30,"K0030","2018-01-03",41.00,true,"brak");

INSERT INTO Zapotrzebowanie(idzapotrzebowania,idzamowienia,
idkompozycji,ilosc) VALUES
(1,1,"K0001",0),
(2,2,"K0002",0),
(3,3,"K0003",0),
(4,4,"K0004",0),
(5,5,"K0005",0),
(6,6,"K0006",0),
(7,7,"K0007",0),
(8,8,"K0008",0),
(9,9,"K0009",0),
(10,10,"K0010",0),
(11,11,"K0011",0),
(12,12,"K0012",0),
(13,13,"K0013",0),
(14,14,"K0014",0),
(15,15,"K0015",0),
(16,16,"K0016",0),
(17,17,"K0017",0),
(18,18,"K0018",0),
(19,19,"K0019",0),
(20,20,"K0020",0),
(21,21,"K0021",0),
(22,22,"K0022",0),
(23,23,"K0023",0),
(24,24,"K0024",0),
(25,25,"K0025",0),
(26,26,"K0026",0),
(27,27,"K0027",0),
(28,28,"K0028",0),
(29,29,"K0029",0),
(30,30,"K0030",0);