--sql kommentar
--sql server managment stuudion
--connect to
--(localdb) mysqlloaldb
--autentifation: windows auth - admini õigused localhostits
--autentification: sql server auth
--new query
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
