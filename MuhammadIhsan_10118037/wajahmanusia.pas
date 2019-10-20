program wajah_manusia;
uses crt;
begin
   //bentuk wajah
   window(10,4,110,27); textbackground(white); clrscr;
   //mata kiri
   window(20,8,45,12); textbackground(0); clrscr;
   //mata kanan
   window(75,8,100,12); textbackground(0); clrscr;
   //bola mata kiri
   window(23,9,42,11); textbackground(red); clrscr;
   //bola mata kanan
   window(78,9,97,11); textbackground(red); clrscr;
   //titik mata kiri
   window(25,10,41,10); textbackground(brown); clrscr;
   //titik mata kanan
   window(80,10,96,10);textbackground(brown);clrscr;
   //hidung
   window(55,9,65,17); textbackground(0); clrscr;
   //cuping hidung kiri
   window(50,17,70,19); textbackground(0); clrscr;
   //bibir
   window(30,21,90,24); textbackground(yellow); clrscr;
   //rongga bibir
   window(33,22,87,23); textbackground(0); clrscr;
   readln;

end.
