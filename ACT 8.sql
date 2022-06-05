declare
@GRADE char(1),
@NPM varchar(8),
@NAMA varchar(30),
@NILAI varchar(10)

select
@GRADE = 'B',
@NPM = '10119723',
@NAMA = 'Nabil',
@NILAI =
case @GRADE
when 'A' then '>=80'
when 'B' then '>=60'
when 'C' then '>=40'
when 'D' then '<=40'
else 'Error, tidak terdefinisikan'
end

print 'NPM                  :' + @NPM
print 'NAMA                 :' + @NAMA
print 'NILAI YANG DIDAPATKAN:' + @NILAI

declare 
@NPM varchar(8) = '10119723',
@NAMA varchar(30)= 'Nabil',
@UTS int =  80,
@UAS int = 100,
@TOTAL float

set @TOTAL = @UTS * 0.70  + @UAS * 0.30 
 
 print 'NPM      : ' + @NPM
 print 'NAMA     : ' + @NAMA
 print 'UTS      : ' + str(@UTS)
 print 'UAS      : ' + str(@UAS)
 print 'TOTAL    : ' + str(@TOTAL)
 
 if @TOTAL > 60 
print 'NILAI YANG ANDA MILIKI SUDAH MENCUKUPI'
else 
print 'MAAF, NILAI YANG ANDA MILIKI BELUM MENCUKUPI'

declare
@NIP varchar(8) = '10119723',
@NAMA varchar(30) = 'Nabil',
@GAJI int = 2000000,
@TUNJANGAN int,
@BONUS int,
@TOTAL int,
@JUM_ANAK int = 7

set @BONUS = @GAJI * 0.10

if @JUM_ANAK > 4 AND @GAJI >= 400000
set @TUNJANGAN = 100000

if @JUM_ANAK > 5 AND @GAJI >= 300000
set @TUNJANGAN = 200000

if @JUM_ANAK > 6 AND @GAJI >= 200000
set @TUNJANGAN = 300000

if @JUM_ANAK <= 4
set @TUNJANGAN = 0

set @total = @GAJI + @BONUS + @BONUS + @TUNJANGAN 

print 'NIP       : ' + @NIP
print 'NAMA      : ' + @NAMA
print 'GAJI      : ' + STR(@GAJI)

if @TUNJANGAN = 0
print 'TUNJANGAN : TIDAK MENDAPATKAN TUNJANGAN'
else
print 'TUNJANGAN : ' + STR(@TUNJANGAN)
print 'BONUS     : ' + STR(@BONUS)
print 'TOTAL GAJI: ' + STR(@TOTAL)

declare
@BIL int = 10

while @BIL > 0
begin
if @BIL % 2 !=0 
Print 'ANGKA' + STR(@BIL) + ' = GANJIL'
else
Print 'ANGKA' + STR(@BIL) + ' = GENAP'
set @BIL = @BIL - 3
end

declare
@PARAM int = 1

while @PARAM <= 5
begin
print 'SELAMAT UJIAN!'
set @PARAM = @PARAM + 1
end
