import peasy.*;
PeasyCam c;
float G=0.1;
planet earth;
planet mars;
planet venus;
planet jupiter;
void setup()
{
  fullScreen(P3D);
  c=new PeasyCam(this,1000);
  earth=new planet(3*width/8,0,1,20,new PVector(0.1,-0.1));
  mars=new planet(-3*width/8,0,1,20,new PVector(-0.1,0.1));
  venus=new planet(0,-3*height/8,1,20,new PVector(0.1,0.1));
    jupiter=new planet(0,3*height/8,1,20,new PVector(-0.1,-0.1));

  
}
void draw()
{
 //scale(0.25);
  background(0);
  //translate(width/2,height/2);
   //translate((earth.x*earth.mass+mars.x*mars.mass+venus.x*venus.mass)/(earth.mass+mars.mass+venus.mass),(earth.y*earth.mass+mars.y*mars.mass+venus.y*venus.mass)/(earth.mass+mars.mass+venus.mass));

 // translate((earth.x+mars.x)/2,(earth.y+mars.y)/2);
  earth.show();
  earth.update(mars,venus,jupiter);
  mars.show();
  mars.update(earth,venus,jupiter);
  venus.show();
  venus.update(earth,mars,jupiter);
  jupiter.show();
    jupiter.update(earth,mars,venus);

  
}
float x,y;

void keyPressed()
{
  //translate(-width/2,-height/2);
  if(key=='e')
  {
      pushMatrix();

 earth.x=mouseX-width/2;
 earth.y=mouseY-height/2;
 popMatrix();
  }
  if(key=='v')
  {  pushMatrix();

 venus.x=mouseX-width/2;
 venus.y=mouseY-height/2;
 popMatrix();
  }
  if(key=='m')
  {  pushMatrix();

 mars.x=mouseX-width/2;
 mars.y=mouseY-height/2;
 popMatrix();
  }
  if(key=='j')
  {  pushMatrix();

 jupiter.x=mouseX-width/2;
 jupiter.y=mouseY-height/2;
 popMatrix();
  }
}
