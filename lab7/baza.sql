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
regon)VALUES("A00001","B00001","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000001","7000000001","N000000000001","R00000001"),
("A00002","B00002","Jan Kowalski","Katowice","42-190","czerwona 45b","jankowalski@gmail.com","600000002","7000000002","N000000000002","R00000002"),
("A00003","B00003","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000003","7000000003","N000000000003","R00000003"),
("A00004","B00004","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000004","7000000004","N000000000004","R00000004"),
("A00005","B00005","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000005","7000000005","N000000000005","R00000005"),
("A00006","B00006","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000006","7000000006","N000000000006","R00000006"),
("A00007","B00007","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000007","7000000007","N000000000007","R00000007"),
("A00008","B00008","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000008","7000000008","N000000000008","R00000008"),
("A00009","B00009","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000009","7000000009","N000000000009","R00000009"),
("A00010","B00010","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000010","7000000010","N000000000010","R00000010"),
("A00011","B00011","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000011","7000000011","N000000000011","R00000011"),
("A00012","B00012","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000012","7000000012","N000000000012","R00000012"),
("A00013","B00013","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000013","7000000013","N000000000013","R00000013"),
("A00014","B00014","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000014","7000000014","N000000000014","R00000014"),
("A00015","B00015","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000015","7000000015","N000000000015","R00000015"),
("A00016","B00016","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000016","7000000016","N000000000016","R00000016"),
("A00017","B00017","Jan Kowalski","Katowice","42-190","czerwona 45b","jankowalski@gmail.com","600000017","7000000017","N000000000017","R00000017"),
("A00018","B00018","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000018","7000000018","N000000000018","R00000018"),
("A00019","B00019","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000019","7000000019","N000000000019","R00000019"),
("A00020","B00020","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000020","7000000020","N000000000020","R00000020"),
("A00021","B00021","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000021","7000000021","N000000000021","R00000021"),
("A00022","B00022","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000022","7000000022","N000000000022","R00000022"),
("A00023","B00023","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000023","7000000023","N000000000023","R00000023"),
("A00024","B00024","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000024","7000000024","N000000000024","R00000024"),
("A00025","B00025","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000025","7000000025","N000000000025","R00000025"),
("A00026","B00026","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000026","7000000026","N000000000026","R00000026"),
("A00027","B00027","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000027","7000000027","N000000000027","R00000027"),
("A00028","B00028","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000028","7000000028","N000000000028","R00000028"),
("A00029","B00029","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000029","7000000029","N000000000029","R00000029"),
("A00030","B00030","Adam Kowalski","Mikołów","43-190","Zielona 45b","adamkowalski@gmail.com","600000030","7000000030","N000000000030","R00000030");
/*CREATE TABLE Kompozycje
(
idkompozycji CHAR(5) PRIMARY KEY,
nazwa CHAR(40) NOT NULL,
opis VARCHAR(100),
cena NUMERIC(7,2) CHECK(cena >= 40.00),
minimum INTEGER, 
stan INTEGER
);*/
INSERT INTO Kompozycje(idkompozycji,
nazwa,
opis,
cena,
minimum,
stan) VALUES
("K0001","Kompozycja1","Ładna",40.00,10,5),
("K0002","Kompozycja2","Ładna",41.00,12,6),
("K0003","Kompozycja3","Ładna",42.00,13,7),
("K0004","Kompozycja4","Ładna",43.00,14,51),
("K0005","Kompozycja5","Ładna",44.00,15,52),
("K0006","Kompozycja6","Ładna",45.00,16,53),
("K0007","Kompozycja7","Ładna",46.00,17,54),
("K0008","Kompozycja8","Ładna",47.00,18,55),
("K0009","Kompozycja9","Ładna",48.00,19,56),
("K0010","Kompozycja10","Ładna",49.00,20,57),
("K0011","Kompozycja11","Ładna",50.00,20,58),
("K0012","Kompozycja12","Ładna",51.00,30,59),
("K0013","Kompozycja13","Ładna",52.00,40,15),
("K0014","Kompozycja14","Ładna",53.00,50,25),
("K0015","Kompozycja15","Ładna",54.00,60,35),
("K0016","Kompozycja16","Ładna",55.00,21,45),
("K0017","Kompozycja17","Ładna",56.00,23,55),
("K0018","Kompozycja18","Ładna",57.00,24,65),
("K0019","Kompozycja19","Ładna",58.00,25,65),
("K0020","Kompozycja20","Ładna",40.10,26,75),
("K0021","Kompozycja21","Ładna",40.20,15,85),
("K0022","Kompozycja22","Ładna",40.30,23,95),
("K0023","Kompozycja23","Ładna",40.40,24,115),
("K0024","Kompozycja24","Ładna",40.50,25,225),
("K0025","Kompozycja25","Ładna",40.60,26,53),
("K0026","Kompozycja26","Ładna",40.70,27,54),
("K0027","Kompozycja27","Ładna",40.80,1,52),
("K0028","Kompozycja28","Ładna",40.90,12,53),
("K0029","Kompozycja29","Ładna",40.01,3,54),
("K0030","Kompozycja30","Ładna",40.02,4,55);
/*CREATE TABLE Odbiorcy
(
idodbiorcy SERIAL PRIMARY KEY,
nazwa VARCHAR(40) NOT NULL,
miasto VARCHAR(40) NOT NULL,
kod CHAR(6) NOT NULL,
adres VARCHAR(40) NOT NULL
);*/
INSERT INTO Odbiorcy (idodbiorcy,
nazwa,
miasto,
kod,
adres) VALUES
(1,"Adaś Kowalski1","Mikołów","00-333","Czarnowiejska 45"),
(2,"Adaś Kowalski2","Mikołów","00-333","Czarnowiejska 45"),
(3,"Adaś Kowalski3","Zachełmie","00-333","Czarnowiejska 45"),
(4,"Adaś Kowalski4","Zachełmie","00-333","Czarnowiejska 45"),
(5,"Adaś Kowalski5","Szczebrzeszyn","00-333","Czarnowiejska 45"),
(6,"Adaś Kowalski6","Warszawa","00-333","Czarnowiejska 45"),
(7,"Adaś Kowalski7","Warszawa","00-333","Czarnowiejska 45"),
(8,"Adaś Kowalski8","Kraków","00-333","Czarnowiejska 45"),
(9,"Adaś Kowalski9","Kraków","00-333","Czarnowiejska 45"),
(10,"Adaś Kowalski10","Kraków","00-333","Czarnowiejska 45"),
(11,"Adaś Kowalski11","Kraków","00-333","Czarnowiejska 45"),
(12,"Adaś Kowalski12","Kraków","00-333","Czarnowiejska 45"),
(13,"Adaś Kowalski13","Kraków","00-333","Czarnowiejska 45"),
(14,"Adaś Kowalski14","Kraków","00-333","Czarnowiejska 45"),
(15,"Adaś Kowalski15","Kraków","00-333","Czarnowiejska 45"),
(16,"Adaś Kowalski16","Kraków","00-333","Czarnowiejska 45"),
(17,"Adaś Kowalski17","Kraków","00-333","Czarnowiejska 45"),
(18,"Adaś Kowalski18","Kraków","00-333","Czarnowiejska 45"),
(19,"Adaś Kowalski19","Kraków","00-333","Czarnowiejska 45"),
(20,"Adaś Kowalski20","Kraków","00-333","Czarnowiejska 45"),
(21,"Adaś Kowalski21","Kraków","00-333","Czarnowiejska 45"),
(22,"Adaś Kowalski22","Kraków","00-333","Czarnowiejska 45"),
(23,"Adaś Kowalski23","Kraków","00-333","Czarnowiejska 45"),
(24,"Adaś Kowalski24","Kraków","00-333","Czarnowiejska 45"),
(25,"Adaś Kowalski25","Kraków","00-333","Czarnowiejska 45"),
(26,"Adaś Kowalski26","Kraków","00-333","Czarnowiejska 45"),
(27,"Adaś Kowalski27","Kraków","00-333","Czarnowiejska 45"),
(28,"Adaś Kowalski28","Kraków","00-333","Czarnowiejska 45"),
(29,"Adaś Kowalski29","Kraków","00-333","Czarnowiejska 45"),
(30,"Adaś Kowalski30","Kraków","00-333","Czarnowiejska 45");

/*CREATE TABLE Zamowienia
(
idzamowienia INTEGER PRIMARY KEY, 
idklienta VARCHAR(10) NOT NULL, /*FK
idodbiorcy INTEGER NOT NULL,		/*FK
idkompozycji CHAR(5) NOT NULL,	/*FK
termin DATETIME,
cena NUMERIC(7,2),
zaplacone BOOLEAN,
uwagi VARCHAR(200)
);*/
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
/*CREATE TABLE Zapotrzebowanie
(
idzapotrzebowania SERIAL PRIMARY KEY,
idzamowienia INTEGER,		/*FK
idkompozycji CHAR(5)	/*FK
);*/
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