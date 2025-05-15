// week13_3_texture_textureMode_beginShape_vertex_endShape
// 先教貼圖 再加進去
PImage img;
void setup(){
  size(400, 400, P3D); // 要加 P3D 才有OpenGL 3D 功能
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
} // 先用最簡單的 NORMAL 來畫 2個三角形 不像3D透視的效果
void draw(){
  background(128); // 灰色背景
  beginShape(); // 開始畫
    texture(img); // 把圖片 當貼圖
    vertex(40, 80, 0, 0); // 4個頂點 vertex 
    vertex(320, 20, 1, 0);
    vertex(380, 360, 1, 1);
    vertex(160, 380, 0, 1);
  endShape();
}
