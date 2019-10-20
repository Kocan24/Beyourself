program biayaparkir;
{I.S.:user memasukkan nomor polisi,jam masuk,menit masuk,jam keluar,menit keluar}
{F.S.:Menampilkan Jam,Menit,biaya Parkir}
uses crt;
var
   no_pol : string;
   jam_masuk,menit_masuk,jam_keluar,menit_keluar : integer;
   Menit,Jam : integer;
   Biaya_parkir : real;
begin
   //Input
   write('Masukkan Nomor Polisi Anda :');readln(no_pol);
   write('Jam Masuk                  :');readln(jam_masuk);
   write('Menit Masuk                :');readln(menit_masuk);
   write('Jam Keluar                 :');readln(jam_keluar);
   write('Menit Keluar               :');readln(menit_keluar);

   //Kalkulasi menit
   if(menit_keluar<menit_masuk)
   then
    begin
         menit_keluar:=menit_keluar+60;
         jam_keluar:=jam_keluar-1;
    end;
   Menit:=menit_keluar-menit_masuk;
   //Kalkulasi Jam
   if(jam_keluar<jam_masuk)
   then
    begin
         jam_keluar:=jam_keluar+12;
    end;
   Jam:=jam_keluar-jam_masuk;
   //Kalkulasi biaya parkir
   if(Menit>0)
   then
    begin
         Jam:=Jam+1;
    end;
   Biaya_parkir:=1500+(Jam-1)*500;
   //OUTPUT
   writeln('BIAYA PARKIRNYA   :RP',Biaya_parkir:0:0);
readln;
end.
