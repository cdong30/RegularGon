class RegularGon extends PathShape{
  int numSides;
  int radius;
  int x, y, cx, cy;
  int theta;
  
  void generateRegularPolygon(){
    
    cx = (bX + (bX + bW))/2;
    cy = (bY + (bY + bH))/2;
    theta = (int) radians(360/numSides);
    
    for(int i = 0; i < numSides; i++){
    x = int(radius * cos(theta * i) + cx);
    y = int(radius * sin(theta * i) + cy);
    xs.append(x);
    ys.append(y);
    
    println(xs, ys);
    }
  }
  
  RegularGon(int bX, int bY, int bW, int bH, int sides, int lengthy){
    super(bX, bY, bW, bH);
    circle(cx, cy, 10); //centroid
    //setCentroid();
    numSides = sides;
    radius = lengthy;
    generateRegularPolygon();
  }
}
