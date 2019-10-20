program DataBarang;
{I.S. : }
{F.S. : }
uses crt;

const
   MaksBrg = 10;
type
   DataBrg = record
       KodeBrg,NamaBrg : string;
       Harga           : integer;
   end;//endrecord
   Barang = array[1..MaksBrg] of DataBrg;

var
   Brg       : Barang;
   N,Pilih   : integer;//N:Banyaknya data
   Tambah    : char;

procedure MenuPilihan(var Pilih : integer);
{I.S. : User memasukkan Nomer Menu}
{F.S. : Menghasilkan Nomor Menu}
begin
  clrscr;
  textcolor(15);
  writeln('+++++++++++++++++++++++++++');
  writeln('         MENU PILIHAN');
  writeln('+++++++++++++++++++++++++++');
  writeln('1.Isi Data Barang');
  writeln('2.Tampil Data Barang');
  writeln('3.Tampil Harga Data terurut secara descending');
  writeln('4.Tampil Data Barang terurut Nama Barang');
  writeln('0.Keluar');
  write('Masukkan Menu Pilihan Anda : ');readln(Pilih);
  //validasi Menu Pilihan
  while (Pilih < 0) or (Pilih > 4) do
  begin
    textcolor(cyan);
    writeln('PILIHAN HANYA ANTARA 0 - 4,Ulangi! Tekan Enter ');
    readln;
    gotoxy(1,10);clreol;
    gotoxy(30,9);clreol;readln(Pilih);


  end;//endwhile



end;//endprocedure

procedure IsiBarang(var N : integer ; var Brg : Barang);
{I.S. : User memasukkan banyaknya data(N) dan record barang (1:N)}
{F.S. : Menghasilkan banyaknya data(N) dan record barang (1:N)}
var
   i : integer;

begin
   textcolor(13);
   //memasukkan banyaknya data
   write('Banyaknya Data Barang : ');readln(N);
   //validasi banyaknya data
   while (N < 0) or (N > MaksBrg) do
   begin
     writeln('Banyaknya Data Antara 1 - ',MaksBrg,'Ulangi! Tekan Enter');
     readln;
     gotoxy(1,2);clreol;
     gotoxy(24,1);clreol;readln(N);

   end;
   //memasukkan record barang(1:N)
   clrscr;
   for i := 1 to N do
   begin
     writeln('Data Barang Ke-',i);
     writeln('=================');
     write('Kode Barang  : ');readln(Brg[i].KodeBrg);
     //validasi Kode Barang
     while(Brg[i].KodeBrg = Brg[i-1].KodeBrg)do
     begin
       writeln('Kode Barang Tidak Boleh sama dengan Kode Barang yang sebelumnya,Ulangi! Tekan Enter');
       gotoxy(1,i*5);clreol;
       readln;
       gotoxy(16,i*4);clreol;readln(Brg[i].KodeBrg);
     end;
     write('Nama Barang  : ');readln(Brg[i].NamaBrg);
     write('Harga Satuan : Rp. ');readln(Brg[i].Harga);
     writeln;
   end;//endfor


end;//endprocedure


procedure TambahData(var N : integer ; var Brg : Barang);
{I.S. : User memasukkan banyaknya data(N) dan record barang (1:N)}
{F.S. : Menghasilkan banyaknya data(N) dan record barang (1:N)}
var
   i, M, K : integer;  //K:Penampung banyaknya data awal

begin
   textcolor(13);
   //memasukkan banyaknya data
   write('Banyaknya Tambahan Data Barang : ');readln(M);

   //validasi banyaknya data
   while(M > (10-N)) or (M < 1) do
   begin
   writeln('Banyaknya Data Antara 1 - ',MaksBrg,'Ulangi! Tekan Enter');
     readln;
     gotoxy(1,3);clreol;
     gotoxy(33,2);clreol;readln(M);
   end;//endwhile
   //memasukkan record barang(1:N)
   clrscr;
   K := N;
   N := N + M;
   for i := (K+1) to N do
   begin
     writeln('Data Barang Ke-',i);
     writeln('=================');
     write('Kode Barang  : ');readln(Brg[i].KodeBrg);
     write('Nama Barang  : ');readln(Brg[i].NamaBrg);
     write('Harga Satuan : Rp. ');readln(Brg[i].Harga);
   end;//endfor


end;

procedure TampilData(N : integer ; Brg : Barang);
{I.S. : }
{}
var
   i, No : integer;
