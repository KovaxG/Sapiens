class Sun {
  public int x = 0;
  public int y = 0;
  
  public Sun(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public float getEnergy(int sx, int sy) {
    float rightDistance = abs(x - sx);
    float leftDistance = world.size - rightDistance;
    float xdistance = min(leftDistance, rightDistance);
    
    float distance = sqrt(xdistance * xdistance + (y - sy) * (y - sy));
    float multiplier = 3;
    
    return (distance < 200)? multiplier : 0;
  }
}