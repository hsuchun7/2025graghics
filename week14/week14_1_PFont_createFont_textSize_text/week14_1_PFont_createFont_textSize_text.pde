// week14_1_PFont_createFont_textSize_text
// 學過 PImage PVector P...
size(300, 300);
textSize(50);
text("Hello", 10, 50);
PFont font = createFont("Times New Roman",50); 
textFont(font);
text("Hello", 10, 100);
// print(PFont.list());
// 改用 for 迴圈，把全部的字型 分行印出來
for(String name : PFont.list()) println(name);
