// week09_1
PShape body = loadShape("body.obj");
PShape head = loadShape("head.obj");

size(400, 400, P3D);
translate(200, 300);
sphere(10);

scale(10, -10, 10);
shape(body, 0, 0);
shape(head, 0, 0);
