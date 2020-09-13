import processing.serial.Serial;
import controlP5.*;
//import processing.sound.*;

//AudioIn input;
//SoundFile soundfile_time_out;

PImage bg;
PImage bg1;
int y;

ControlP5 cp5;
String text;

float[] vals = new float[11];
int circleX=450, circleY=120;
int circleX1=450, circleY1=165;
int circleX2=450, circleY2=210;
int circleX3=450, circleY3=255;
int circleX4=450, circleY4=300;

int circleX5=450, circleY5=375;
int circleX6=450, circleY6=420;
int circleX7=450, circleY7=465;
int circleX8=450, circleY8=510;
int circleX9=450, circleY9=555;
int circleSize = 35;

int marks=0;//marks increment decrement initial value
int marks1=0;
int marks2=0;
int marks3=0;
int marks4=0;
int marks5=0;
int marks6=0;
int marks7=0;
int marks8=0;
int marks9=0;

int marks21=0;//marks increment decrement initial value
int marks22=0;
int marks23=0;
int marks24=0;
int marks25=0;
int marks26=0;
int marks27=0;
int marks28=0;
int marks29=0;
int marks30=0;

int total1=0;
int total2=0;

int marks10=1;
int marks11=2;
int marks12=3;
int marks13=4;
int marks14=5;
int marks15=1;
int marks16=2;
int marks17=3;
int marks18=4;
int marks19=5;

int minstoshow;
int secstoshow;
int timer = 3600;
int maxtimer = 900;//1800
int maxtimer1 = 600;//900
int maxtimer2 = 900;//1800
float PI = 3.14159;
int timeron = 0;
boolean darkmode = false;


Serial myPort;  // Create object from Serial class
Knob myKnobB;

Button b1;
Button b2;
Button b3;
Button b4;
Button b5; //start button
Button b6; //pause
Button b7; //stop
Button b8; //darkmode

Button b9;
Button b10;
Button b11;
Button b12;
Button b13;
Button b14;
Button b15;
Button b16;
Button b17;
Button b18;
Button b19;
Button b20;
Button b21;
Button b22;
Button b23;

Button b24;
Button b25;

Button b26;
Button b27;
Button b28;
Button b29;
Button b30;
Button b31;
Button b32;
Button b33;
Button b34;
Button b35;
Button b36;
Button b37;
Button b38;
Button b39;
Button b40;

Button b50;
Button b51;
Button b52;
Button b53;
Button b54;
Button b55;
Button b56;
Button b57;
Button b58;
Button b59;
Button b60;
Button b61;
Button b62;
Button b63;
Button b64;
Button b65;
Button b66;
Button b67;
Button b68;
Button b69;
Button b70;

