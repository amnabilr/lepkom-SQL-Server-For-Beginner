create database act7

use act7

create table data_act
(
nama_anggota varchar(50),
id_anggota varchar(10),
berat_badan varchar(10),
hoby varchar(20),
tanggal_masuk date
);

insert into data_act values 
('ajeng karmilasari','2345','56','renang','19900507'),
('arfina ananta','2346','47','renang','19900507'),
('bellinda armyianda','2347','50','renang','19900507'),
('ardina asti','2348','51','renang','19900507'),
('adel harditono','2349','54','renang','19900507'),
('triesa ambar','2350','45','renang','19900507'),
('boy armyanto','2351','60','renang','19900507'),
('satya yudha ginanjar','2352','49','renang','19900507'),
('indra lesmana','2353','57','renang','19900507'),
('dendi fajar','2354','56','renang','19900507');

select*from data_act

create table data_barang1_Nabil
(kode_barang int,
nama_barang varchar (20),
banyak_barang int);

create table data_barang2_Nabil
(kode_barang int,
nama_barang varchar (20),
banyak_barang int);


create trigger trigger_insert on data_barang1_Nabil
for insert as 
declare 
@kd_brg int,
@nb varchar(20),
@bb int
select @kd_brg = inserted.kode_barang from inserted
select @nb = inserted.nama_barang from inserted
select @bb = inserted.banyak_barang from inserted
insert into data_barang2_Nabil values (@kd_brg,@nb,@bb);

create trigger trigger_data_barang2_Nabil on data_barang2_Nabil
for delete as 
declare 
@kd int,
@nb varchar(15),
@bb int
select @kd = deleted.kode_barang from deleted
select @nb = deleted.nama_barang from deleted
select @bb = deleted.banyak_barang from deleted
delete from data_barang1_Nabil where kode_barang = @kd;

insert into data_barang1_Nabil values ('001','KOMPUTER',30)
insert into data_barang1_Nabil values ('002','PRINTER',40)
insert into data_barang1_Nabil values ('003','PROCESSOR',50)

select*from data_barang1_Nabil;
select*from data_barang2_Nabil;