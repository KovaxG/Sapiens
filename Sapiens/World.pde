class World {
  public int size;
  public Cell[][] cells;
  public Sun sun;
  
  public World(int size) {
    // Initialise World
    this.size = size;
    cells = new Cell[size][size];
    
    for (int x = 0; x < size; x++) {
      for (int y = 0; y < size; y++) {
        float elevation = noise(x / 100f, y / 100f);
        int type = elevation > 0.5? earth : water;
        
        cells[x][y] = new Cell(x, y, world, type);
      }
    }
    
    // Initialise Sun
    sun = new Sun(0, 255);
  }
  
  public void update() {
    sun.x = (sun.x > 500)? 0 : sun.x + 1;
    
    for (int x = 0; x < size; x++) {
      for (int y = 0; y < size; y++) {
        cells[x][y].update(sun);
      }
    }
  }
  
  public void draw() {
    for (int x = 0; x < size; x++) {
      for (int y = 0; y < size; y++) {
        cells[x][y].draw();
      }
    }
    
    stroke(0);
    fill(255, 255, 0);
    ellipse(sun.x, sun.y, 5, 5);
  }
  
  public void drawEnergy() {
    for (int x = 0; x < size; x++) {
      for (int y = 0; y < size; y++) {
        cells[x][y].drawEnergy();
      }
    }
  }
}