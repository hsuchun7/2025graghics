// week02_4_PImage_loadImage
// 新的開始，要描圖
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png");
} //把圖檔拉到程式碼裡(像上周一樣)
void draw(){
    background(img);
    fill(255, mouseX); // 半透明的色彩 white，alpha值是128 
    println(mouseX); // 把mouseX 的值，在下面{小黑}印出來
    rect(0, 0, 400, 400); // 畫超大四邊形蓋住
}
