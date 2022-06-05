Create table mahasiswa
(
NPM NUMERIC(4), 
NAMA VARCHAR(20), 
KELAS VARCHAR(5)
);
GRANT SELECT,INSERT,UPDATE, DELETE ON baru.dbo.mahasiswa TO BUDI1;

GRANT SELECT,INSERT,UPDATE, DELETE ON baru.dbo.mahasiswa TO DINA3;

INSERT into mahasiswa values
 (1122,'Junaidi Hutagalung','1IA01'),
 (1923,'Ahmad Wirawan','1IA11'),
 (4321,'Resti Cantika','1IA15')
 ;
 GRANT SELECT ON baru.dbo.mahasiswa TO ASEP2;
 
 SELECT*FROM mahasiswa 