// week02_7_keyPressed_if_s_for__for_println_vertex_beginShape
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
}
void keyPressed() {
  if (key=='s' || key=='s') { // 如果按下英文的小寫或大寫 S，想存檔的話
    for (int I=0; I<xx.size(); I++) { // 大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); //取出裡面小的結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();"); //beginShape
      for (int i=1; i<x.size(); i++) { // 小的，再照舊畫!
        println(" vertex(" + x.get(i) + ", " + y.get(i) + ";)" );
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
