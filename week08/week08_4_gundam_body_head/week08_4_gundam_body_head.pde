// week08_4_gundam_body_head
// 慢慢把[切割開]的模型 逐一組起來
// 四個檔案拉進來 body.obj body.mtl Diffuse.jpg AO.jpg
PShape body, head;
// 頭的兩個檔案 head.obj head.mtl
void setup(){
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2, height/2+100); 
  sphere(10); // 基準點
  scale(10, -10, 10);
  pushMatrix();
    translate(0.0, +22.5); // (3) 掛回原位
    rotate(radians(x)); // (2) 轉動
    // translate(x/10, y/10); // 要放在小x,y 的座標
    // println(x/10, y/10); // 印出座標 等等要取上面的數值
    translate(0.0, -22.5); // (1) 頭的中心 放在旋轉中心
    shape(head, 0, 0);
  popMatrix();
  shape(body, 0, 0);
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y -= mouseY - pmouseY;
}
