program APangkatB;
uses crt;
//kamus global
var
  A, B : integer;


procedure IsiAB(var A,B : integer);
{I.S. : User memasukkan harga A dan harga B }
{F.S. : Menghasilkan harga A dan harga B}


begin
   gotoxy(1,3);write('Masukkan Harga A : ');readln(A);
   gotoxy(1,4);write('Masukkan Harga B : ');readln(B);
    while (B < 0) do
    begin
       gotoxy(1,5);writeln('Harga B tidak boleh kurang dari 0,Ulangi!');
       readln;
       gotoxy(1,5);clreol;
       gotoxy(20,4);clreol;
       readln(B);

    end;//endwhile
end;//endprocedure

function PangkatAB(A,B : integer) : integer;
{I.S. : Harga A dan Harga B sudah terdefinisi}
{F.S. : Menghasilkan fungsi A pangkat B}
var
   Pangkat, i : integer;

begin
  if(B = 0)
   then
     PangkatAB := 1
    else if (B = 1)
     then
       PangkatAB := A
     else
     begin
       Pangkat := A;
       for i:= 2 to B do
        Pangkat := Pangkat * A;

        PangkatAB := Pangkat;
     end;
end;//endfunction

procedure TampilPangkat( A,B : integer);
{I.S. : Harga A dan Harga B sudah terdefinisi }
{F.S. : Menampilkan A Pangkat B}
var
  i : integer;

begin

    gotoxy(1,6);write(A:2,' Pangkat ',B:2,' = ');
    if(B > 1)
     then
     begin
       for i := 1 to B do
       begin
       write(A);
         if(i <> B)
          then
            write(' x ');

       end;//endfor
     end;//endif
   gotoxy(15,7); write(' = ');
   write(PangkatAB(A,B)); //memanggil fungsi PangkatAB
end;//endprocedure

//badan program utama
begin
IsiAB(A,B);
TampilPangkat(A,B);
readln;

end.
