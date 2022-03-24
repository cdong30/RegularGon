PathShape path;

void setup(){
  size(500, 500);
  //path = new PathShape(0, 0, 400, 400);
  //path = new RegularGon(100, 50, 50, 50, 6, 50);
  path = new TriangleGon(100, 100, 100, 100);
}

void draw(){
  background(200);
  path.display();
}

void mousePressed(){
  path.addPoint(mouseX, mouseY);
}
