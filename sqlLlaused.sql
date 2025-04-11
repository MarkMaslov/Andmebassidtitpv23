--sql kommentar
--XAMPP Control Panel (start apache,start mysql)
--connect to
--localhost
--autentification: 
--kasutajanimi --root
--parool ei ole
--sql:
create database maslov;
use maslov;
--tabeli loomine
create table opilane(
opilaneId INT Primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30) Unique,
synniaeg date,
aadress text,
opilaskodu bit
);
select * from opilane;
--tabel kustutamine
drop table opilane;
--andmete lisamine tabelisse
insert into opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu)
values ('Mark', 'aaa', '2000-12-5', 'Tallinn', 1), 
('Mark', 'Bbb', '2000-12-5', 'Tallinn', 1),
('Mark', 'Levin', '2000-12-5', 'Tallinn', 1), 
('Mark', 'Nazaruk', '2000-12-5', 'Tallinn', 1),
('Mark', 'Põshnoi', '2000-12-5', 'Tallinn', 1);
