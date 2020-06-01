int a[] = new int [9];
void setup() {
  size(450,450);
for(int z=0;z<9;z++)
  {
    a[z]=2;
  }
}
int d=0;
int c;
int b=0;
void draw() {
  int x =mouseX/150;
  int y =mouseY/150;

  int z=3*x+y;
  if(a[z]!=0&&a[z]!=1&&(mousePressed))
  {
    if(b==0)
    {
      a[z]=b;
      fill(255,0,0);
      rect(x*150,y*150,150,150);
      b=1;
    }
    else
    {
      a[z]=b;
      fill(0,255,0);
      rect(x*150,y*150,150,150);
      b=0;
    }
  }
  strokeWeight(4);
  if(a[0]==a[1]&&a[1]==a[2]&&a[0]!=2){
    line(75,0,75,450);
    c=1;
  }
  else if(a[3]==a[4]&&a[4]==a[5]&&a[3]!=2){
    line(225,0,225,450);
    c=1;
  }
  else if(a[6]==a[7]&&a[7]==a[8]&&a[6]!=2){
    line(375,0,375,450);
    c=1;
  }
  else if(a[0]==a[3]&&a[3]==a[6]&&a[0]!=2){
    line(0,75,450,75);
    c=1;
  }
  else if(a[1]==a[4]&&a[4]==a[7]&&a[1]!=2){
    line(0,225,450,225);
    c=1;
  }
  else if(a[2]==a[5]&&a[5]==a[8]&&a[2]!=2){
    line(0,375,450,375);
    c=1;
  }
  else if(a[0]==a[4]&&a[4]==a[8]&&a[0]!=2){
    line(0,0,450,450);
    c=1;
  }
  else if(a[2]==a[4]&&a[4]==a[6]&&a[2]!=2){
    line(450,0,0,450);
    c=1;
  }
  for(int j = 0 ; j < 9 ; j++)
      {
        if(a[j]!=2)
        {
          d++;
         }
         else
           break;
      }
  
  if(d==9)
  {
    c=2;
    b=2;
  }
  d=0;
  if(c==1){
    c();
    noLoop();
  }
  if(c==2)
  {
    c();
    noLoop();
  }
}

void c(){
  //delay(5000);
  if(b==1)
  {
    //background(0);
    fill(255);
    textSize(45); 
    textAlign(CENTER);
    delay(500);
    text("First person Wins",225,225);
    //delay(1000);
    //background(0);
    //text("First person Wins",225,225);
  }
  else if(b==0)
  {
    //background(0);
    fill(255);
    textSize(45);
    textAlign(CENTER);
    text("Second person Wins",225,225);
    //delay(1000);
    //background(0);
    //text("Second person Wins",225,225);
  }
  else if(b==2)
  {
    //background(0);
    fill(255);
    textSize(45);
    textAlign(CENTER);
    text("It's a DRAW.",225,225);
    //delay(1000);
    //background(0);
    //text("It's a DRAW.",225,225);
  }

}
    
