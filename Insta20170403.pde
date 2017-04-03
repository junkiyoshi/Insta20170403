

void setup()
{
  size(512, 512, P3D);
  frameRate(24);
  colorMode(HSB);
  rectMode(CENTER);
}

void draw()
{
  background(0, 32);
  translate(width / 2, height / 2, 0);
  
  float angle = frameCount % 360 + 45;
  float camera_x = 300 * cos(radians(angle));
  float camera_z = 300 * sin(radians(angle));   
  camera(camera_x, 0, camera_z, 0, 0, 0, 0, 1, 0);
  
  noStroke();
  fill(0, 0, 255);
  sphere(5);
  
  angle += 120;
  for(int i = 1; i < 10; i++)
  {
    angle += 0.5;
    rotateX(radians(angle % 360));
    rotateY(radians(angle % 360));
    stroke(0, 0, 255);
    strokeWeight(3);
    noFill();
    ellipse(0, 0, width * i * 0.05, height * i * 0.05);
  }
  
  /*
  println(frameCount);
  saveFrame("screen-#####.png");
  if(frameCount > 360)
  {
     exit();
  } 
  */
}