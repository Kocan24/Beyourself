program IP_Mahasiswa;
uses crt;
const
 MaksBaris = 50;
 MaksKolom = 5;
type
 Larik1 = array[1..MaksBaris] of string;
 Larik2 = array[1..MaksBaris] of string;
 Larik3 = array[1..MaksBaris] of integer;
 Larik4 = array[1..MaksBaris] of real;
 Matriks1 = array[1..MaksBaris] of integer;
 Matriks2= array[1..MaksBaris] of char;
var
  NIM    : Larik1;
  MK     : Larik2;
  SKS    : Larik3;
  IP     : Larik4;
  Nilai  : Matriks1;
  Idx    : Matriks2;
  M,N    : integer;//M : banyaknya NIM, N : banyaknya kode matakuliah
  Kelas  : string;
  TotalSKSK, Semester : integer;

procedure IsiData(var M,N,TotalSKS : integer; var Nilai : Matriks1);
{I.S : User Memasukkan kelas, semester, banyaknya NIM(M), banyaknya kode mata kuliah(N), NIM(1:M),Kode mata kuliah(1:M), SKS(1:M) dan matriks berordo M X N}
{F.S : Menghasilkan banyaknya NIM(M),kode mata kuliah, total sks, dan nilai matriks berordo M X N}
var
 i,j : integer;
begin
 //memasukkan nama kelas
 write('kelas                      : ');readln(kelas);
 //memasukkan banyknya semester
 write('Semester                   : ');readln(Semester);
 //memasukkan Nim
 write('Banyaknya NIM              : ');readln(M);
 //memasukkan banyaknya kode mata kuliah
 write('Banyaknya kode mata kuliah : ');readln(N);

 //memasukkan NIM
 gotoxy(1,3);clreol;
 gotoxy(1,4);clreol;
 gotoxy(1,4);textcolor(yellow);write('NIM');
 for i := 1 to M do
 begin
  gotoxy(1, i+5); textcolor(15); readln(NIM[i]);
 end;

 //kode mata kuliah(1:N)
 gotoxy(11,4); write('kode mata kuliah');
 for j := 1 to N do
 begin
  gotoxy(j*11,5);write('IF');
  gotoxy(j*11+2,5);readln(MK[j]);
  gotoxy(j*11+6,5);write('-');
  gotoxy(j*11+7,5);readln(SKS[j]);
 end;
 //memasukkan matriks berordo M x N
 for i := 1 to M do
   for j := 1 to N do
    begin
     gotoxy(j*11+3,i+5;write(M))
    end;
end;

function indeks(i,j : integer; Nilai : Matriks1; var indeks : Matriks2);
{I.S}
{F.S}

begin
 case of(Nilai[i,j])


//program utama
begin
 IsiData(M,N,TotalSKS,Nilai);
readln;
end.
