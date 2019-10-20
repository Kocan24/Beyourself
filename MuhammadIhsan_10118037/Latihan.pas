program Gaji_bersih;
{I.S. : Pengguna memasukkan nama karyawan dan gaji pokok}
{F.S. : Menampilkan gaji bersih yang akan didapat karyawan}
uses crt;
//badan deklarasi (Kamus)
var
   gajipokok : integer;
   tunjangan,pajak,gajitotal,gajibersih : real;
   namakaryawan : string;
//badan program
begin
   //membuat jendela masukkan
   window(10,4,55,27);textbackground(yellow);clrscr;
   gotoxy(17,2);textcolor(0); write('DATA MASUKKAN');
   gotoxy(17,3);textcolor(0); write('-------------');
   //membuat jendela keluaran
   window(65,4,110,27);textbackground(yellow);clrscr;
   gotoxy(18,2);textcolor(0); write('RINCIAN GAJI');
   gotoxy(18,3);textcolor(0); write('------------');

   //memasukkan nama karyawan
   window(10,4,55,27);
   gotoxy(5,5);textcolor(0);
   write('Nama Karyawan          : ');
   readln(namakaryawan);

   //memasukkan gaji pokok
   window(10,4,55,27);
   gotoxy(5,6);
   write('gaji Pokok             : Rp.  ');
   readln(gajipokok);

   //menghitung tunjangan
   tunjangan:= 0.2*gajipokok;

   //menghitung gaji total

   gajitotal:= gajipokok+tunjangan;

   //menghitung pajak

   pajak:= 0.1*gajitotal;

   //menghitung gaji bersih

   gajibersih:=gajitotal-pajak;

   //memasukkan nama karyawan
   window(65,4,110,27);
   gotoxy(5,5);textcolor(0);
   write('Nama Karyawan          : ');
   textcolor(red);write(namakaryawan);

   //memasukkan gaji pokok
   window(65,4,110,27);
   gotoxy(5,6);
   write('gaji Pokok             : Rp. ');
   textcolor(red);write(gajipokok);

   //menampilkan tunjangan
   window(65,4,110,27);
   gotoxy(5,7);textcolor(0);
   write('tunjangan              : Rp. ');
   textcolor(red);write(tunjangan:0:2);

   //menampilkan gaji total
   window(65,4,110,27);
   gotoxy(5,8);textcolor(0);
   write('Gaji total             : Rp. ');
   textcolor(red);write(gajitotal:0:2);
   //menampilkan pajak
   window(65,4,110,27);
   gotoxy(5,9);textcolor(0);
   write('pajak                  : Rp. ');
   textcolor(red);write(pajak:0:2);

   //menampilkan gaji bersih
   window(65,4,110,27);
   gotoxy(5,10);textcolor(0);
   write('Gaji Bersih            : Rp. ');
   textcolor(red);write(gajibersih:0:2);



   readln;

end.
