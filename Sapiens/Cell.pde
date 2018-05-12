class Cell {
  public int x;
  public int y;
  public float energy;
  public int type; // 0 -> Water, 1 -> Earth
  public World world;
  
  public Cell(int x, int y, World world, int type) {
    this.x = x;
    this.y = y;
    this.world = world;
    this.energy = 0;
    this.type = type;
  }
  
  public void update(Sun sun) {
    energy += sun.getEnergy(x, y);
    energy = (energy > 0)? energy - 1 : 0;
  }
  
  public void draw() {
    int offsetX = 0;
    int offsetY = 0;
    
    switch (type) {
      case earth:
        if (energy > 200) brown();
        else white();
        break;
      
      case water:
        blue();
        break;
        
      default: 
        black();
    }
    
    point(x + offsetX, y + offsetY);
  }
  
  public void drawEnergy() {
    int offsetX = 0;
    int offsetY = 0;
    
    int c = int(map(energy, 0, 200, 0, 255));
    stroke(c, c, 0);
    point(x + offsetX, y + offsetY);
  }
}

void brown() {
  stroke(160,82,45);
}

void white() {
  stroke(255);
}

void blue() {
  stroke(0, 0, 255);
}

void black() {
  stroke(0);
}

final int water = 0;
final int earth = 1;