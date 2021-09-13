
void setup(){
  size(1000,1000);
  noStroke();
  background(0);
  ComplexNumber z = new ComplexNumber(3, 4);
  ComplexNumber w = new ComplexNumber(2, 2);
  ComplexNumber zw = z.multiply(w);
  zw.display();

  
  
  float abs = z.absval();
  println(abs);
  noLoop(); //causes the sqaure thing on screen
}

float getX(float a){
    float x = (1000/3)*a + (2000/3);
    return x;
  }
  
  float getY(float b){
    float y = (-1000/3)*b +(1500/3);
    return y;
  }

void draw(){
  for (float a = -2; a < 1; a += 0.003){
    for (float b = -1.5; b < 1.5; b += 0.003){
      ComplexNumber c = new ComplexNumber(a,b);
      ComplexNumber z = c;
      int n = 0;
      while (z.absval() < 2 && n < 200){
        ComplexNumber zSq = z.multiply(z);
        z = zSq.Add(c);
        n++;
      }
      if (n == 200){
        fill(255,255,255);
        ellipse(getX(a), getY(b), 1, 1);
      }
      else if (n < 20){
        fill(255,0,0);
        ellipse(getX(a), getY(b), 1, 1);
      }
    }
  }
}
  
