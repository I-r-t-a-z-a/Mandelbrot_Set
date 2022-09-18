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


/* 
//"octopus"
<?xml version='1.0'?>
<mandelbrot_settings_2>
<image_size width='800' height='600'/>
<limits>
   <xmin>-0.745058112200840049976</xmin>
   <xmax>-0.745055360505048823282</xmax>
   <ymin>-0.135220953495255273508</ymin>
   <ymax>-0.135218884130534229043</ymax>
</limits>
<palette colorType='HSB'>
   <divisionPoint position='0' color='0;1;1'/>
   <divisionPoint position='1' color='1;1;1'/>
</palette>
<palette_mapping length='250' offset='0'/>
<max_iterations value='1000'/>
</mandelbrot_settings_2>

*/
