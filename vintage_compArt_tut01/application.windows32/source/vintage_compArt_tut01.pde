// Parametric Equations to Recreate Vintage Computer Art 
// y = 5x

// x = 5t
// y = 3t + 3

static final int NUM_LINES = 10; 
float t; 

void setup() { 
  background(20); 
  size(500, 500);
} 

void draw() { 
  background(20); 
  stroke(255, 0, 200); 
  strokeWeight(4); 
  
  //"move" 
  translate(width/2, height/2); 
  
  //trailing effect: 
  for (int i = 0; i < NUM_LINES; i++) { 
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i)); 
  } 
  t += 0.5; //increment t by 1
} 

float x1(float t) { 
  return sin(t / 10) * 100 + sin(t / 5) * 20;
} 

float y1(float t) { 
  return cos(t / 10) * 100;
} 

float x2(float t) { 
  return sin(t / 10) * 200 + sin(t) * 2;
} 

float y2(float t) { 
  return cos(t / 20) * 200 + cos(t / 12) * 20;
} 
