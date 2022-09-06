float _angle = 0;

void setup()
{
  //fullScreen(); //differs with size of computer screen
  size(800,600);
  surface.setTitle("Howdy World! :D");
  surface.setResizable(true); //can manually resize
  //surface.setLocation(400, 400); //where it pops up
}

void draw()
{
  clearScene();
  noStroke();
  translate(width/2,height/2);
  fill(color(255,255,255));
  circle(0,0,100);
  
  pushMatrix();
    rotate(radians(_angle));
    translate(200,0);
    fill(color(160,0,90));
    circle (0,0,50);
    pushMatrix();
      rotate(radians(_angle)*4);
      translate(80,0);
      fill(color(255,50,0));
      circle (0,0,20);
    popMatrix();
    pushMatrix();
      rotate(radians(_angle)*2);
      translate(100,0);
      fill(color(0,100,255));
      circle (0,0,25);
    popMatrix();
  popMatrix();
/*  
pushMatrix();
   rotate(radians(_angle)*2);
   translate(100,0);
   circle (0,0,25);
 popMatrix();
*/
  pushMatrix();
    rotate(radians(_angle)*2);
    translate(120,0);
    fill(color(255,200,0));
    circle (0,0,25);
  popMatrix();
  
  _angle = _angle +1;
}

void clearScene()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
}
