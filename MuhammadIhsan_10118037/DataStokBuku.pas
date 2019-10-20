program DataStokBuku;
{I.S. : User memasukkan banyaknya data(N) dan data buku (1:N)}
{}
uses crt;
//kamus global
const
  MaksBuku = 20;
type
  Larik1 = array[1..MaksBuku] of string;
  Larik2 = array[1..MaksBuku] of integer;
  Larik3 = array[1..MaksBuku] of real;
var
  KodeBK, NamaBK, Status : Larik1;
  HargaBeli, Stok        : Larik2;
  HargaJual              : Larik3;
  N                      : integer;//banyaknya data buku
Function HargaJualBK(Harga : integer) :real;
{I.S.  : Harga Beli Buku sudah terdefinisi}
{F.S.  : Menghasilkan Fungsi harga jual buku}
begin
     HargaJualBK := Harga + (Harga * 0.05);

end;//endfunction

Function StatusStok(Stok : integer) :string;
{I.S.  : Stok buku sudah terdefinisi}
{F.S.  : Menghasilkan Fungsi Status Stok}
begin
     StatusStok := ' AMAN ';
     if (Stok < 2)
      then
        StatusStok := ' TIDAK AMAN '

end;//endfunction

Procedure IsiDataBuku (var N : integer ; var NamaBK, Status : Larik1);
{I.S. :User memasukkan banyaknya buku (N) dan data buku(1:N)}
{F.S. :Menampilkan data stok buku}
var
  i, j : integer;

begin
  //memasukkan banyaknya buku
  textcolor(13);
  write('Banyaknya Data Buku : ');readln(N);

  //validasi banyaknya data buku
  while (N < 1) or (N > MaksBuku) do
   begin
     gotoxy(1,2);textcolor(cyan);
     write('Banyaknya Data Harus Antara 1 -',MaksBuku,' Ulangi! Tekan Enter');
     readln;
     gotoxy(1,2); clreol;
     gotoxy(23,1);clreol;textcolor(13);readln(N);
   end;//endwhile

  //memasukkan data stok buku(1:N)
  clrscr;
  writeln('                                    DATA STOK BUKU');
  writeln('=====================================*************====================================');
  writeln('| Kode Buku |    Nama Buku     |  Harga Beli   | Stok |   Harga Jual    |   Status   |');
  writeln('=====================================*************====================================');
  for i := 1 to N do
   begin
     gotoxy(1,i+4);
     write('|           |                  | Rp.           |      | Rp.             |            |');
     gotoxy(3,i+4); readln(KodeBK[i]);

     //validasi kode buku
     if ( i > 1)
     then
     begin
       for j := 1 to (i-1) do
       begin
         while(KodeBK[i] = KodeBK[j]) do
         begin
           gotoxy(1,i+5); textcolor(cyan);
           write(' Kode Buku ',KodeBK[i],' Sudah ada! Tekan Enter');
           readln;
           gotoxy(1,i+5);clreol;
           gotoxy(1,i+4); textcolor(13);
           write('|           |                  | Rp.           |      | Rp.             |            |');
           gotoxy(3,i+4); readln(KodeBK[i]);

         end;//endwhile
       end;//endfor
     end;//endif
     gotoxy(15,i+4); readln(NamaBK[i]);
     gotoxy(39,i+4); readln(HargaBeli[i]);
     gotoxy(50,i+4); readln(Stok[i]);

     //memanggil fungsi harga jual
     HargaJual[i] := HargaJualBK(HargaBeli[i]);

     //menampilkan harga jual
     gotoxy(61,i+4); write(HargaJual[i]:0:1);

     //memanggil fungsi status stok
     Status[i] := StatusStok(Stok[i]);

     //menampilkan status stok
     gotoxy(74,i+4); write(Status[i]);
   end;//endfor
  writeln;
  //garis penutup tiang
  writeln('=====================================*************====================================');

end;//endprocedure

procedure JumlahPerStatus( N : integer ; NamaBK, Status : Larik1);
{}
{}
var
  i,  No : integer;
begin



  for i := 1 to N do
  begin
    if(Status[i] = ' TIDAK AMAN ')
    then
     begin
       No := No +1;

       writeln(No,'. ',NamaBk[i],' Sebanyak ',Stok[i],' Buku ');
     end

  end;//endfor

end;//endprocedure

//badan algoritma Utama
begin
IsiDataBuku(N,NamaBK,Status);
JumlahPerstatus(N,NamaBK,Status);
readln;
end.
