// week10_2_postman_head_body_push_trt_pop
PImage postman, head, body;
void setup(){
  size(560, 560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(postman, 0, 0); // 基礎郵差身體(全身)
  fill(255, 0, 255, 128); // 半透明的紫色
  rect(0, 0, 560, 560); // 蓋上去
  pushMatrix();
    translate(+232, +200);
    rotate(radians(mouseX));
    translate(-232, -200); // 把頭的旋轉中心 放到(0,0)
    image(head, 0, 0); // 再畫頭
  popMatrix();
  image(body, 0, 0); // 再畫身體
}
