class ComplexNum{
  float realPart;
  float imaginaryPart;
  
  ComplexNum(float r, float i){
    this.realPart = r;
    this.imaginaryPart = i;
  }
  
  void display(){
    println(this.realPart, "+", this.imaginaryPart + "i");
  }

  float absoluteValue(){
    float absValue = sqrt(pow(this.realPart, 2) + pow(this.imaginaryPart, 2));
    return absValue;
  }
  ComplexNum addNum(ComplexNum n){
    float real = this.realPart + n.realPart;
    float imaginary = this.imaginaryPart + n.imaginaryPart;
    return new ComplexNum(real, imaginary);
  }
  
  ComplexNum multNum(ComplexNum n){
    float real = (this.realPart * n.realPart) - (this.imaginaryPart * n.imaginaryPart);
    float imaginary = (this.imaginaryPart * n.realPart) + (this.realPart * n.imaginaryPart);
    return new ComplexNum(real, imaginary);
  }
  
}
