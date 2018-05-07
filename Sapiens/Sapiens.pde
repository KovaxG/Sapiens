World world = new World(500);

void setup() {
  size(1000, 600);
  textSize(20);
  noSmooth();
}

void draw() {
  background(100);
  
  long t0 = millis();
  
  world.update();
  
  long dtc = millis() - t0;
  t0 = millis();
  
  world.drawEnergy();
  
  long dtr = millis() - t0;
  
  int mex = (mouseX < 500)? mouseX : 499;
  int mey = (mouseY < 500)? mouseY : 499;
  
  String output = "Calculations: " + dtc + " ms (" + 1f/(dtc/1000f) + ")\n" + 
  "Rendering: " + dtr + " ms(" + 1f/(dtr/1000f) + ")\n" + 
  "Total Period: " + (dtc + dtr) + " ms (" + 1f/((dtr + dtc)/1000f) + ")\n" +
  "Energy at mouse: " + world.cells[mex][mey].energy;
  text(output, 500, 20);
 
}