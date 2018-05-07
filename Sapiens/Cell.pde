class Cell {
  public int x;
  public int y;
  public float energy;
  public World world;
  
  public Cell(int x, int y, World world) {
    this.x = x;
    this.y = y;
    this.world = world;
    this.energy = 0;
  }
  
  public void update(Sun sun) {
    energy += sun.getEnergy(x, y);
    energy = (energy > 0)? energy - 1 : 0;
  }
  
  public void draw() {
    int offsetX = 0;
    int offsetY = 0;
    
    if (energy > 200) brown();
    else white();
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