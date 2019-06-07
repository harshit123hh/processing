class planet
{
 float x=0,y=0;
 float mass;
 float radius;
 //planet center;
 PVector dis=new PVector(0,0);
 PVector vec;
 PVector force;
 PVector acc;
 planet(float x,float y,float mass,float radius,PVector vec)
 {
  this.x=x;
  this.y=y;
  this.mass=mass;
  this.radius=radius;
  this.vec=vec;
 }
 void show()
 {   //noStroke();
stroke(51);
strokeWeight(1);
  fill(255,255,0);
  pushMatrix();
  translate(this.x,this.y);
 sphere(radius*2);
  popMatrix();
 }
 void update(planet center1,planet center2,planet center3)
 {
   float temp;
  dis=new PVector((center1.x-x),(center1.y-y));
  if(dis.mag()!=0)
  {
   temp=(G*mass*center1.mass)/pow(dis.mag(),2);
  force=dis.mult(temp);
  acc=force.div(mass);
  vec=vec.add(acc);
  }
  x=x+vec.x;
  y=y+vec.y;

   dis=new PVector((center2.x-x),(center2.y-y));
     if(dis.mag()!=0)
     {
   temp=(G*mass*center2.mass)/pow(dis.mag(),2);
  force=dis.mult(temp);
  acc=force.div(mass);
  vec=vec.add(acc);
     }
  x=x+vec.x;
  y=y+vec.y;
  
  
  dis=new PVector((center3.x-x),(center3.y-y));
    if(dis.mag()!=0)
    {
   temp=(G*mass*center3.mass)/pow(dis.mag(),2);
  force=dis.mult(temp);
  acc=force.div(mass);
  vec=vec.add(acc);
    }
  x=x+vec.x;
  y=y+vec.y;
  stroke(255);
  strokeWeight(2);
     /* line(center1.x,center1.y,x,y);

  line(center2.x,center2.y,x,y);
    line(center3.x,center3.y,x,y);*/
  ellipse((x*mass+center1.x*center1.mass+center2.x*center2.mass+center3.x*center3.mass)/(mass+center2.mass+center1.mass+center3.mass),(y*mass+center2.y*center2.mass+center1.y*center1.mass+center3.y*center3.mass)/(mass+center2.mass+center1.mass+center3.mass),20,20);

  
 }
  
}
