//button pin numbers
int But1 = 52;
int But2 = 50;
int But3 = 48;
int But4 = 46;
int But5 = 44;

int But6 = 42;
int But7 = 40;
int But8 = 38;
int But9 = 36;
int But10 = 34;

//assign LED to pins
int LED1 = 53;
int LED2 = 51;
int LED3 = 49;
int LED4 = 47;
int LED5 = 45;

int LED6 = 43;
int LED7 = 41;
int LED8 = 39;
int LED9 = 37;
int LED10 = 35;

//initialize button state to 0
int ButState1 = 0;
int ButState2 = 0;
int ButState3 = 0;
int ButState4 = 0;
int ButState5 = 0;
int ButState6 = 0;
int ButState7 = 0;
int ButState8 = 0;
int ButState9 = 0;
int ButState10 = 0;
//locked out state variables
boolean pause = false;
int secs = 5000;

//assign speaker pin
int sound = 33;
int soundSecs = 1000;

void setup() {
  //begin serial communication
  Serial.begin(9600);
 //Serial.print("596");
  //initialize button pins to input
  pinMode(But1, INPUT_PULLUP);
  pinMode(But2, INPUT_PULLUP);
  pinMode(But3, INPUT_PULLUP);
  pinMode(But4, INPUT_PULLUP);
  pinMode(But5, INPUT_PULLUP);
  pinMode(But6, INPUT_PULLUP);
  pinMode(But7, INPUT_PULLUP);
  pinMode(But8, INPUT_PULLUP);
  pinMode(But9, INPUT_PULLUP);
  pinMode(But10, INPUT_PULLUP);

  //initialize LEDs to output
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  pinMode(LED8, OUTPUT);
  pinMode(LED9, OUTPUT);
  pinMode(LED10, OUTPUT);

  //initilize LEDs to Off
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
  digitalWrite(LED7, LOW);
  digitalWrite(LED8, LOW);
  digitalWrite(LED9, LOW);
  digitalWrite(LED10, LOW);


}

void loop() {
  
  if (pause == false) { //only works when buzzers are unlocked

    if(Serial.available()>0){
    char yachi = Serial.read();
    if(yachi=='1'){
      pause == true;
      digitalWrite(33,HIGH);
      tone(sound, 800, soundSecs);
       digitalWrite(33,LOW);
       pause == false;
      }
      else{
        
      //digitalWrite(33,HIGH);
      //tone(sound, 500, soundSecs);
     //digitalWrite(33,LOW);
        }
    }

    //read button states
    ButState1 = digitalRead(But1);
    ButState2 = digitalRead(But2);
    ButState3 = digitalRead(But3);
    ButState4 = digitalRead(But4);
    ButState5 = digitalRead(But5);
    ButState6 = digitalRead(But6);
    ButState7 = digitalRead(But7);
    ButState8 = digitalRead(But8);
    ButState9 = digitalRead(But9);
    ButState10 = digitalRead(But10);

    
    if (ButState1 == 1) { //if 1st button is pushed
      pause == true; //puts program into lock mode so other players cannot buzz in
      digitalWrite(LED1, HIGH); //lights up corresponding LED
      tone(sound, 900, soundSecs); //plays team tone for one second
      //Serial.println("TEAM 1"); //Serial indication of first team to press buzze
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      delay(secs); // five second delay - enforces lockout for other players
      digitalWrite(LED1, LOW); //turn LED off
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false; //turn off lockout mode

    }
    
    if (ButState2 == 1) {
      pause == true;
      digitalWrite(LED2, HIGH);
      tone(sound, 700, soundSecs);
      //Serial.println("TEAM 2");
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      delay(secs);
      digitalWrite(LED2, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }
    if (ButState3 == 1){
      pause == true;
      digitalWrite(LED3, HIGH);
      tone(sound, 500, soundSecs);
//     Serial.println("TEAM 3");
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      delay(secs);
      digitalWrite(LED3, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }
    if (ButState4 == 1){
      pause == true;
      digitalWrite(LED4, HIGH);
      tone(sound, 300, soundSecs);
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 4");
      delay(secs);
      digitalWrite(LED4, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }

     if (ButState5 == 1){
      pause == true;
      digitalWrite(LED5, HIGH);
      tone(sound, 100, soundSecs);
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED5, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }

    if (ButState6 == 1){
      pause == true;
      digitalWrite(LED6, HIGH);
      tone(sound, 100, soundSecs);
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED6, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }
    if (ButState7 == 1){
      pause == true;
      digitalWrite(LED7, HIGH);
      tone(sound, 100, soundSecs);
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED7, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }

     if (ButState8 == 1){
      pause == true;
      digitalWrite(LED8, HIGH);
      tone(sound, 100, soundSecs);
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED8, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }

    if (ButState9 == 1){
      pause == true;
      digitalWrite(LED9, HIGH);
      tone(sound, 100, soundSecs);
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED9, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }

    if (ButState10 == 1){
      pause == true;
      digitalWrite(LED10, HIGH);
      tone(sound, 100, soundSecs);
       Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      //Serial.println("TEAM 5");
      delay(secs);
      digitalWrite(LED10, LOW);
      ButState1=0;
      ButState2=0;
      ButState3=0;
      ButState4=0;
      ButState5=0;
      ButState6=0;
      ButState7=0;
      ButState8=0;
      ButState9=0;
      ButState10=0;
      Serial.print(ButState1);
      Serial.write('\t');
      Serial.print(ButState2);
      Serial.write('\t');
      Serial.print(ButState3);
      Serial.write('\t');
      Serial.print(ButState4);
      Serial.write('\t');
      Serial.print(ButState5);
      Serial.write('\t');
      Serial.print(ButState6);
      Serial.write('\t');
      Serial.print(ButState7);
      Serial.write('\t');
      Serial.print(ButState8);
      Serial.write('\t');
      Serial.print(ButState9);
      Serial.write('\t');
      Serial.println(ButState10);
      pause == false;

    }
  }

}