//Amplitude loudness;
int knobValue = 100;
void setup(){
  
  bg = loadImage("rob.jpg");
  bg1 = loadImage("navy.png");
  
  size(1200, 650);//1200,650
 //soundfile_time_out = new SoundFile(this, "snd.mp3");
 
  
  //surface.setResizable(true);
  try {
  myPort = new Serial(this, "COM7", 9600);
  myPort.bufferUntil(ENTER);
  }
  catch (Exception e) {
    e.printStackTrace();
  }
  smooth();
  //noStroke();
  cp5 = new ControlP5(this);
  
  // PFont p1 = createFont("Arial Bold",5);
  //ControlFont font1 = new ControlFont(p1);
  //cp5.setFont(font1);
  
  //myKnobB = cp5.addKnob("")
  //             .setRange(0,10)
  //             .setValue(0)
  //             .setPosition(590,210)
  //             .setRadius(40)
  //             .setNumberOfTickMarks(10)
  //             .setTickMarkLength(4)
  //             .snapToTickMarks(true)
  //             .setColorForeground(color(255))
  //             .setColorBackground(color(0, 160, 100))
  //             .setColorActive(color(255,255,0))
  //             .setDragDirection(Knob.HORIZONTAL)
  //             ;
         
  frameRate(60);
 
  b1 = new Button(width/2-50+310, height-100, 50, 50, "<");
  b2 = new Button(width/2-50+470, height-100, 50, 50, ">");
  b3 = new Button(width/2-50+260, height-100, 50, 50, "<<");
  b4 = new Button(width/2-50+520, height-100, 50, 50, ">>");
  b5 = new Button(width/2-50+390, height-100, 50, 50, "START");
  b6 = new Button(width/2-50+360, height-100, 50, 50, "PAUSE");
  b7 = new Button(width/2-50+50+360, height-100, 50, 50, "RESET");
  
  b24 = new Button(width/2-50+50+290, height-140, 60, 30, "10 Sec");
  b25 = new Button(width/2-50+50+350, height-140, 60, 30, "15 Sec");
  b8 = new Button(10, 10, 50, 50, "DARK\nMODE");
 /////////////////////////////////////////////////////////////////////////////// 
  b9 = new Button(480, height-540, 30, 30, "<");
  b10 = new Button(570, height-540,  30, 30, ">");
  b51 = new Button(615, height-540,  30, 30, "<");
  b61 = new Button(710, height-540,  30, 30, ">");
  //b19 = new Button(width/2+110, height-540,  30, 30, ">>");
  
  b11 = new Button(480, height-495,  30, 30, "<");
  b12 = new Button(570, height-495,  30, 30, ">");
   b52 = new Button(615,  height-495,  30, 30, "<");
   b62 = new Button(710, height-495,  30, 30, ">");
  //b20 = new Button(width/2+110, height-495,  30, 30, ">>");
  
  b13 = new Button(480, height-450,  30, 30, "<");
  b14 = new Button(570, height-450,  30, 30, ">");
   b53 = new Button(615,  height-450,  30, 30, "<");
   b63 = new Button(710, height-450,  30, 30, ">");
  //b21 = new Button(width/2+110, height-450,  30, 30, ">>");
  
  b15 = new Button(480, height-405,  30, 30, "<");
  b16 = new Button(570, height-405,  30, 30, ">");
   b54 = new Button(615,height-405,  30, 30, "<");
   b64 = new Button(710, height-405,  30, 30, ">");
  //b22 = new Button(width/2+110, height-405,  30, 30, ">>");
  
  b17 = new Button(480, height-360,  30, 30, "<");
  b18 = new Button(570, height-360,  30, 30, ">");
   b55 = new Button(615,  height-360,  30, 30, "<");
   b65 = new Button(710, height-360,  30, 30, ">");
  //b23 = new Button(width/2+110, height-360,  30, 30, ">>");
  
  //////////////////////////////////////////////////////////////////
  
  b26 = new Button(480, 365,  30, 30, "<");
  b27 = new Button(570, 365,  30, 30, ">");
   b56 = new Button(615, 365,  30, 30, "<");
   b66 = new Button(710, 365,  30, 30, ">");
  //b28 = new Button(width/2+110,365, 30, 30, ">>");
  
  b29 = new Button(480, 410,  30, 30, "<");
  b30 = new Button(570, 410,  30, 30, ">");
   b57 = new Button(615,410,  30, 30, "<");
   b67 = new Button(710, 410,  30, 30, ">");
  //b31 = new Button(width/2+110, 410,  30, 30, ">>");
  
  b32 = new Button(480, 455,  30, 30, "<");
  b33 = new Button(570,455,  30, 30, ">");
   b58 = new Button(615, 455,  30, 30, "<");
   b68 = new Button(710, 455,  30, 30, ">");
  //b34 = new Button(width/2+110, 455,  30, 30, ">>");
  
  b35 = new Button(480, 500,  30, 30, "<");
  b36 = new Button(570, 500,  30, 30, ">");
   b59 = new Button(615, 500,  30, 30, "<");
   b69 = new Button(710, 500,  30, 30, ">");
  //b37 = new Button(width/2+110,500,  30, 30, ">>");
  
  b38 = new Button(480, 545, 30, 30, "<");
  b39 = new Button(570,545, 30, 30, ">");
   b60 = new Button(615, 545,  30, 30, "<");
   b70 = new Button(710, 545,  30, 30, ">");
  //b40 = new Button(width/2+110, 545, 30, 30, ">>");
  
 /////////////////////////////////////////////////////////////////////////////// 
  textFont(createFont("Century Gothic Bold", 20));
  //println(PFont.list());
  
  
  //PFont p = createFont("Verdana",20);
  PFont p = createFont("Arial Bold",25);
  ControlFont font = new ControlFont(p);
  cp5.setFont(font);

  cp5.addTextfield(" ").setPosition(20, 105).setSize(400, 35) .setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("  ").setPosition(20, 150).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("   ").setPosition(20, 195).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("    ").setPosition(20, 240).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("     ").setPosition(20, 285).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  
  cp5.addTextfield("      ").setPosition(20, 360).setSize(400, 35) .setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("       ").setPosition(20, 405).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("        ").setPosition(20, 450).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("         ").setPosition(20, 495).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  cp5.addTextfield("          ").setPosition(20, 540).setSize(400, 35).setColorValue(color(255, 255,0)).setColorBackground(color(0, 0, 0)).setAutoClear(false);
  //cp5.addTextfield("      ").setPosition(50, 500).setSize(400, 40).setAutoClear(false);
  
  
}
void draw(){
  //fill(knobValue);
  if(darkmode){
    background(255,0,0);
  }
  else{
    background(255);
  }
  
  strokeWeight(40);
  if(darkmode){
    
    stroke(255, 255, 51); //circle yellow
  }
  else{
    stroke(10);// circle black
  }
  background(bg);
  noFill();
  arc(width/2+345, height/2-10, 330, 330, 0, (timer/(maxtimer+0.001)) * (PI*2));
  noStroke();
  
  if(darkmode){
    fill(255, 255, 0);//red topic
  }
  else{
    fill(10); //black topic
  }
   
  textAlign(CENTER, CENTER);
  textSize(40);
  int max60 = maxtimer/60;
  //text(max60 + " Second Timer", width/2, 100);
  text( "DOCKYARD QUIZ COMPETITION - 2020", width/2, 20); 
  //text( " COMMODORE ELECTRICAL DEPARTMENT (E)", width/2, 65); 
  textSize(30);
  fill(255, 0, 51);
  text( "NMA", 200, 75);
  textSize(30);
  fill( 0, 255, 0);
  text( "4FAF", 200, 335);
  
  
  minstoshow = floor(timer/3600);
  secstoshow = floor(timer/60)%60;  
  textSize(110);
  fill( 255, 153, 51 );
  text(minstoshow + ":" + ((secstoshow < 10)?"0":"") + secstoshow, width/2+345, height/2-20);
  //if( minstoshow==0 && secstoshow==0){            
  // soundfile_time_out.play();
  //}
  
  
  b1.draw();
  b2.draw();
  b3.draw();
  b4.draw();
  if(timeron == 2){
    b6.draw();
    b7.draw();
  }
  if(timeron == 1){
    b6.draw();
    b7.draw();
    timer -=1;
    
    if(timer==0){
    myPort.write("1");
    }
    else {
    
    //myPort.write("0");
    }
    
    if(timer <= 0){
      timer = maxtimer;
      timeron = 0;
    }
  }
  if(timeron == 0){
    b5.draw();
    timer = maxtimer;
  }
  
 
  if(darkmode){
    b8.message = "CLR";
  }
  else{
    b8.message = "DARK";
  }
  b8.draw();
  image(bg1, 1050, 0, width/9, height/4);
  
  textSize(10);
   fill(255,255,0);
  text("Round-1",540, 100);
  text("Round-2",540, 145);
  text("Round-3",540, 190);
  text("Round-4",540, 240);
  text("Round-5",540, 280);
  
  text("Round-6",680, 100);
  text("Round-7",680, 145);
  text("Round-8",680, 190);
  text("Round-9",680, 240);
  text("Round-10",680, 280);
  
  //////////////////////////////////////////
  text("Round-1",540, 355);
  text("Round-2",540, 400);
  text("Round-3",540, 445);
  text("Round-4",540, 490);
  text("Round-5",540, 535);
  
  text("Round-6",680, 355);
  text("Round-7",680, 400);
  text("Round-8",680, 445);
  text("Round-9",680, 490);
  text("Round-10",680, 535);
  
  //textSize(20);
   //fill(255, 255, 0);
  //text( " LT AM WICKRAMARACCHI", 145, 105);
  
  textSize(30);
  fill(255,255,255);
  strokeWeight(50);
  text(marks,540, 120);
  text(marks1,540, 165);
  text(marks2,540, 210);
  text(marks3,540, 260);
  text(marks4,540, 300);
  
  text(marks5,540, 375);
  text(marks6,540, 420);
  text(marks7,540, 465);
  text(marks8,540, 510);
  text(marks9,540, 555);
  
///////////////////////////////////////////////  
  text(marks21,680, 120);
  text(marks22,680, 160);
  text(marks23,680, 210);
  text(marks24,680, 260);
  text(marks25,680, 300);
  
  text(marks26,680, 375);
  text(marks27,680, 420);
  text(marks28,680, 465);
  text(marks29,680, 510);
  text(marks30,680, 555);
  
  textSize(38);
  fill(255,0,0);
  strokeWeight(60);
  text("-",260, 75);
  total1=marks+marks1+marks2+marks3+marks4+marks21+marks22+marks23+marks24+marks25;
  text(total1,300, 75);
  
   textSize(38);
  fill(0,255,0);
  strokeWeight(60);
  text("-",260, 335);
   total2=marks5+marks6+marks7+marks8+marks9+marks26+marks27+marks28+marks29+marks30;
   text(total2,300,335);
  
  textSize(20);
  fill(255,0,0);
  strokeWeight(30);
  text(marks10, 12, 115);
  text(marks11, 12, 155);
  text(marks12, 12, 205);
  text(marks13, 12, 250);
  text(marks14, 12, 295);
  
  fill(0,255,0);
  text(marks15, 12, 370);
  text(marks16, 12, 415);
  text(marks17, 12, 460);
  text(marks18, 12, 505);
  text(marks19, 12, 550);
 
 

  b9.draw();
  b10.draw();
  b11.draw();
  b12.draw();
  b13.draw();
  b14.draw();
  b15.draw();
  b16.draw();
  b17.draw();
  b18.draw();
  
  //b19.draw();
  //b20.draw();
  //b21.draw();
  //b22.draw();
  //b23.draw();
  
  b24.draw();
  b25.draw();
  
  b26.draw();
  b27.draw();
 // b28.draw();
  b29.draw();
  b30.draw();
  //b31.draw();
  b32.draw();
  b33.draw();
  //b34.draw();
  b35.draw();
  b36.draw();
  //b37.draw();
  b38.draw();
  b39.draw();
  //b40.draw();
  
  b51.draw();
  b52.draw();
  b53.draw();
  b54.draw();
  b55.draw();
  b56.draw();
  b57.draw();
  b58.draw();
  b59.draw();
  b60.draw();
  
  b61.draw();
  b62.draw();
  b63.draw();
  b64.draw();
  b65.draw();
  b66.draw();
  b67.draw();
  b68.draw();
  b69.draw();
  b70.draw();

  
  
    /////////////////////////////////////////////////////////////// 
    if (vals[0]==1) {
    fill(255, 0, 51);  
    print(vals[0]);
    print("\t");
    noStroke();
    ellipse(circleX, circleY, circleSize, circleSize);
    
  } 
  else{
  fill(255,255,255 );
  strokeWeight(10);
  stroke(185, 157, 143);
  //noStroke();
  ellipse(circleX, circleY, circleSize, circleSize);
  }
 
   if (vals[1]==1) {
    fill( 255, 0, 51);  
    print(vals[1]);
    print("\t");
    noStroke();
    ellipse(circleX1, circleY1, circleSize, circleSize);
  } 
  
  else{
  fill(255,255,255 );
  strokeWeight(10);
  stroke(185, 157, 143);
  //noStroke();
  ellipse(circleX1, circleY1, circleSize, circleSize);
  }
  
  if (vals[2]==1) {
    fill(255, 0, 51);  
    print(vals[2]);
    print("\t");
    noStroke();
    ellipse(circleX2, circleY2, circleSize, circleSize);
  } 
   else{
  fill(255,255,255 );
  strokeWeight(10);
  stroke(185, 157, 143);
  //noStroke();
  ellipse(circleX2, circleY2, circleSize, circleSize);
  }
  
  if (vals[3]==1) {
    fill(255, 0, 51);  
    print(vals[3]);
    print("\t");
    noStroke();
    ellipse(circleX3, circleY3, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
  //noStroke();
  ellipse(circleX3, circleY3, circleSize, circleSize);
  }
  
   if (vals[4]==1) {
    fill(255, 0, 51);  
    print(vals[4]);
    print("\t");
    noStroke();
    ellipse(circleX4, circleY4, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX4, circleY4, circleSize, circleSize);
  }
  
   if (vals[5]==1) {
    fill( 0, 255, 0);  
    print(vals[5]);
    print("\t");
    noStroke();
    ellipse(circleX5, circleY5, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX5, circleY5, circleSize, circleSize);
  }
  
   if (vals[6]==1) {
    fill( 0, 255, 0);  
    print(vals[6]);
    print("\t");
    noStroke();
    ellipse(circleX6, circleY6, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX6, circleY6, circleSize, circleSize);
  }
  
   if (vals[7]==1) {
    fill( 0, 255, 0);  
    print(vals[7]);
    print("\t");
    noStroke();
    ellipse(circleX7, circleY7, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX7, circleY7, circleSize, circleSize);
  }
  
   if (vals[8]==1) {
    fill( 0, 255, 0);  
    print(vals[8]);
    print("\t");
    noStroke();
    ellipse(circleX8, circleY8, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX8, circleY8, circleSize, circleSize);
  }
  
   if (vals[9]==1) {
    fill( 0, 255, 0);  
    print(vals[9]);
    print("\t");
    noStroke();
    ellipse(circleX9, circleY9, circleSize, circleSize);
  } 
   else{
  fill(255,255,255);
  strokeWeight(10);
  stroke(185, 157, 143);
 // noStroke();
  ellipse(circleX9, circleY9, circleSize, circleSize);
  }
  
  textSize(15);
   fill(255, 255, 0);
  text( " Designed by New Design Center (E)", width/2, 630);
  
  
  //////////////////////////////////////////////////////////
}
void serialEvent(final Serial s) {
  vals = float(splitTokens(s.readString()));
  redraw();
}
////////////////////////////////////////////////////////////
void mouseClicked(){
  if(b1.touch && maxtimer-60 > 0){ maxtimer -=60;}
  if(b2.touch){ maxtimer +=60;}
  if(b3.touch && maxtimer-3600 > 0){ maxtimer -=3600;}
  if(b4.touch){ maxtimer +=3600;}
  
 // if(b24.touch && maxtimer-60 > 0){ maxtimer =15;}
  if(b24.touch){ maxtimer =600;}
  //if(b25.touch && maxtimer-3600 > 0){ maxtimer =30;}
  if(b25.touch){ maxtimer =900;}
  
  if(b5.touch){ 
    if(timeron == 0){
     
      timer = maxtimer;
      timeron = 1;
      return;
    }
  }
  if(b6.touch){ 
    if(timeron == 1){
      timeron = 2;
      b6.message = "START";
      
      return;
      
    }
    if(timeron == 2){
      timeron = 1;
      b6.message = "PAUSE";
      return;
    }
  }
  if(b7.touch){ 
    if(timeron == 1 || timeron == 2){
      timer = maxtimer;
      timeron = 0;
      return;
    }
  }
  if(b8.touch){
    darkmode = !darkmode;
    return;
  }
  if(b9.touch){ marks = marks-5;}
  if(b10.touch){ marks= marks+5;}
  //if(b19.touch){ marks= marks+10;}
  if(b11.touch){ marks1 = marks1-5;}
  if(b12.touch){ marks1= marks1+5;}
  //if(b20.touch){ marks1= marks1+10;}
  if(b13.touch){ marks2 = marks2-5;}
  if(b14.touch){ marks2= marks2+5;}
  //if(b21.touch){ marks2= marks2+10;}
  if(b15.touch){ marks3 = marks3-5;}
  if(b16.touch){ marks3= marks3+5;}
  //if(b22.touch){ marks3= marks3+10;}
  if(b17.touch){ marks4 = marks4-5;}
  if(b18.touch){ marks4= marks4+5;}
  //if(b23.touch){ marks4= marks4+10;}
  
  if(b26.touch){ marks5 = marks5-5;}
  if(b27.touch){ marks5= marks5+5;}
  //if(b28.touch){ marks5= marks5+10;}
  if(b29.touch){ marks6 = marks6-5;}
  if(b30.touch){ marks6= marks6+5;}
  //if(b31.touch){ marks6= marks6+10;}
  if(b32.touch){ marks7 = marks7-5;}
  if(b33.touch){ marks7= marks7+5;}
  //if(b34.touch){ marks7= marks7+10;}
  if(b35.touch){ marks8 = marks8-5;}
  if(b36.touch){ marks8= marks8+5;}
  //if(b37.touch){ marks8= marks8+10;}
  if(b38.touch){ marks9 = marks9-5;}
  if(b39.touch){ marks9= marks9+5;}
  //if(b40.touch){ marks9= marks9+10;}
  //textAlign(CENTER, CENTER);
  
   if(b51.touch){ marks21= marks21-5;}
    if(b52.touch){ marks22= marks22-5;}
     if(b53.touch){ marks23= marks23-5;}
      if(b54.touch){ marks24= marks24-5;}
       if(b55.touch){ marks25= marks25-5;}
        if(b56.touch){ marks26= marks26-5;}
         if(b57.touch){ marks27= marks27-5;}
          if(b58.touch){ marks28= marks28-5;}
           if(b59.touch){ marks29= marks29-5;}
            if(b60.touch){ marks30= marks30-5;}
            
    if(b61.touch){ marks21= marks21+5;}
    if(b62.touch){ marks22= marks22+5;}
     if(b63.touch){ marks23= marks23+5;}
      if(b64.touch){ marks24= marks24+5;}
       if(b65.touch){ marks25= marks25+5;}
        if(b66.touch){ marks26= marks26+5;}
         if(b67.touch){ marks27= marks27+5;}
          if(b68.touch){ marks28= marks28+5;}
           if(b69.touch){ marks29= marks29+5;}
            if(b70.touch){ marks30= marks30+5;}
  
}
class Button {
  float x;
  float y;
  float w;
  float h;
  float ox;
  float oy;
  String message;
  boolean touch = false;
  Button(float xx, float yy, float ww, float hh, String m){
    x = xx;
    y = yy;
    w = ww;
    h = hh;
    ox = xx-width/2;
    oy = yy-height/2;
    message = m;
  }
  void draw(){
    x = ox+width/2;
    y = oy+height/2;
    touch = false;
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      touch = true;
    }
    noFill();
    if(darkmode){
      stroke(0,0,255);
      if(touch){ stroke(200);}
    }
    else{
      stroke(85);
      if(touch){ stroke(25);}
    }
    strokeWeight(3);
    rect(x+4, y, w/1.2, h/1.2, 2);
    if(darkmode){
       fill(0,255,255);
    }
    else{
      fill(10);
    }
    textSize(12);
    textAlign(CENTER, CENTER);
    text(message, x+w/2, y+h/2-5);
  }
 
 
  //void keyPressed() {
  //switch(key) {
  //  case('2'):myKnobB.setConstrained(false).hideTickMarks().snapToTickMarks(false);break;
  //}
  //}
}
