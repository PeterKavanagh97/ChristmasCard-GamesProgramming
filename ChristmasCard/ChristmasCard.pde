import processing.sound.*;
SoundFile file;
SoundFile file2;

int[] cloudX = {50,114,85,360,395,435};
int[] cloudY = {30,32,25};

void setup ()
{
  size (500,500);
  file = new SoundFile(this, "Blizzard.mp3");
  file.loop();
  file = new SoundFile(this, "SleighBells.mp3");
  file.loop();
}

void draw ()
{
  background(90,90,90);
   fill(255);
blizzard();
   stroke(0);
   strokeWeight(8);
line(204,191,74,120); //arms
line(284,191,414,120);
      strokeWeight(7);
   ellipse(241,293,267,175); //snowman
    ellipse(241,193,192,138);
     ellipse(241,102,129,116);
     
   for(int i=0; i<=60;) 
     {
       fill(0);
  ellipse(240,180+i,5,5);
  i = i+30;
  
   }
   
                strokeWeight(3); //nose
          fill(235,140,4);
  triangle(236,117,273,110,236,102);
  
          fill(0); //snowman face
  ellipse(218,95,5,5);
  ellipse(263,95,5,5);
   ellipse(211,120,5,5);
    ellipse(223,127,5,5);
     ellipse(238,131,5,5);
         ellipse(265,123,5,5);
          ellipse(252,130,5,5);
          
          strokeWeight(3); //snowballs
          fill(255);
           ellipse(101,285,44,44);
           if (mousePressed == true) {      //take snowball from pile 
             ellipse(mouseX,mouseY,44,44);
           } else {
            ellipse(117,260,44,44); 
           }
           
           ellipse(117,260,44,44);
           ellipse(133,285,44,44);          

     strokeWeight(7); //pot
   fill(96,55,6);
 rect(87,296,315,200,0,0,50,50);
  fill(148,81,2);
 rect(54,289,378,68,100,100,50,50);
 
 strokeWeight(5);
 fill(50);
 rect(172,42,136,19,50,50,0,0);
  rect(200,26,76,19);
  fill(70);
  ellipse(238,26,76,13);
  
  fill(255);
  textSize(52);
  text("Snowballs! $5!",84,339);
  textSize(41);
  text("Happy Christmas!",92,429);
  
  noStroke();
  fill (150);  //clouds
  //strokeWeight(2);
ellipse(cloudX[0],cloudY[0],76,56);
ellipse(cloudX[1],cloudY[1],71,54);
ellipse(cloudX[2],cloudY[2],70,56);
ellipse(cloudX[3],cloudY[0],76,56);
ellipse(cloudX[4],cloudY[2],76,56);
ellipse(cloudX[5],cloudY[1],76,56);
 
}



void blizzard()
{
   for (int i = 0; i <71; i++)
  {
  
  float x = random(width);
  float y = random(height);
strokeWeight(4);
stroke(178,238,239);
  line(x,y,x,y+3);
  
  delay(3);
  
   
  
  }
}
