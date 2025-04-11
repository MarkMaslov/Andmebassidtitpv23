--sql kommentar
--XAMPP Control Panel (start apache,start mysql)
--connect to
--localhost
--autentification: 
--kasutajanimi --root
--parool ei ole
--sql:
create database marktitpv23;
--vali andmebaasi
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


create table ruhm(
ruhmID int not null primary key identity(1,1),
ruhm varchar(10) unique,
osakond varchar(20),
);
insert into ruhm(ruhm, osakond)
values('TITpv23', 'IT'), ('KRRpv23', 'ratsepp')
alter table opilane add ruhmID int;
select * from opilane;

--lisamine foreign key veergule ruhmID mis on seotud 
-- tabeliga ruhm ja veerguga ruhmID
alter table opilane 
add foreign key (ruhmID) references ruhm(ruhmID)

--foreing key kontroll

insert into opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu,ruhmID)
values ('Mark', 'aaaaa', '2000-12-5', 'Tallinn', 1, 22)

select * from opilane
--kasutame seos tabelite vahel - JOIN
select * from opilane join ruhm
on opilane.ruhmID=ruhm.ruhmID

select opilane.perenimi, ruhm.ruhm from opilane join ruhm
on opilane.ruhmID=ruhm.ruhmID

--lihtsain vaade
select o.perenimi, r.ruhm, o.eesnimi
from opilane o join ruhm r
on o.ruhmID=r.ruhmID


--tabel hinne

create table hinne (
hinneID int not null primary key,
opilaneID int, 
hinne varchar(20),
oppeaine varchar(20),
);

alter table hinne 
add foreign key (opilaneID) references opilane(opilaneid) --(mis ja kuhu)

insert into hinne (opilaneID, hinneid, oppeaine, hinne)
values (6, 2, 'andmebaasid', 1);
select * from hinne;


select o.eesnimi, h.hinneID, h.hinne
from opilane o join hinne h 
on o.opilaneID=h.opilaneID
