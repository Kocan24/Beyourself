program JarakTempuh;
{}
{}
var
   Jam, Menit, Detik : integer;
procedure IsiInput(var Jam, Menit, Detik : integer);
{}
{}
var //kamus lokal
  JamIn, JamOut, MenitIn, MenitOut, DetikIn, DetikOut : integer;
begin
  write('MASUKKAN JAM MULAI      : ');readln(JamIn);
  write('MASUKKAN MENIT MULAI    : ');readln(MenitIn);
  write('MASUKKAN DETIK MULAI    : ');readln(DetikIn);
  write('MASUKKAN JAM BERAKHIR   : ');readln(JamOut);
  write('MASUKKAN MENIT BERAKHIR : ');readln(MenitOut);
  write('MASUKKAN DETIK BERAKHIR : ');readln(DetikOut);

  if (DetikOut < DetikIn)
   then
   begin
     DetikOut := DetikOut + 60;
     MenitOut := MenitOut - 1;
   end;
  Detik := DetikOut - DetikIn;

  if (MenitOut < MenitIn)
   then
   begin
     MenitOut := MenitOut + 60;
     JamOut := JamOut - 1;
   end;
  Menit := MenitOut - MenitIn;

  if (JamOut < JamIn)
   then
   begin
     JamOut := JamOut + 12;
   end;
  Jam := JamOut - JamIn;

 writeln('Waktu Tempuh            : ',Jam,' Jam ',Menit,' Menit ',Detik,' Detik ');
end;//endprocedure

function Jarak_Tempuh(Jam,Menit,Detik : integer) : integer;
{}
{}
var
   Waktu, Kecepatan, A, i, SisaWaktu : integer;
begin
  Jarak_Tempuh := 0;
  Kecepatan    := 5;
  Waktu        := Jam * 3600 + Menit * 60 + Detik;
  A            := Waktu div 600;
   for i := 1 to A do
    begin
      Jarak_Tempuh := Kecepatan * 600;
      Kecepatan    := Kecepatan + 1;
    end;//endfor

  SisaWaktu    := Waktu mod 600;
  Jarak_Tempuh := Jarak_Tempuh + (SisaWaktu * Kecepatan);




end;//endfunction

procedure TampilJarak(Jam,Menit,Detik : integer);
{}
{}
var
   Hasil : integer;
begin

Hasil := Jarak_Tempuh(Jam,Menit,Detik);

writeln('Jarak Tempuh : ',Hasil,'M');

end;//endprocedure

begin
  IsiInput(Jam,Menit,Detik);
  TampilJarak(Jam,Menit,Detik);
  readln;
end.
