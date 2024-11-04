//MY GOAL: Use object oriented programming to create an animation of planets circling the sun


Planet Earth, Mars, Venus, Jupiter, Sun;


void setup() {
  size(1000, 1000);
  
  
  Earth = new Planet(150, 0, 0.02, 30, 30);  // Radius from the Sun, size
  Mars = new Planet(200, 0, 0.015, 25, 25);
  Venus = new Planet(100, 0, 0.025, 35, 35);
  Jupiter = new Planet(250, 0, 0.01, 50, 50);
  
  
  Sun = new Planet(width/2, height/2, 0, 100, 100);  // The Sun remains stationary
  
}

void draw() {
  background(173,216,230);
  
  // Display the Sun in the center
  Sun.displaySun(width/2,height/2);
  
  // Move and display planets around the Sun
  Earth.moveAround(width/2,height/2);
  Earth.display();
  
  Mars.moveAround(width/2,height/2);
  Mars.display();
  
  Venus.moveAround(width/2,height/2);
  Venus.display();
  
  Jupiter.moveAround(width/2,height/2);
  Jupiter.display();
}
