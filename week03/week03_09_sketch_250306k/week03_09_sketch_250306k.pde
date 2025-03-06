// week03_09_3D_random_random_point
float [] x = new float[1000];
float [] y = new float[1000];
void setup(){
  size(400, 400, P3D);
  for(int i=0; i<1000; i++){
    x[i] = random(400);
    y[i] = random(400);
  }
}
void draw(){
  background(0); // balck background
  stroke(255); // white line
  for(int i=0; i<1000; i++){
    point(x[i], y[i]); // 2D point
  }
}
