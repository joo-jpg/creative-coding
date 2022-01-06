import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class vintage_compArt_tut01 extends PApplet {

// Parametric Equations to Recreate Vintage Computer Art 
// y = 5x

// x = 5t
// y = 3t + 3

static final int NUM_LINES = 10; 
float t; 

public void setup() { 
  background(20); 
  
} 

public void draw() { 
  background(20); 
  stroke(255, 0, 200); 
  strokeWeight(4); 
  
  //"move" 
  translate(width/2, height/2); 
  
  //trailing effect: 
  for (int i = 0; i < NUM_LINES; i++) { 
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i)); 
  } 
  t += 0.5f; //increment t by 1
} 

public float x1(float t) { 
  return sin(t / 10) * 100 + sin(t / 5) * 20;
} 

public float y1(float t) { 
  return cos(t / 10) * 100;
} 

public float x2(float t) { 
  return sin(t / 10) * 200 + sin(t) * 2;
} 

public float y2(float t) { 
  return cos(t / 20) * 200 + cos(t / 12) * 20;
} 
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "vintage_compArt_tut01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
