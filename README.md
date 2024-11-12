# Planet Orbit Simulation

This project is an animated simulation of planets orbiting the Sun using Processing. The program uses object-oriented programming to create a `Planet` class, allowing each planet to have customizable properties such as orbit radius, speed, size, and color. The Sun remains stationary in the center, while the planets move around it in elliptical orbits.

## Class Overview

### Planet
The `Planet` class models a planet with properties for position, size, orbit radius, orbit speed, and angle relative to the Sun.

#### Attributes
- `pos_x`, `pos_y` (float): Starting position of the planet.
- `wi`, `he` (float): Width and height of the planet.
- `angle` (float): Angle the planet makes with the Sun.
- `orbit_speed` (float): Speed at which the planet orbits the Sun.
- `orbit_radius` (float): Distance from the Sun.

#### Constructors
- **Planet(float radius, float startAngle, float speed, float w, float h)**
  - Initializes a planet with a given orbit radius, starting angle, orbit speed, width, and height.

#### Methods
- **displaySun(float sun_x, float sun_y)**: Draws the Sun at a given position with a yellow color.
- **display()**: Draws the planet at its current position with a random color.
- **moveAround(float sun_x, float sun_y)**: Updates the position of the planet based on its orbit radius, angle, and the Sun's position.

## Main Program

The `setup()` function initializes the canvas and creates instances of the `Planet` class for the Sun and various planets (Earth, Mars, Venus, and Jupiter). The `draw()` function animates the scene by continuously updating the positions of the planets and displaying them.

### Code Example

```java
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
  Sun.displaySun(width/2, height/2);
  
  // Move and display planets around the Sun
  Earth.moveAround(width/2, height/2);
  Earth.display();
  
  Mars.moveAround(width/2, height/2);
  Mars.display();
  
  Venus.moveAround(width/2, height/2);
  Venus.display();
  
  Jupiter.moveAround(width/2, height/2);
  Jupiter.display();
}
