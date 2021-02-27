 
  public void setup()
  {
     size(1000, 1000);
     background(228, 184, 255);
     originalFractal(100,430,400);
  }

  public void draw()
  {
     
     flashingFractal(-300,430,400);
  }
  
  public void mousePressed()
  { 
  
  //optional

  }
  

  public void flashingFractal(float x, float y, float size) 
  {
    if (size < 20) 
    {
      noStroke();
      fill((int)(Math.random()*305)+60,(int)(Math.random()*305)+60, (int)(Math.random()*305)+60); 
      rect(x, y, size, size);
    }
    else {
      flashingFractal(x+size/2, y, size/2);
      flashingFractal(x+size, y-size/2, size/2);
      flashingFractal(x+size, y+size/2, size/2);
      flashingFractal(x+size+size/2, y, size/2);
    }
  }

  public void originalFractal(float x, float y, float size) 
  {
    if (size < 20) {
      noStroke();
      fill(40, 0, 66); 
      rect(x, y, size, size);
    }
    else {
      originalFractal(x, y, size/2);
      originalFractal(x+size, y, size/2);
      originalFractal(x+size/2, y-size/2, size/2);
      originalFractal(x+size/2, y+size/2, size/2);
  }

  }
