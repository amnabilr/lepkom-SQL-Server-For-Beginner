CREATE TABLE ONLINE_SHOP
(
Kode_Barang numeric primary key,
Nama_Barang varchar (40) not null,
Tanggal_Masuk date not null,
Kategori_Barang varchar(20) not null,
Harga numeric not null
);

insert into ONLINE_SHOP values
(47129944, 'White A-Mini Drees','23-jun-11','Pakaian',554000),
(47129949, 'Wedges Black Long Tail','02-sep-12','Sepatu',721540),
(47129954, 'Silver Star','15-mar-11','Aksesoris',1435000),
(47129959, 'V-Neck Blouse','25-jan-12','Pakaian',360320),
(47129964, 'Gold Diamond','12-oct-13','Aksesoris',2653000)
;

CREATE TABLE PESANAN
(
Kode_Pesanan varchar (6) primary key,
Nama_Pemesan varchar (40) not null,
Kode_Barang numeric foreign key references ONLINE_SHOP
);

insert into PESANAN values
('A-3793','Martin Holas',47129949),
('P-8050','Glory Campbell',47129959),
('F-1758','Richards Daniel',47129944),
('D-1401','Sherly Ana Robb',47129954),
('I-8532','Carolina Karina',47129964)
;

alter table PESANAN add  Alamat varchar(40)

;

update PESANAN set Alamat='Vancouver' where Kode_Pesanan='A-3793'
update PESANAN set Alamat='Toronto' where Kode_Pesanan='P-8050'
update PESANAN set Alamat='Liverpool' where Kode_Pesanan='F-1758'
update PESANAN set Alamat='New York' where Kode_Pesanan='D-1401'
update PESANAN set Alamat='New Castle' where Kode_Pesanan='I-8532'
;

select*from PESANAN 