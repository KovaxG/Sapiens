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
        cells[x][y] = new Cell(x, y, world);
      }
    }
    
    // Initialise Sun
    sun = new Sun(0, 255);
  }
  
  public void update() {
    sun.x = (sun.x > 500)? 0 : sun.x + 10;
    
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
  }
}