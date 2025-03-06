//  week03_06_lerp_frameCount
void setup(){
  size(400, 400);
}
float startX = 10, startY = 10;
float stopX = 390, stopY = 390;
void draw(){
  ellipse(startX, startY, 10, 10);
  ellipse(stopX, stopY, 10, 10);
// lerp() 可做內插，要給它 0.0~1.0 之間的數
  float midX = lerp(startX, stopX, frameCount / 200.0);
  float midY = lerp(startY, stopY, frameCount / 200.0);
// frameCount 是第幾個frame，1hr = 60mins, 1min = 60sec, 1sec = 60frame
  ellipse(midX, midY, 10, 10);
}
