program Barisan_Fibonacci;
uses crt;
//kamus global
const
  UserName = 'Ihsan';
  Password = '10118037';
var
  N : integer;
  NamaPengguna, KataSandi : string;
  Lagi : char;
procedure Login(var NamaPengguna, KataSandi : string);
{I.S : User memasukkan Nama Pengguna dan Kata Sandi}
{F.S : Menghasilkan Nama Pengguna dan Kata Sandi}

begin
  //batas
  gotoxy(43,8);write('================================');
  gotoxy(43,18);write('================================');
  gotoxy(43,9);write('|');
  gotoxy(43,10);write('|');
  gotoxy(43,11);write('|');
  gotoxy(43,12);write('|');
  gotoxy(43,13);write('|');
  gotoxy(43,14);write('|');
  //login
  textcolor(15);
  gotoxy(52,10);write('== L O G I N ==');
  gotoxy(45,11);write('-----------------------------');
  gotoxy(45,12);write('Nama Pengguna : ');readln(NamaPengguna);
  gotoxy(45,13);write('Kata Sandi    : ');readln(KataSandi);
end;//endprocedure

procedure VerifikasiLogin(NamaPengguna, KataSandi : string);
{I.S : Nama Pengguna dan Kata Sandi sudah terdefinisi}
{F.S : Menampilkan hasil verifikasi login}
begin
  while (NamaPengguna <> UserName) or (KataSandi <> Password) do
  begin
    if(NamaPengguna <> UserName) and (KataSandi = Password)
      then
      begin
        gotoxy(45,14); textcolor (cyan);
        write('Salah Nama Pengguna, Tekan Enter!');
        readln;
        gotoxy(45,14); clreol;
        gotoxy(61,12);clreol;
        textcolor(15); readln(NamaPengguna);
      end
      else
        if(NamaPengguna = UserName) and (KataSandi <> Password)
        then
        begin
          gotoxy(45,14); textcolor (cyan);
          write('Salah Kata Sandi, Tekan Enter!');
          readln;
          gotoxy(45,14); clreol;
          gotoxy(61,13);clreol;
          textcolor(15); readln(KataSandi);
        end
        else
        begin
          gotoxy(45,14); textcolor (cyan);
          write('LOGIN GAGAL, Tekan Enter!');
          readln;
          gotoxy(45,14); clreol;
          gotoxy(61,12);clreol;
          gotoxy(61,13);clreol;
          textcolor(15);
          gotoxy(61,12); readln(NamaPengguna);
          gotoxy(61,13); readln(KataSandi);
        end;
  end;//endwhile

end;//endprocedure

procedure IsiN(var N : integer);
{I.S : User memasukkan banyaknya suku (N)}
{F.S : Menghasilkan banyaknya suku (N)}

begin
   write('Banyaknya Suku (N) : ');readln(N);
   //Validasi Banyaknya suku
   while(N<1) do
   begin
     gotoxy(1,2); textcolor(13);
     write('Banyaknya Suku Tidak Boleh kurang dari 1, Tekan Enter !');
     readln;
     gotoxy(1,2); clreol;
     gotoxy(22,1); clreol;textcolor(15); readln(N);
   end;//endwhile
end;//endprocedure

procedure BarisanFibonacci(N : integer);
{I.S : banyaknya suku (N) sudah terdefinisi}
{F.S : Menampilkan barisan fibonacci sebanyak suku N}

var //kamus lokal
  i, SukuN1, SukuN2, Fibo : integer;
begin
  writeln('Barisan Fibonacci sebanyak ',N,' suku adalah ');
  SukuN1 := 0;
  SukuN2 := 0;
  Fibo := 1;
  for i := 1 to N do
  begin
    write(Fibo);
    if(i <> N) then
     write(',');

    SukuN2 := SukuN1;
    SukuN1 := Fibo;
    Fibo := SukuN2 + SukuN1;
  end;//endfor
end;//endprocedure



//badan program utama
begin
  Login(NamaPengguna,KataSandi);
  VerifikasiLogin(NamaPengguna,KataSandi);
  repeat
    clrscr;
    IsiN(N);
    BarisanFibonacci(N);
    writeln;
    writeln;
    write('MAU COBA LAGI[Y/T]? ');readln(Lagi);
  until(Lagi = 'T') or (Lagi = 't');
readln;
end.