begin
  textcolor(15);
  writeln('                   Daftar Barang');
  writeln;
  writeln('=====================================================');
  writeln('| Kode Barang  |      Nama Barang    | Harga Satuan |');
  writeln('=====================================================');

  No := 1;
  for i := 1 to N do
  begin
    gotoxy(1,No+5); textcolor(15);
    write('|              |                     | Rp.          |');
    gotoxy(3,No+5); write(Brg[i].KodeBrg);
    gotoxy(17,No+5); write(Brg[i].NamaBrg);
    gotoxy(43,No+5); write(Brg[i].Harga);
    gotoxy(1,No+6);
    write('=====================================================');
    No := No + 2;
  end;//endfor
  writeln;
  readln;
end;//endprocedure

procedure UrutKodeBrg(N :integer;var Brg :Barang);
{I.S. : record barang(1..N) dan banyaknya data sudah terdefinisi}
{F.S. : menghasilkan record barang (1..N) yang sudah tersusun secara
        ascending berdasarkan kode barang menggunakan bubble sort}
var
   i,j  : integer;
   Temp : DataBrg;
begin
  for i := 1 to (N-1) do
      for j := N downto (i+1) do
    begin
       if(Brg[j].KodeBrg < Brg[j-1].KodeBrg)
        then
        begin
           Temp     := Brg[j];
           Brg[j]   := Brg[j-1];
           Brg[j-1] := Temp;
        end;
    end;//endfor

end;//endprocedure

procedure UrutHargaDescending(N :integer;var Brg :Barang);
{I.S. : record barang(1..N) dan banyaknya data sudah terdefinisi}
{F.S. : menghasilkan record barang (1..N) yang sudah tersusun secara
        descending berdasarkan Harga barang menggunakan bubble sort}
var
   i,j  : integer;
   Temp : DataBrg;
begin
  for i := 1 to (N-1) do
    for j := 1 to (N+i) do
    begin
       if(Brg[j].Harga < Brg[j+1].Harga)
        then
        begin
           Temp     := Brg[j];
           Brg[j]   := Brg[j+1];
           Brg[j+1] := Temp;
        end;
    end;//endfor

end;//endprocedure

procedure UrutNamaMaxAsceding(N :integer;var Brg :Barang);
{I.S. : record barang(1..N) dan banyaknya data sudah terdefinisi}
{F.S. : menghasilkan record barang (1..N) yang sudah tersusun secara
        ascending berdasarkan Harga barang menggunakan selection sort}
var
   i,j  : integer;
   Temp : DataBrg;
   Max : integer;
begin
  for i := 1 to (N-1) do
  begin
    Max := 1;
    for j := 2 to (N+1)-i do
    begin
       if(Brg[j].NamaBrg >= Brg[Max].NamaBrg)
        then
        begin
          Max := j;
        end;
    end;//endfor
    Temp       := Brg[Max];
    Brg[Max]   := Brg[j];
    Brg[j]     := Temp;
  end;//endfor
end;//endprocedure

begin//badan algoritma utama
  N := 0;
  repeat
    clrscr;
    MenuPilihan(Pilih);
    case (Pilih) of
      1 : begin
            clrscr;
            if (N = 0)
             then
               IsiBarang(N,Brg)
             else
             begin
               write('Yakin Akan Nambah Data ? [Y/T]');
               readln(Tambah);
               if (Tambah = 'Y') or (Tambah = 'y')
                then
                  TambahData(N,Brg)
                else
                  MenuPilihan(Pilih);

             end;
            textcolor(13);
            writeln('Tekan Enter untuk kembali ke Menu Pilihan !');
            readln;

          end;
      2 : begin
            clrscr;
            if (N = 0)
              then
                writeln('Silahkan Isi Data Barang Terlebih Dahulu')
              else
               begin
                UrutKodeBrg(N,Brg);
                TampilData(N,Brg);
               end;
            textcolor(13);
            writeln('Tekan Enter untuk kembali ke Menu Pilihan !');
            readln;

          end;
      3 : begin
            clrscr;
            if (N = 0)
              then
                writeln('Silahkan Isi Data Barang Terlebih Dahulu')
              else
               begin
                UrutHargaDescending(N,Brg);
                TampilData(N,Brg);
               end;
            textcolor(13);
            writeln('Tekan Enter untuk kembali ke Menu Pilihan !');
            readln;

          end;
       4 : begin
            clrscr;
            if (N = 0)
              then
                writeln('Silahkan Isi Data Barang Terlebih Dahulu')
              else
               begin
                UrutNamaMaxAsceding(N,Brg);
                TampilData(N,Brg);
               end;
            textcolor(13);
            writeln('Tekan Enter untuk kembali ke Menu Pilihan !');
            readln;

          end;
    end;//endcase
  until (Pilih = 0);
  readln;
end.
