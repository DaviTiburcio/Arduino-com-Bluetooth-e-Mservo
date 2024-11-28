#include <Servo.h>

Servo myservo;
Servo myservo2;

char incomingData;

void setup() {
  myservo.attach(9);
  myservo2.attach(8);

  Serial.begin(9600); 

  myservo.write(0);
  myservo2.write(0);

}

void loop() {

  if (Serial.available() > 0) {
    incomingData = Serial.read(); 


    switch (incomingData) {
      case '1': 
        myservo.write(150); 
        break;

      case '2': // Comando para o servo 2
        myservo2.write(30); 
        break;

      case '0': 
        myservo.write(90);
        myservo2.write(90);
        break;

      default:

        break;
    }
  }
}
