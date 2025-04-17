// week09_6_save_saveStrings_loadStrings
void setup(){
  size(300, 300);
  rect(10, 10, 80, 80);
  rect(110, 110, 80, 80);
  save("file.png");   // 這個範例 可把某個畫面save存檔
}
int x = 10, y = 10;
void draw(){
  background(204);
  rect(x, y, 80, 80);
}
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  String now = x + " " + y; // 現在座標的字串
  lines.add(now); // println(now); // 在小黑印出來
}
ArrayList<String> lines = new ArrayList<String>(); // ArrayList 資料結構
void keyPressed(){
  String [] arr = new String[lines.size()]; // 傳統 java 陣列的資料結構
  lines.toArray(arr); // 把ArrayList 存成傳統陣列 以便存檔
  if(key=='s') saveStrings("lines.txt", arr); // 按下英文小寫s 會存檔
}
