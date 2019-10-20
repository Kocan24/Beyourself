program PerkalianDuaBuahMatriks;
{I.S. : User memasukkan banyaknya baris matriks pertama(M), banyaknya kolom matriks pertama (N), banyaknya kolom matriks kedua (P),
        elemen matriks pertama berordo M x N dan elemen matriks kedua Berordo N X P }
{F.S. : }
uses crt;
const
     MaksBaris  = 10;
     MaksKolom1 = 10;
     MaksKolom2 = 5;
Type
    Matriks1 = array[1..MaksBaris,1..MaksKolom1] of integer;
    Matriks2 = array[1..MaksBaris,1..MaksKolom2] of integer;
    Matriks3 = array[1..MaksBaris,1..MaksKolom2] of integer;
var
    A : Matriks1;
    B : Matriks2;
    M,N,P : integer;

procedure IsiMatriks(var M,N,P : integer;var A:Matriks1;var B:Matriks2);
{}
{}
var
  i, j, k : integer;
begin
   //memasukkan banyaknya baris matriks pertama
   write('Banyaknya Baris Matriks A   : ');readln(M);
   //validasi banyaknya baris matriks pertama


   //memasukkan banyaknya baris matriks pertama
   write('Banyaknya Kolom Matriks A   : ');readln(N);
   //validasi banyaknya kolom matriks pertama

   //memasukkan banyaknya baris matriks kedua
   writeln('Banyaknya Baris Matriks B   : ',N);
   //memasukkan banyaknya baris matriks kedua
   write('Banyaknya Kolom Matriks B   : ');readln(P);
   //validasi banyaknya kolom matriks kedua

   //memasukkan elemen matriks pertama
   clrscr;
   textcolor(cyan);
   writeln('PERKALIAN DUA BUAH MATRIKS');
   writeln('--------------------------');
   writeln;textcolor(13);
   writeln('Matriks A');
   writeln('+++++++++');
   for i := 1 to M do
       for j := 1 to N do
       begin
         gotoxy(j*5-4,i+5);readln(A[i,j]);
       end;//endfor

   //memasukkan elemen matriks kedua
   window(50,1,100,14);
   textcolor(12);
   gotoxy(1,4);writeln('Matriks B');
   gotoxy(1,5);writeln('+++++++++');
   for j := 1 to N do
       for k := 1 to P do
       begin
         gotoxy(k*5-4,j+5);readln(B[j,k]);
       end;//endfor
end;


function KaliMatriks(A,B : integer) : integer;
{I.S. : elemen matriks sudah terdefinisi}
{F.S. : menghasilkan fungsi perkalian matriks}
begin
  KaliMatriks := A * B;
end;//endfunction

procedure TampilHasil(M,N,P : integer; A : Matriks1 ; B :Matriks2);

var
   i, j, k : integer;
   C : Matriks3;
begin
  window(25,15,75,30);
  writeln('MATRIKS HASIL');
  writeln('_____________');
  for i := 1 to M do
     for k := 1 to P do
     begin
       C[i,k] := 0;
       for j := 1 to N do
       begin
         C[i,k] := C[i,k] + KaliMatriks(A[i,j],B[j,k]);
         gotoxy(k*5-4,i+2); textcolor(15); delay(700);
         write(C[i,k]);
       end;
     end;
end;
begin
 IsiMatriks(M,N,P,A,B);
 TampilHasil(M,N,P,A,B);
 readln;
end.
