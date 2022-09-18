
//Unscaled Mandelbrot
float aMax = 1;
float aMin = -2;
float bMax = 1.5;
float bMin = -1.5;

// Different values for the Zoom-ins for the Mandebrot

//float aMax = 0.5;
//float aMin = -1;
//float bMax = 0.75;
//float bMin = -0.75;

//float aMax = 1;
//float aMin = -2;
//float bMax = 1.5;
//float bMin = -1.5;

//-.79 + .15i 
//float aMax = -0.78;
//float aMin = -0.80;
//float bMax = 0.14;
//float bMin = 0.16;

//.28 + 0.008i
//float aMax = 0.27;
//float aMin = 0.29;
//float bMax = 0.007;
//float bMin = 0.009;

//float aMax = -0.7840;
//float aMin =-0.7850;
//float bMax = -0.137;
//float bMin = -0.138;


//float aMax = -0.745055360505048823282;
//float aMin = -0.745058112200840049976;
//float bMax = -0.135218884130534229043;
//float bMin = -0.135220953495255273508;


float w = 1000;
float h = 1000;

float slopea = (aMax-aMin)/w;
float intercepta = aMin;
float slopeb = (bMin-bMax)/h;
float interceptb = bMax;

void setup(){
  size(1000, 1000);
  colorMode(RGB, 400);
  background(0);
  noLoop();
}

void draw(){
  for (float x = 0 ; x <= 1000 ; x++){
    float a = getA(x);
    for (float y = 0 ; y <= 1000 ; y++){
      float b = getB(y);
      ComplexNum c = new ComplexNum(a, b);
      ComplexNum z = c;
      int n = 1;
      while ( z.absoluteValue() <= 2 && n < 200 ){ // no equals in condition?
        z = z.multNum(z).addNum(c);
        n++;
      }
      if (n == 200){ // if z did not leave the mandelbrot set.
        stroke(255);
        point(x, y);
      }
      if (n == 200){
        stroke (0);
        point(x, y);
      }
      for (int i = 0 ; i <= n ; i++){
        stroke(n+i, n, i);
        point(x,y);
      }
      if (n == 255) {
        stroke(0);
        point(x,y);
      }
      else {
        color k = color(75,0,130,2*n);
        stroke(k);
        point(x,y);
      }
      if (n==200)
        color(0);
      else
        color(n*16 % 255, 255, 255);
      point(x,y);
          
    }
  }
}
float getA( float x ) { 
  return slopea*x + intercepta;
}

float getB( float y ) { 
  return slopeb*y + interceptb; 
}
