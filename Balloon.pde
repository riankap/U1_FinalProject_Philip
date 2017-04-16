class Balloon
{

  float x = width/2;
  float y = height/2;
  float xv = -1+ random(20);
  float yv = -1+ random(20);
  float radius = 20;
  color c = color(random(255), random(255), random(255)); 
  boolean isAlive=false; 

  Balloon(float _x, float _y, float _xv, float _yv, color _c, float _radius)
  {
    x=_x;
    y=_y;
    xv=_xv;
    yv=_yv;
    c= _c;
    radius= _radius;
    isAlive=false;
  }

  public void update() //Balloons move
  {

    y += yv;
    x += xv;
    
    
    
  }

  void render() 
  {
    stroke(200, 200, 200); //For the balloon string
    line(x, y+radius, x, y+ radius*4);
    noStroke();// if want to hide outline
    fill(c); //Balloon color
    ellipse(x, y, radius, radius*1.15);
  }

  void run() 
  {
    update();
    render();
  }
  
  
  void GoMouse()
 {
   x=mouseX;
   y=mouseY;
 }
  
  
 
  
}