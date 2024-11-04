//Creating the planet class so I can easily design all of my planets to my liking

class Planet {
  
  //declaring all of my field variables 
  float pos_x, pos_y; //starting position of my planets
  float wi, he; //height and width of my planets
  float angle; //angle they make with the sun
  float orbit_speed; //speed they orbit the sun with
  float orbit_radius; //distance they orbit the sun with

  //my parameterized constructor for the planets
  Planet(float radius, float startAngle, float speed, float w, float h)
  {
    orbit_radius = radius;
    angle = startAngle;
    orbit_speed = speed;
    wi = w;
    he = h;
  }
  
  void displaySun(float sun_x, float sun_y) {
    fill(255, 204, 0);  // Yellow color for the Sun
    ellipse(sun_x, sun_y, wi, he);  //Drawing the Sun 
  }
  
  void display() {
    fill(random(128,255), random(30,128), random(0,70));
    ellipse(pos_x, pos_y, wi, he);
  }
  
  //Making the planets move around orbiting the sun
  void moveAround(float sun_x, float sun_y) {
    pos_x = sun_x + cos(angle) * orbit_radius; //updating the position of the planet using the suns initial position, orbit radius, and angle the sun and the planet makes
    pos_y = sun_y + sin(angle) * orbit_radius;
    
    angle += orbit_speed;  // Updating the angle
  }
}
