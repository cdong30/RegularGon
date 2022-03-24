class TriangleGon extends PathShape {

  TriangleGon(int bX, int bY, int bW, int bH){
    super(bX, bY, bW, bH);
  }
  
  void setCentroid() {
    int xSum = 0;
    int ySum = 0;
    for (int i = 0; i < xs.size(); i++) {
      xSum += xs.get(i);
      ySum += ys.get(i);
    }
    centroid[0] = xSum / 3;
    centroid[1] = ySum / 3;
  }

  void addPoint(int x, int y){
    if(xs.size() < 3 && ys.size() < 3){
      super.addPoint(x, y);
    }
  }
  
} //end of class
