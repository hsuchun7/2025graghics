// week05_03_atan2_dy_dx_text_radians_degrees
// degrees vs. radians 結合 week04_01 and week05_02
void setup(){
  size(400, 400);
}
void draw(){
  background(128);
  line(200, 200, 400, 200);
  line(200, 200, mouseX, mouseY);
  float dx = mouseX-200, dy = mouseY-200;
  float a = atan2(dy, dx);
  arc( 200, 200, 200, 200, 0, a, PIE);
  textSize(30);
  text( "radians: " + a, 100, 100);
  text( "degrees: " + degrees(a), 100, 130);
}
