// week02_5_ArrayList_Integer_new_for_size_get_???
// 利用資料結構，把歷史軌跡畫出來
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png"); // 每次新檔案都要重拉進來
} //把圖檔拉到程式碼裡(像上周一樣)
void draw(){
    background(img);
    fill(255, 200); // 半透明的色彩 white，alpha值是128 
    rect(0, 0, 400, 400); // 畫超大四邊形蓋住
    // 上面是 week02_4，下面用回圈，從資料結構取出來
   for(int i=1; i<x.size(); i++){
     line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
   }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
