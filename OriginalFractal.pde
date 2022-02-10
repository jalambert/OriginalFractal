public void setup() {
  size(512, 512);
}
public void draw() {
  fractal(256, 256, 256);
  //noLoop();
}
public void mouseDragged() {
}
public void fractal(int x, int y, int len) {
  if (len <= 4) {
    //fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    ellipse(x, y, len, len);
  } else {
    ellipse(x, y, len, len);
    fractal(x, y-(len/2), len/4);
    fractal(x-(len/2), y, len/4);
    fractal(x, y+(len/2), len/4);
    fractal(x+(len/2), y, len/4);

    fractal(x-(int)(len*sqrt(2))/2,y-(int)(len*sqrt(2))/2,len/4);
    fractal(x+(int)(len*sqrt(2))/2,y-(int)(len*sqrt(2))/2,len/4);
    fractal(x-(int)(len*sqrt(2))/2,y+(int)(len*sqrt(2))/2,len/4);
    fractal(x+(int)(len*sqrt(2))/2,y+(int)(len*sqrt(2))/2,len/4);
  }
}
