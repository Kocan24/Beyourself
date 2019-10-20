program MENUPILIHAN;
{I.S. :User memasukkan pilihan}
{F.S. :Menampilkan hasil yang sudah dipilih}
uses crt;
//badan deklarasi kamus
const
     phi=3.14;
var
   a,t,r : integer;   {a:ALAS SEGITIGA,t:TINGGI SEGITIGA,r:JARI-JARI LINGKARAN}
   Luas,Total_bayar : real;
   Pilihan,Nilai1,Nilai2,Nilai3,NilaiTertinggi : integer;
   status : string;
   banyak_lembar,Perlembar : integer;
//badan program
begin
  //membuat menu pilihan
  textcolor(15);
  gotoxy(54,10); write('MENU PILIHAN');
  gotoxy(54,11); write('++++++++++++');
  gotoxy(45,12); write('1. Menghitung Luas Segitiga');
  gotoxy(45,13); write('2. Menghitung Luas Lingkaran');
  gotoxy(45,14); write('3. Menentukan Nilai Tertinggi');
  gotoxy(45,15); write('4. JASA FOTOCOPY');
  gotoxy(45,16); write('0. KELUAR');

  //memasukkan nomor menu
  gotoxy(45,18); write('Masukkan Pilihan Anda :');readln(Pilihan);

 //menentukan pilihan menu
 case (Pilihan) of
   1 : begin
         clrscr;
         textcolor(yellow);
         gotoxy(48,2);
         write('========================');
         gotoxy(48,3);
         write('MENGHITUNG LUAS SEGITIGA');
         gotoxy(48,4);
         write('========================');

         //memasukkan alas dan tinggi segitiga
         textcolor(yellow);
         gotoxy(1,6);write('Masukkan Alas Segitiga   :');readln(a);
         gotoxy(1,7);write('Masukkan Tinggi Segitiga :');readln(t);

         //menghitung luas segitiga
         Luas:=0.5*a*t;

         //menampilkan luas segitiga
         gotoxy(1,8);write('LUASNYA ADALAH           :');
         textcolor(15);write(Luas:0:0);
         readln;


       end;
   2 : begin
         clrscr;
         textcolor(13);
         gotoxy(47,2);
         write('=========================');
         gotoxy(47,3);
         write('MENGHITUNG LUAS LINGKARAN');
         gotoxy(47,4);
         write('=========================');

         //memasukkan jari-jari lingkaran
         textcolor(13);
         gotoxy(1,6);write('Masukkan Jari-Jari Lingkaran   :');readln(r);


         //menghitung luas lingkaran
         Luas:= phi*sqr(r);

         //menampilkan luas lingkaran
         gotoxy(1,7);write('LUASNYA ADALAH :');
         textcolor(14);write(Luas:0:2);
         readln;


       end;
   3 : begin
         clrscr;
         textcolor(11);
         gotoxy(44,2);
         write('==========================');
         gotoxy(44,3);
         write('MENENTUKAN NILAI TERTINGGI');
         gotoxy(44,4);
         write('==========================');

         //memasukkan Nilai 1,Nilai 2,dan Nilai 3
         textcolor(11);
         gotoxy(1,6);write('Masukkan Nilai 1   :');readln(Nilai1);
         gotoxy(1,7);write('Masukkan Nilai 2   :');readln(Nilai2);
         gotoxy(1,8);write('Masukkan Nilai 3   :');readln(Nilai3);

         //menentukan nilai tertinggi
         if(Nilai1>=Nilai2)and(Nilai1>=Nilai3)
          then
            NilaiTertinggi := Nilai1
          else
           if(Nilai2>=Nilai1)and(Nilai2>=Nilai3)
            then
              NilaiTertinggi := Nilai2
            else
              NilaiTertinggi := Nilai3;

         //menampilkan Nilai Tertinggi
         gotoxy(1,9);write('Nilai Tertinggi    :');
         textcolor(13);write(NilaiTertinggi);
         readln;


       end;
   4 : begin
         clrscr;
         textcolor(8);
         gotoxy(53,2);
         write('=============');
         gotoxy(53,3);
         write('JASA FOTOCOPY');
         gotoxy(53,4);
         write('=============');

         //memasukkan status dan banyak lembar yang akan difotocopy
         textcolor(11);
         gotoxy(1,6);write('Masukkan status[LANGGANAN/BUKAN LANGGANAN]         :');readln(status);
         gotoxy(1,7);write('Masukkan banyak lembar                             :');readln(banyak_lembar);


         //menentukan status dan banyaknya lembar yang akan difotocopy
         if(status='BUKAN LANGGANAN')
          then
          begin
           if(banyak_lembar < 100)
            then
              Perlembar := 100
            else
              Perlembar := 85;
          end
         else
           Perlembar := 75;

         //menghitung Total Bayar
         Total_bayar := Perlembar*banyak_lembar;

         //menampilkan Nilai Tertinggi
         gotoxy(1,9);write('Total Bayar                                        :Rp.');
         textcolor(13);write(Total_bayar:0:0);


         readln;
       end;
   0 : begin
         clrscr;
         gotoxy(43,15); textcolor(green);
         writeln('KELUAR MENU PILIHAN,TEKAN ENTER!');
         readln;
       end;
  end;







end.
