void setup()
{
  size(800, 800);
  textFont(createFont("Arial", 20));
}

void draw()
{
  background(100);
  stroke(100);
  strokeWeight(5);

  {
    stroke(255, 0, 0);
    line(400, 400, 400, 0);
  }

  int r = 300; 
  float t = millis()/10000.0f; 

  ellipse(400, 400, 10, 10);

  textFont(createFont("Arial", 23));

  for (int i = 1; i <= 59; i++) {
    t = t - 0.1063;
    int x = (int)(400 + r * cos(t));
    int y = (int)(400 + r * sin(t));

    text(i, x, y);
    fill(255);
  }

  int R = 250; 
  float T = millis()/1000000.0f; 

  ellipse(400, 400, 10, 10);

  textFont(createFont("Arial", 18));

  for (int i = 1; i <= 59; ++i) {
    T = T - 0.1065;
    int x = (int)(400 + R * cos(T));
    int y = (int)(400 + R * sin(T));

    text(i, x, y);
    fill(0);
  }


  int Rr = 150; 
  float Tt = millis()/100000000.0f; 

  ellipse(400, 400, 10, 10);

  textFont(createFont("Arial", 23));

  for (int i = 1; i <= 12; ++i) {
    Tt = Tt - 0.53;
    int x = (int)(400 + Rr * cos(Tt));
    int y = (int)(400 + Rr * sin(Tt));

    text(i, x, y);
    fill(0,0,255);
  }
}
