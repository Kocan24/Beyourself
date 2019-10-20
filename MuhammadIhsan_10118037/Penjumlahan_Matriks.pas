program PenjumlahanDuaBuahMatriks;
uses crt;
//kamus global
const
  MaksBaris = 10;
  MaksKolom = 10;
type
  Matriks = array [1.. Maksbaris ,1..MaksKolom] of integer;
var
  A,B : Matriks;
  M,N : integer;

Procedure IsiMatriks (var M,N : integer; Var A,B : Matriks);
 {I.S : User Memasukkan banyaknya baris(M),Banyaknya kolom(N) dan dua matriks berordo M X N}
 {F.S : Menghasilkan banyaknya baris(M),Banyaknya kolom(N), elemen dua matriks berordo M X N}
var
  i,j : integer;
begin
  //memasukkan banyaknya baris
  write('Banyaknya Baris : ');readln(M);
  //banyaknya kolom
  write('Banyaknya Kolom : ');readln(N);
  //Memasukkan elemen kedua buah matriks yag akan di jumlahkan
  clrscr;textcolor(yellow);
  gotoxy(46,1); write('PENJUMLAHAN DUA BUAH MATRIKS');
  gotoxy(46,2); write('****************************');
  gotoxy(1,4); write('Matriks A');
  gotoxy(1,5); write('---------');
  for i := 1 to M do
   for j := 1 to N do
     begin
       gotoxy(j*5-4,i+5);readln(A[i,j]);
     end;
  window(65,1,100,15);
  gotoxy(1,4);writeln('Matriks B');
  gotoxy(1,5);writeln('---------');
  for i := 1 to M do
    for j := 1 to N do
     begin
       gotoxy(j*5-4,i+5);readln(B[i,j]);
     end;
end;//endprocedure

function JumlahMatriks(A,B : integer) : integer;
{I.S : Matriks A dan Matriks B sudah terdefinisi}
{F.S : Menghasilkan penjumlahan fungsi dua buah matriks}

begin
  JumlahMatriks:= A+B
end;

Procedure TampilHasil (M,N : integer; A,B : Matriks );
{I.S : Banyaknya kolom(M) dan baris(N) sudah terdefinisi}
{F.S : Menampilkan hasil penjumlahan dua buah matriks}
var
 i,j : integer;
 C : Matriks;
begin
  window(50,1,100,15);
  gotoxy(1,4);writeln('Matriks C');
  gotoxy(1,5);writeln('---------');
  for i := 1 to M do
    for j := 1 to N do
     begin
      C[i,j] := JumlahMatriks(A[i,j],B[i,j]);
      gotoxy(j*5-4,i+5);textcolor(yellow);
      delay(700);write(C[i,j]);
     end;





 end;
//program utama
begin
  IsiMatriks(M,N,A,B);
  TampilHasil(M,N,A,B);
  readln;

end.
