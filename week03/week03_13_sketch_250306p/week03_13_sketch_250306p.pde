// week03_13_3D_ pushMatrix_translate_sphere_popMatrix
void setup(){
  size(600, 400, P3D);
}
void draw(){
  background(128);
  lights();
  
  pushMatrix(); // copy 矩陣
    translate(300, 100);
    rotateY(radians(frameCount)); // try
    sphere(100); 
  popMatrix(); // return 矩陣
  // if copy and return 矩陣,won`t be wrong
  pushMatrix(); 
    translate(100, 100);
    rotateY(radians(frameCount)); // try
    sphere(100);
  popMatrix(); 
}
