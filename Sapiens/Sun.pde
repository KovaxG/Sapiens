class Sun {
  public int x = 0;
  public int y = 0;
  
  public Sun(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public float getEnergy(int sx, int sy) {
    float distance = sqrt((x - sx) * (x - sx) + (y - sy) * (y - sy));
    float multiplier = 3;
    
    return (distance < 200)? multiplier : 0;
  }
}