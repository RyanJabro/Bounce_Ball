int ballYSpeed = 8;
int ballXSpeed = 8;
 int ballXPosition = 50; 
 int ballYPosition = 0;
void setup(){
size(1000,900);
}
void draw(){

  background(#3EAFF7);
  
  fill(#FC0824);
  ellipse(ballXPosition,ballYPosition,75,75);
  fill(#28EA0C);
  rect(mouseX,800,125,30);
  ballXPosition=ballXPosition+ballXSpeed;
  ballYPosition=ballYPosition+ballYSpeed;
  if(ballXPosition > 1000){
     ballXSpeed = -ballXSpeed;
 }if(ballXPosition < 0){
     ballXSpeed = -ballXSpeed;
 }if(ballYPosition < 0){
     ballYSpeed = -ballYSpeed;
     
 }
 if(ballYPosition == 760 && ballXPosition >= mouseX && ballXPosition <= mouseX + 125){
 ballYSpeed = -ballYSpeed;
}
 
}