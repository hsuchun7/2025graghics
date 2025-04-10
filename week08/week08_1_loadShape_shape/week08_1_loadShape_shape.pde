// week08_1_loadShape_shape
size(400, 400, P3D); // (3) 要有P3D 的 OpenGL 3D 功能
PShape gundam = loadShape("Gundam.obj"); // (1)讀入 3D 模型
translate(width/2, height/2);
pushMatrix(); // 備份矩陣
  translate(0, 100); // 下移一點比較好看
  scale(10, -10, 10); // (4) 模型放大 shape(10) 上下顛倒
  shape(gundam, 0, 0); // (2) 畫出 3D 模型
popMatrix(); // 還原矩陣
