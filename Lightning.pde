import java.util.Random;

int startX = mouseX;
int startY = mouseY;
int endX = startX;
int endY = startY;


void setup()
{
  size(600,600);
}
void draw()
{  
  background(0);
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  while(endY <= 600){
    strokeWeight(10);
    //the lightning starts at the mouse when clicked and ends whenever it reaches the bottom of the window
    endX = startX + (int)(Math.random() * 31) - 15;
    endY = startY + (int)(Math.random() * 11);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
}
void mouseClicked()
{
  startX = mouseX;
  startY = mouseY;
  endX = startX;
  endY = startY;
}
