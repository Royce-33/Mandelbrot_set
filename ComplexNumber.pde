class ComplexNumber{
  //fields
  float real;
  float imagine;
  
  //constructor
  ComplexNumber(float realPart, float imaginaryPart){
    this.real = realPart;
    this.imagine = imaginaryPart;
  }
  
  //behaviours
  
  ComplexNumber Add(ComplexNumber a){
    float realSum = this.real + a.real;
    float imagSum = this.imagine + a.imagine;
    
    ComplexNumber sum = new ComplexNumber(realSum, imagSum);
    return sum;
  }
  
  float absval(){
    float realSquare = pow(this.real,2);
    float imagineSqaure = pow(this.imagine,2);
    
    float absolute = sqrt(realSquare+imagineSqaure);
    return absolute;
  }
  
  ComplexNumber multiply (ComplexNumber a){
    float realProduct = this.real * a.real;
    float realImagProduct1 = this.real * a.imagine;
    float realImagProduct2 = this.imagine * a.real;
    float imagProduct = this.imagine * a.imagine *-1; //the -1 being the i^2
    
    float ripSum = realImagProduct1 + realImagProduct2;
    float realSum = realProduct + imagProduct;
    
    ComplexNumber product = new ComplexNumber(realSum, ripSum);
    
    return product;
  }
  
  ComplexNumber multiplyByReal (float r){
    float realProduct = this.real*r;
    float imagProduct = this.imagine*r;
    
    ComplexNumber sum = new ComplexNumber(realProduct, imagProduct);
    
    return sum;
  }
  
  
  
  
  void display(){
    if (this.imagine == 1){
      println(this.real, "+ i");
    }    
    else if (this.imagine > 0){
      println(this.real, "+", this.imagine);
    }
    else if (this.imagine < 0){
      println(this.real, "-", this.imagine);
    }
  }
  
}
