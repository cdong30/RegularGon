class PathShape {
  IntList xs;
  IntList ys;
  color border, inside;
  float[] centroid;
  float area;
  float sumX, sumY;
  int bX, bY, bW, bH;

  PathShape(int bX, int bY, int bW, int bH) {
    this.bX = bX;
    this.bY = bY;
    this.bW = bW;
    this.bH = bH;
    inside = color(255, 0, 255);
    border = color(0, 255, 0);
    xs = new IntList();
    ys = new IntList();
    centroid = new float[2];
    area = 0.0;
  }
  //----------------------------------
  void addPoint(int x, int y) {
    xs.append(x);
    ys.append(y);
    setArea();
    setCentroid();
  }
  //----------------------------------
  void display() {
    stroke(border);
    fill(inside);
    beginShape();
    for (int i = 0; i < xs.size(); i++) {
      vertex(xs.get(i), ys.get(i));
    }
    endShape(CLOSE);

    stroke(255);
    fill(255);
    circle(centroid[0], centroid[1], 5);
  }
  //----------------------------------
  void setArea() {
    area = 0;
    for (int i = 0; i < xs.size(); i++) {
      int x1 = xs.get(i);
      int y1 = ys.get(i);
      int x2 = xs.get((i+1) % xs.size());
      int y2 = ys.get((i+1) % ys.size());
      area += (x1 * y2 - x2 * y1);
    }
    area /= 2;
  }
  //----------------------------------
  void setCentroid() {
    sumX = 0;
    sumY = 0;
    for (int i = 0; i < xs.size(); i++) {
      int x1 = xs.get(i);
      int y1 = ys.get(i);
      int x2 = xs.get((i+1) % xs.size());
      int y2 = ys.get((i+1) % ys.size());
      
      sumX += (x1+x2) * (x1*y2 - x2*y1);
      sumY += (y1+y2) * (x1*y2 - x2*y1);
    }
    sumX /= 6 * area;
    sumY /= 6 * area;
    centroid [0] = sumX;
    centroid [1] = sumY;
  }
  
}//end of class
