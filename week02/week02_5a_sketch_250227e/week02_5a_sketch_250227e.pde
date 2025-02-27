// week02_5a_combine_02_4_and_02_3_bad
// 要描圖卻出錯
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png");
} //把圖檔拉到程式碼裡(像上周一樣)
void draw(){
    background(img);
    fill(255, 200); // 半透明的色彩 white，alpha值是128 
    rect(0, 0, 400, 400); // 畫超大四邊形蓋住
    // 上面是 week02_4，下面是 week02_3，但線卻無法上去
    stroke(255, 0, 0); // 紅色的線
    if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}
