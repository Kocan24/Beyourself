program gaji_karyawan_perbulan;
{I.S.:Pengguna memasukkan nama karyawan,golongan dan jam kerja}
{F.S.:Menampilkan jumlah gaji perbulan yang diterima seorang karyawan}
uses crt;
var
   Nama_karyawan : string;
   golongan,jam_kerja,gaji_pokok : integer;
   tunjangan,besar_tunjangan,Total_gaji : real;
   Lembur,Potongan : real;
   Jlembur,Jkurang : integer;
begin
   //Memasukkan nama karyawan,golongan,dan jam kerja
   write('Masukkan nama karyawan : ');readln(Nama_karyawan);
   write('Masukkan golongan      : ');readln(golongan);
   write('Masukkan Jam Kerja     : ');readln(jam_kerja);

   //Menentukan gaji pokok dan tunjangan
   if(golongan=1)
   then
    begin
         gaji_pokok:=17500000;
         tunjangan:=0.125;
    end
   else
    begin
         gaji_pokok:=2300000;
         tunjangan:=0.15;
    end;

   //Menentukan jam lembur
    if(jam_kerja>208)
    then
          Jlembur:=jam_kerja-208
    else
          Jlembur:=0;
   //menghitung uang lembur
   Lembur:=Jlembur*25000;

   //Menentukan jam kurang
   if(jam_kerja<208)
   then
         Jkurang:=208-jam_kerja
   else
         Jkurang:=0;
   //Menentukan uang potongan
   Potongan:=Jkurang*10000;

  //Menghitung Besarnya tunjangan
  besar_tunjangan:=tunjangan*gaji_pokok;
  //Menghitung Total gaji yang diterima seorang karyawan perbulan
  Total_gaji:=gaji_pokok+besar_tunjangan+Lembur-Potongan;

  //Menampilkan Seluruh data Penggajian
  clrscr;
  writeln('Nama Karyawan            :',Nama_karyawan);
  writeln('Golongan                 :',golongan);
  writeln('Gaji Pokok               :Rp.',gaji_pokok);
  writeln('Besar Tunjangan          :Rp.',besar_tunjangan:0:0);
  writeln('Jam Kerja Satu Bulan     :',jam_kerja,' Jam');
  writeln('Jumlah Jam Lembur        :',Jlembur,' Jam');
  write('Uang Lembur              :Rp.');textcolor(yellow);writeln(Lembur:0:0);textcolor(white);
  writeln('Jumlah Jam Kurang        :',Jkurang,' Jam');textcolor(white);
  write('Potongan                 :Rp.');textcolor(yellow);writeln(Potongan:0:0);textcolor(white);
  write('Total Gaji               :Rp.');textcolor(yellow);writeln(Total_gaji:0:0);


  readln;
end.
