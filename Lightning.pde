int startX; //starting x coordinate of each individual segment
int startY; //starting y coordinate of each individual segment
int endX; //ending x coordinate of each individual segment
int endY; //ending y coordinate of each individual segment
void setup() {
  size(1000, 1000);  //feel free to change the size
  background(0, 102, 102);
  strokeWeight(3);
  stroke(102, 255, 204);
}
void draw() {
  
  fill(204, 255, 255); //following orb
  ellipse(mouseX, mouseY, 20, 20);
  fill(0, 102, 102);
  ellipse(mouseX, mouseY, 20, 20);
  
  if (mousePressed == false){ //fade when mouse not clicked
    fill(0, 102, 102, 80);
    rect(0, 0, 1000, 1000);
  }
  if (mousePressed == true) { //lightning when mouse clicked

    startX = mouseX;
    startY = mouseY;
    
    for (int i = 0; i < 20; i++){ 
      
      if (endX > 0){
        endX = startX + (int)(Math.random() * 300);
      }else{
        endX = startX + (int)(Math.random() * 300 - 300);
      }
      
      endX = startX + (int)(Math.random() * 300 - 150);
      endY = startY + (int)(Math.random() * 300 - 150);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY; 
      
    }
  }
  
  System.out.println("startX: " + startX); //variable check
  System.out.println("startY: " + startY);
  System.out.println("endX: " + endX);
  System.out.println("endY: " + endY);
}
  
