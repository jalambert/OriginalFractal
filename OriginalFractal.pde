public void setup() {
  size(512, 512);
  frameRate(5);
}
public void draw() {
  squares(256);
  fractal(256, 256, 256);
  //noLoop();
}

public void squares(int wid){
  if(wid == 1){
    noFill();
    stroke((int)(Math.random()*128));
    rect(0+wid, 0+wid, 256-(2*wid), 256-(2*wid));
    rect(256+wid, 0+wid, 256-(2*wid), 256-(2*wid));
    rect(0+wid, 256+wid, 256-(2*wid), 256-(2*wid));
    rect(256+wid, 256+wid, 256-(2*wid), 256-(2*wid));
  }else{
    noFill();
    stroke((int)(Math.random()*128));
    rect(0+wid, 0+wid, 256-(2*wid), 256-(2*wid));
    rect(256+wid, 0+wid, 256-(2*wid), 256-(2*wid));
    rect(0+wid, 256+wid, 256-(2*wid), 256-(2*wid));
    rect(256+wid, 256+wid, 256-(2*wid), 256-(2*wid));
    squares(wid-1);
  }
}

public void fractal(int x, int y, int len) {
  if (len <= 4) {
    noFill();
    for (int i = 0; i <= len; i++) {
      stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
      ellipse(x, y, i, i);
    }
  } else {
    for (int i = 0; i <= len; i++) {
      noFill();
      stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
      ellipse(x, y, i, i);
    }
    fractal(x-(int)(len*sqrt(2))/2, y-(int)(len*sqrt(2))/2, len/4);
    fractal(x+(int)(len*sqrt(2))/2, y-(int)(len*sqrt(2))/2, len/4);
    fractal(x-(int)(len*sqrt(2))/2, y+(int)(len*sqrt(2))/2, len/4);
    fractal(x+(int)(len*sqrt(2))/2, y+(int)(len*sqrt(2))/2, len/4);

    fractal(x, y-(len/2), len/4);
    fractal(x-(len/2), y, len/4);
    fractal(x, y+(len/2), len/4);
    fractal(x+(len/2), y, len/4);
  }
}
