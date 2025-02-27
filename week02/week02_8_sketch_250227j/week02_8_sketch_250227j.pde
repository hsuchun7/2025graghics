// week02_8_homework_is_here
ArrayList<Integer> x, y; // 先有2個還沒準備好的資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup() {
  size(400, 400);
  img = loadImage("cute.png"); // 每次新檔案都要重拉進來
} //把圖檔拉到程式碼裡(像上周一樣)
void draw() {
  background(img);
  fill(255, 200); // 半透明的色彩 white，alpha值是128
  rect(0, 0, 400, 400); // 畫超大四邊形蓋住
  // 上面是 week02_4，下面用迴圈，從資料結構取出來
  for (int I=0; I<xx.size(); I++) {
    ArrayList<Integer> x = xx.get(I);
    ArrayList<Integer> y = yy.get(I);
    for (int i=1; i<x.size(); i++) {
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
  noFill();
  strokeWeight(5);
  draw1();
  draw2();
  draw3();
  draw4();
  draw5();
}
void keyPressed() {
  if (key=='s' || key=='s') { // 如果按下英文的小寫或大寫 S，想存檔的話
    for (int I=0; I<xx.size(); I++) { // 大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); //取出裡面小的結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();"); //beginShape
      for (int i=1; i<x.size(); i++) { // 小的，再照舊畫!
        println(" vertex(" + x.get(i) + ", " + y.get(i) + ");" );
      } // 改在 keyPressed() 按下 s 或 S 時，再全部列印!
      println("endShape();"); // endShape();
    }
  }
}
void mouseDragged() {
  // println("vertex(mouseX, mouseY);");
  // println("vertex(" + mouseX + ", " + mouseY + ";)" ); // 不要在這印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed() { // 滑鼠按下去，建新的資料結構
  x = new ArrayList<Integer>();
  xx.add(x);
  y = new ArrayList<Integer>();
  yy.add(y);
}
void draw1(){
  beginShape();
   vertex(85, 10);
   vertex(84, 12);
   vertex(84, 14);
   vertex(81, 17);
   vertex(81, 22);
   vertex(79, 27);
   vertex(76, 31);
   vertex(74, 37);
   vertex(72, 40);
   vertex(71, 44);
   vertex(69, 47);
   vertex(68, 48);
   vertex(67, 51);
   vertex(65, 53);
   vertex(63, 54);
   vertex(63, 55);
   vertex(60, 57);
   vertex(60, 59);
   vertex(59, 60);
   vertex(58, 61);
   vertex(57, 63);
   vertex(56, 65);
   vertex(54, 66);
   vertex(52, 67);
   vertex(52, 68);
   vertex(49, 70);
   vertex(48, 70);
   vertex(46, 72);
   vertex(43, 74);
   vertex(40, 76);
   vertex(38, 78);
   vertex(35, 79);
   vertex(34, 81);
   vertex(33, 81);
   vertex(31, 82);
   vertex(31, 83);
   vertex(29, 85);
   vertex(28, 86);
   vertex(26, 88);
   vertex(24, 89);
   vertex(22, 90);
   vertex(22, 91);
   vertex(21, 91);
   vertex(21, 92);
   vertex(20, 93);
   vertex(19, 93);
   vertex(18, 94);
   vertex(17, 95);
   vertex(16, 96);
   vertex(14, 97);
   vertex(14, 100);
   vertex(13, 100);
   vertex(12, 101);
   vertex(11, 103);
   vertex(11, 104);
   vertex(11, 105);
   vertex(11, 106);
   vertex(11, 108);
   vertex(11, 109);
   vertex(11, 112);
   vertex(11, 113);
   vertex(11, 114);
   vertex(11, 116);
   vertex(11, 117);
   vertex(11, 118);
   vertex(11, 119);
   vertex(11, 120);
   vertex(11, 121);
   vertex(11, 122);
   vertex(11, 123);
   vertex(11, 125);
   vertex(12, 125);
   vertex(12, 127);
   vertex(12, 128);
   vertex(12, 129);
   vertex(12, 130);
   vertex(12, 132);
   vertex(12, 133);
   vertex(12, 134);
   vertex(12, 136);
   vertex(12, 137);
   vertex(12, 138);
   vertex(12, 139);
   vertex(12, 141);
   vertex(12, 142);
   vertex(12, 143);
   vertex(12, 144);
   vertex(12, 146);
   vertex(12, 147);
   vertex(12, 148);
   vertex(13, 148);
   vertex(13, 149);
   vertex(13, 151);
   vertex(13, 152);
   vertex(13, 153);
   vertex(14, 155);
   vertex(14, 156);
   vertex(14, 157);
   vertex(14, 158);
   vertex(15, 159);
   vertex(15, 160);
   vertex(15, 161);
   vertex(16, 161);
   vertex(17, 163);
   vertex(17, 164);
   vertex(18, 165);
   vertex(19, 166);
   vertex(21, 168);
   vertex(21, 169);
   vertex(22, 170);
   vertex(22, 171);
   vertex(23, 173);
   vertex(23, 174);
   vertex(24, 175);
   vertex(25, 177);
   vertex(27, 179);
   vertex(28, 181);
   vertex(29, 183);
   vertex(30, 183);
   vertex(30, 184);
   vertex(31, 184);
   vertex(32, 185);
   vertex(34, 185);
   vertex(37, 185);
   vertex(40, 185);
   vertex(41, 185);
   vertex(43, 185);
   vertex(44, 186);
   vertex(45, 186);
   vertex(47, 186);
   vertex(48, 186);
   vertex(49, 188);
   vertex(51, 188);
   vertex(52, 188);
   vertex(53, 188);
   vertex(53, 189);
   vertex(53, 190);
   vertex(53, 191);
   endShape();
}
void draw2(){










beginShape();
 vertex(54, 186);
 vertex(54, 187);
 vertex(53, 188);
 vertex(53, 189);
 vertex(52, 189);
 vertex(51, 190);
 vertex(50, 191);
 vertex(49, 193);
 vertex(49, 194);
 vertex(48, 195);
 vertex(47, 197);
 vertex(45, 199);
 vertex(44, 200);
 vertex(43, 201);
 vertex(43, 202);
 vertex(42, 203);
 vertex(42, 204);
 vertex(41, 206);
 vertex(41, 207);
 vertex(39, 208);
 vertex(39, 210);
 vertex(39, 212);
 vertex(38, 212);
 vertex(37, 214);
 vertex(37, 215);
 vertex(37, 218);
 vertex(37, 219);
 vertex(36, 219);
 vertex(36, 220);
 vertex(36, 221);
 vertex(36, 222);
 vertex(36, 224);
 vertex(36, 225);
 vertex(36, 226);
 vertex(36, 228);
 vertex(35, 230);
 vertex(34, 232);
 vertex(34, 233);
 vertex(34, 235);
 vertex(34, 236);
 vertex(34, 237);
 vertex(34, 238);
 vertex(34, 240);
 vertex(34, 241);
 vertex(34, 242);
 vertex(33, 244);
 vertex(33, 245);
 vertex(33, 246);
 vertex(33, 247);
 vertex(33, 249);
 vertex(33, 250);
 vertex(33, 251);
 vertex(33, 253);
 vertex(33, 254);
 vertex(33, 255);
 vertex(33, 256);
 vertex(33, 258);
 vertex(33, 259);
 vertex(33, 260);
 vertex(33, 262);
 vertex(33, 263);
 vertex(33, 264);
 vertex(33, 265);
 vertex(33, 267);
 vertex(33, 268);
 vertex(33, 269);
 vertex(33, 271);
 vertex(33, 272);
 vertex(33, 273);
 vertex(33, 274);
 vertex(33, 276);
 vertex(33, 278);
 vertex(34, 278);
 vertex(35, 278);
 vertex(37, 279);
 vertex(40, 279);
 vertex(45, 281);
 vertex(48, 281);
 vertex(53, 281);
 vertex(54, 281);
 vertex(55, 281);
 vertex(55, 280);
 vertex(56, 279);
 vertex(56, 278);
 vertex(56, 277);
 vertex(58, 277);
 vertex(60, 277);
endShape();
beginShape();
endShape();
}
void draw3(){
  









beginShape();
 vertex(61, 283);
 vertex(60, 285);
 vertex(59, 287);
 vertex(58, 289);
 vertex(57, 291);
 vertex(57, 293);
 vertex(57, 294);
 vertex(57, 295);
 vertex(57, 296);
 vertex(57, 299);
 vertex(57, 301);
 vertex(57, 302);
 vertex(55, 306);
 vertex(55, 307);
 vertex(55, 310);
 vertex(55, 313);
 vertex(55, 314);
 vertex(55, 315);
 vertex(55, 318);
 vertex(55, 319);
 vertex(55, 321);
 vertex(55, 322);
 vertex(55, 323);
 vertex(55, 325);
 vertex(55, 326);
 vertex(55, 327);
 vertex(55, 328);
 vertex(55, 330);
 vertex(55, 331);
 vertex(55, 334);
 vertex(55, 335);
 vertex(55, 336);
 vertex(55, 338);
 vertex(55, 339);
 vertex(55, 340);
 vertex(55, 342);
 vertex(55, 343);
 vertex(55, 344);
 vertex(55, 345);
 vertex(55, 347);
 vertex(55, 348);
 vertex(56, 349);
 vertex(57, 351);
 vertex(58, 352);
 vertex(58, 354);
 vertex(59, 354);
 vertex(60, 356);
 vertex(61, 356);
 vertex(64, 358);
 vertex(66, 358);
 vertex(69, 358);
 vertex(73, 358);
 vertex(76, 358);
 vertex(79, 358);
 vertex(82, 358);
 vertex(83, 358);
 vertex(84, 358);
 vertex(85, 358);
 vertex(85, 357);
 vertex(85, 356);
 vertex(85, 354);
 vertex(85, 353);
 vertex(85, 352);
 vertex(85, 350);
 vertex(86, 348);
 vertex(86, 346);
 vertex(86, 345);
 vertex(86, 344);
 vertex(86, 343);
 vertex(87, 342);
 vertex(87, 340);
 vertex(87, 339);
 vertex(90, 337);
 vertex(90, 335);
 vertex(92, 333);
 vertex(92, 332);
 vertex(92, 331);
 vertex(92, 329);
 vertex(93, 328);
 vertex(94, 328);
 vertex(95, 326);
 vertex(96, 324);
 vertex(97, 324);
 vertex(98, 322);
 vertex(100, 322);
 vertex(100, 320);
 vertex(102, 320);
 vertex(106, 322);
 vertex(113, 324);
 vertex(116, 325);
 vertex(120, 327);
 vertex(121, 327);
 vertex(122, 328);
 vertex(122, 329);
 vertex(122, 330);
 vertex(122, 331);
 vertex(122, 333);
 vertex(122, 334);
 vertex(122, 335);
 vertex(122, 336);
 vertex(121, 336);
 vertex(121, 338);
 vertex(121, 339);
 vertex(121, 340);
 vertex(121, 342);
 vertex(121, 344);
 vertex(121, 346);
 vertex(121, 347);
 vertex(121, 348);
 vertex(121, 350);
 vertex(122, 352);
 vertex(123, 353);
 vertex(125, 355);
 vertex(126, 355);
 vertex(127, 356);
 vertex(130, 357);
 vertex(133, 359);
 vertex(136, 359);
 vertex(137, 360);
 vertex(138, 360);
 vertex(140, 360);
 vertex(141, 360);
 vertex(144, 360);
 vertex(145, 360);
 vertex(146, 360);
 vertex(147, 361);
 vertex(148, 361);
 vertex(149, 361);
 vertex(152, 361);
 vertex(153, 361);
 vertex(154, 361);
 vertex(157, 361);
 vertex(160, 361);
 vertex(162, 361);
 vertex(163, 361);
 vertex(164, 361);
 vertex(165, 361);
 vertex(168, 361);
 vertex(171, 361);
 vertex(174, 361);
 vertex(175, 361);
 vertex(178, 361);
 vertex(180, 361);
 vertex(181, 361);
 vertex(182, 360);
 vertex(182, 359);
 vertex(182, 358);
 vertex(182, 357);
 vertex(183, 357);
 vertex(183, 354);
 vertex(183, 351);
 vertex(183, 350);
 vertex(183, 349);
 vertex(183, 347);
 vertex(183, 346);
 vertex(183, 345);
 vertex(183, 344);
 vertex(183, 342);
 vertex(183, 341);
 vertex(183, 340);
 vertex(183, 338);
 vertex(183, 336);
 vertex(182, 336);
 vertex(181, 334);
 vertex(181, 333);
 vertex(180, 332);
 vertex(179, 331);
 vertex(178, 328);
 vertex(172, 324);
 vertex(169, 324);
 vertex(164, 320);
 vertex(162, 318);
 vertex(157, 314);
 vertex(155, 312);
 vertex(153, 311);
 vertex(152, 309);
endShape();
}
void draw4(){
  









beginShape();
 vertex(81, 5);
 vertex(83, 6);
 vertex(84, 7);
 vertex(85, 8);
 vertex(86, 9);
 vertex(87, 10);
 vertex(89, 10);
 vertex(89, 11);
 vertex(89, 12);
 vertex(89, 13);
 vertex(89, 15);
 vertex(90, 17);
 vertex(91, 18);
 vertex(92, 19);
 vertex(92, 20);
 vertex(93, 22);
 vertex(93, 23);
 vertex(93, 26);
 vertex(95, 27);
 vertex(95, 29);
 vertex(95, 30);
 vertex(95, 33);
 vertex(96, 34);
 vertex(96, 35);
 vertex(97, 36);
 vertex(97, 37);
 vertex(99, 38);
 vertex(100, 41);
 vertex(104, 45);
 vertex(104, 46);
 vertex(104, 48);
 vertex(105, 49);
 vertex(106, 50);
 vertex(108, 51);
 vertex(108, 53);
 vertex(110, 55);
 vertex(111, 56);
 vertex(113, 58);
 vertex(116, 58);
 vertex(117, 59);
 vertex(119, 61);
 vertex(120, 62);
 vertex(122, 63);
 vertex(125, 65);
 vertex(127, 66);
 vertex(129, 67);
 vertex(130, 67);
 vertex(131, 68);
 vertex(131, 69);
 vertex(132, 70);
 vertex(133, 70);
 vertex(133, 71);
 vertex(135, 73);
 vertex(137, 74);
 vertex(138, 76);
 vertex(140, 76);
 vertex(140, 77);
 vertex(141, 78);
 vertex(141, 79);
 vertex(141, 80);
 vertex(141, 81);
 vertex(141, 82);
 vertex(141, 84);
 vertex(142, 86);
 vertex(143, 86);
 vertex(143, 88);
 vertex(143, 89);
 vertex(143, 90);
 vertex(144, 92);
 vertex(144, 93);
 vertex(145, 95);
 vertex(146, 98);
 vertex(147, 99);
 vertex(148, 100);
 vertex(150, 102);
 vertex(153, 105);
 vertex(154, 106);
 vertex(154, 107);
 vertex(155, 108);
 vertex(157, 110);
 vertex(158, 111);
 vertex(158, 112);
 vertex(158, 114);
 vertex(158, 115);
 vertex(159, 116);
 vertex(159, 117);
 vertex(159, 118);
 vertex(159, 119);
 vertex(159, 120);
 vertex(159, 121);
 vertex(159, 124);
 vertex(159, 126);
 vertex(158, 127);
 vertex(157, 127);
 vertex(158, 128);
 vertex(161, 129);
 vertex(163, 129);
 vertex(163, 130);
 vertex(165, 130);
 vertex(166, 130);
 vertex(167, 130);
 vertex(168, 130);
 vertex(168, 132);
 vertex(168, 133);
 vertex(168, 134);
 vertex(168, 135);
 vertex(168, 137);
 vertex(168, 138);
 vertex(168, 139);
 vertex(168, 141);
 vertex(168, 142);
 vertex(168, 143);
 vertex(168, 144);
 vertex(167, 144);
 vertex(167, 145);
 vertex(167, 147);
 vertex(167, 148);
 vertex(167, 149);
 vertex(166, 149);
 vertex(166, 150);
 vertex(166, 151);
 vertex(165, 152);
 vertex(165, 153);
 vertex(165, 154);
 vertex(165, 155);
 vertex(164, 155);
 vertex(164, 156);
 vertex(164, 158);
 vertex(163, 159);
 vertex(163, 160);
 vertex(162, 161);
 vertex(162, 162);
 vertex(161, 163);
 vertex(160, 164);
 vertex(160, 165);
 vertex(158, 166);
 vertex(157, 167);
 vertex(156, 168);
 vertex(154, 169);
 vertex(153, 169);
 vertex(151, 171);
 vertex(150, 171);
 vertex(149, 171);
 vertex(146, 171);
 vertex(146, 172);
 vertex(145, 172);
 vertex(143, 172);
 vertex(142, 172);
 vertex(141, 172);
 vertex(139, 172);
 vertex(136, 172);
 vertex(133, 172);
 vertex(132, 172);
 vertex(131, 173);
 vertex(130, 174);
 vertex(130, 175);
 vertex(130, 176);
 vertex(130, 177);
 vertex(130, 178);
 vertex(129, 178);
 vertex(129, 180);
 vertex(128, 181);
endShape();
}
voud draw5(){
  









beginShape();
 vertex(127, 180);
 vertex(127, 181);
 vertex(130, 184);
 vertex(131, 186);
 vertex(133, 187);
 vertex(134, 189);
 vertex(134, 190);
 vertex(135, 190);
 vertex(136, 191);
 vertex(136, 192);
 vertex(137, 192);
 vertex(137, 194);
 vertex(138, 195);
 vertex(141, 198);
 vertex(142, 199);
 vertex(143, 201);
 vertex(144, 202);
 vertex(146, 204);
 vertex(147, 205);
 vertex(148, 207);
 vertex(148, 208);
 vertex(150, 209);
 vertex(151, 210);
 vertex(153, 212);
 vertex(154, 213);
 vertex(155, 215);
 vertex(156, 215);
 vertex(157, 216);
 vertex(158, 217);
 vertex(159, 219);
 vertex(159, 220);
 vertex(162, 222);
 vertex(162, 223);
 vertex(163, 225);
 vertex(165, 225);
 vertex(165, 227);
 vertex(166, 227);
 vertex(166, 228);
 vertex(167, 229);
 vertex(169, 231);
 vertex(170, 232);
 vertex(174, 234);
 vertex(177, 237);
 vertex(179, 239);
 vertex(181, 241);
 vertex(182, 242);
 vertex(183, 243);
 vertex(184, 244);
 vertex(184, 245);
 vertex(184, 246);
 vertex(184, 248);
 vertex(184, 249);
 vertex(184, 250);
 vertex(184, 251);
 vertex(184, 253);
 vertex(184, 254);
 vertex(184, 255);
 vertex(184, 256);
 vertex(184, 258);
 vertex(184, 259);
 vertex(182, 261);
 vertex(180, 262);
 vertex(180, 263);
 vertex(179, 263);
 vertex(179, 264);
 vertex(177, 264);
 vertex(174, 264);
 vertex(173, 264);
 vertex(172, 264);
 vertex(169, 264);
 vertex(166, 264);
 vertex(163, 264);
 vertex(160, 264);
 vertex(153, 264);
 vertex(147, 264);
 vertex(144, 264);
 vertex(141, 264);
 vertex(140, 264);
 vertex(139, 264);
 vertex(137, 263);
 vertex(137, 261);
 vertex(137, 260);
 vertex(137, 259);
 vertex(137, 258);
 vertex(137, 256);
 vertex(137, 255);
 vertex(137, 254);
 vertex(137, 253);
 vertex(137, 251);
 vertex(137, 250);
 vertex(137, 249);
 vertex(137, 248);
 vertex(138, 248);
 vertex(138, 247);
 vertex(138, 245);
 vertex(138, 244);
 vertex(138, 243);
 vertex(138, 242);
 vertex(138, 240);
 vertex(138, 239);
 vertex(138, 238);
endShape();
}
