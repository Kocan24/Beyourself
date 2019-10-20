program Menu_pilihan2;
{I.S : pengguna memilih salah satu menu}
{F.S : menampilkan hasil sesuai menu yang dipilih}
uses crt;
//badan deklarasi (kamus)
var
   Menu, M, N, i, Kali, X, Y : integer;
   Pembilang, Penyebut, S : real;
//badan program
begin
  repeat
    //membuat menu
    clrscr;textcolor(15);
    gotoxy(54,11); write('MENU PILIHAN');
    gotoxy(54,12); write('++++++++++++');
    gotoxy(43,14); write('1. M x N');
    gotoxy(43,15); write('2. S = -2/3 + 4/6 -7/9 +11/36 -..');
    gotoxy(43,16); write('0. Keluar');
    gotoxy(43,18); write('Pilihan Anda : ');readln(Menu);

    //validasi menu
    while(Menu < 0) or (Menu > 2) do
    begin
      textcolor(13); gotoxy(43,19);
      write('Salah memilih menu,Ulangi! Tekan Enter');
      readln;
      gotoxy(43,19); clreol;
      gotoxy(58,18); clreol; textcolor(15); readln(Menu);
    end;//endwhile

    //memilih menu
    case (menu) of
      1 : begin
            clrscr;
            //judul layar
            gotoxy(41,2);
            write('((((())))()()()()()()()()()()()()()()+');
            gotoxy(41,3);
            write('PERKALIAN M x N MENGGUNAKAN OPERATOR *');
            gotoxy(41,4);
            write('((((())))()()()()()()()()()()()()()()+');

            //Memasukkan harga M
            textcolor(13);
            gotoxy(1,6);
            write('MASUKKAN HARGA M :');readln(M);

           //validasi M
           while(M < -10) or (M > 10) do
           begin
              textcolor(15);gotoxy(1,7);
              write('Harga M Harus antara -10 sampai 10,Ulangi!');
              readln;
              gotoxy(1,7); clreol;
              gotoxy(19,6); clreol; textcolor(15); readln(M);
           end;//endwhile

           //Memasukkan harga N
            textcolor(13);
            gotoxy(1,7);
            write('MASUKKAN HARGA N :');readln(N);

           //validasi N
           while(N < -10) or (N > 10) do
           begin
              textcolor(15);gotoxy(1,8);
              write('Harga N Harus antara -10 sampai 10,Ulangi!');
              readln;
              gotoxy(1,8); clreol;
              gotoxy(19,7); clreol; textcolor(15); readln(N);
           end;//endwhile

           //proses perkalian
           if(M = 0) or (N = 0)
             then
               Kali := 0
             else
               if(N = 1)
                 then
                   Kali := M
                 else
                   if((M >= 1) or (M < 0)) and (N >= 1)
                     then
                     begin
                       Kali := M;
                       for i := 2 to N do
                         Kali := Kali + M;

                     end
                     else
                       if(M >= 1) and (N < 0)
                         then
                         begin
                           Kali := N;
                           for i:= 2 to M do
                             Kali := Kali + N;

                         end
                         else
                         begin
                           X := -M;
                           Y := -N;
                           Kali := X;
                           for i := 1 to Y do
                             Kali := Kali + X;
                         end;

            gotoxy(1,8);
            write(M,' x ',N,' = ',Kali);



            gotoxy(1,10);textcolor(yellow);
            write('Tekan enter kembali ke Menu Pilihan');
            readln;


          end;
     2 : begin
            clrscr;
            //judul layar
            gotoxy(43,2);
            write('==============================');
            gotoxy(43,3);
            write('S = -2/3 + 4/6 -7/9 +11/36 -..');
            gotoxy(43,4);
            write('==============================');

            //Memasukkan banyaknya suku (N)
            gotoxy(1,6);textcolor(13);
            write('BANYAKNYA SUKU(N) : ');readln(N);

           //validasi suku N
           while(N < 1) or (N > 10) do
           begin
              textcolor(15);gotoxy(1,7);
              write('Banyaknya suku Harus antara 1 sampai 10, Ulangi!');
              readln;
              gotoxy(1,7); clreol;
              gotoxy(21,6); clreol; textcolor(15); readln(N);
           end;//endwhile

           S := 0;
           Pembilang := 1;
           Penyebut := 2;
           gotoxy(1,7); write('S = ');
           for i := 1 to N do
           begin
             Pembilang := Pembilang + i;
             if(i mod 2 = 0)
             then
             begin
                Penyebut := Penyebut * i;
                write(' + ',Pembilang:0:0,'/',Penyebut:0:0);
                S := S + Pembilang/Penyebut;
             end
             else
             begin
                Penyebut := Penyebut + i;
                write(' - ',Pembilang:0:0,'/',Penyebut:0:0);
                S := S - Pembilang/Penyebut;
             end;

           end;//endfor




            gotoxy(1,8);
            write('  =  ',S:0:2);



            gotoxy(1,10);textcolor(yellow);
            write('Tekan enter kembali ke Menu Pilihan');
            readln;


         end;



    end;//endcase

  until (menu = 0);
end.
