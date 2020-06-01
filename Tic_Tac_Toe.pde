int a[] = new int [9];
void setup() {
  size(458,504);
for(int z=0;z<9;z++)
  {
    a[z]=2;
  }
  background(153);
  strokeWeight(2);
  //horizontal lines
  line(0,0,456,0);
  line(0,152,458,152);
  line(0,304,458,304);
  line(0,456,458,456);
  //vertical lines
  line(0,0,0,456);
  line(152,0,152,456);
  line(304,0,304,456);
  line(456,0,456,456);
  fill(255);
  textSize(45); 
  textAlign(CENTER);
  text("1st-RED 2nd-GREEN",226,495);
}
int d=0;
int c;
int b=0;
void draw() {
  int x =mouseX/152;
  int y =mouseY/152;

  int z=3*y+x;
  if(a[z]!=0&&a[z]!=1&&(mousePressed))
  {
    if(b==0)
    {
      a[z]=b;
      fill(255,0,0);
      noStroke();
      //stroke(255,0,0);
      rect(x*150+(x+1)*2,y*150+(y+1)*2,150,150);
      b=1;
    }
    else
    {
      a[z]=b;
      fill(0,255,0);
      noStroke();
      //stroke(0,255,0);
      rect(x*150+(x+1)*2,y*150+(y+1)*2,150,150);
      b=0;
    }
  }
  stroke(0);
  strokeWeight(2);
  if(a[0]==a[1]&&a[1]==a[2]&&a[0]!=2){
    line(0,76,458,76);
    c=1;
  }
  else if(a[3]==a[4]&&a[4]==a[5]&&a[3]!=2){
    line(0,228,458,228);
    c=1;
  }
  else if(a[6]==a[7]&&a[7]==a[8]&&a[6]!=2){
    line(0,380,458,380);
    c=1;
  }
  else if(a[0]==a[3]&&a[3]==a[6]&&a[0]!=2){
    line(76,0,76,458);
    c=1;
  }
  else if(a[1]==a[4]&&a[4]==a[7]&&a[1]!=2){
    line(228,0,228,458);
    c=1;
  }
  else if(a[2]==a[5]&&a[5]==a[8]&&a[2]!=2){
    line(380,0,380,458);
    c=1;
  }
  else if(a[0]==a[4]&&a[4]==a[8]&&a[0]!=2){
    line(0,0,458,458);
    c=1;
  }
  else if(a[2]==a[4]&&a[4]==a[6]&&a[2]!=2){
    line(458,0,0,458);
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
  fill(153);
  noStroke();
  rect(0,458,458,50);
  if(b==1)
  {
    fill(255);
    textSize(45); 
    textAlign(CENTER);
    text("First person Wins",226,495);
  }
  else if(b==0)
  {
    fill(255);
    textSize(45);
    textAlign(CENTER);
    text("Second person Wins",226,495);
  }
  else if(b==2)
  {
    fill(255);
    textSize(45);
    textAlign(CENTER);
    text("It's a DRAW.",226,495);
  }

}
    
