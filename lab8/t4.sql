UPDATE kompozycje set stan=30 where idkompozycji="K0001";
UPDATE zapotrzebowanie set ilosc=15 where idkompozycji ="K0003";
select * from zapotrzebowanie, kompozycje
