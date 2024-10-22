
int in1 = 7;
int in2 = 6;


int in3 = 5;
int in4 = 4;


int btnFrente = 2; 
int btnTras = 3;    
int btnEsquerda = 4; 
int btnDireita = 5;

void setup() {

  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);


  pinMode(btnFrente, INPUT);
  pinMode(btnTras, INPUT);
  pinMode(btnEsquerda, INPUT);
  pinMode(btnDireita, INPUT);
}

void loop() {

  if (digitalRead(btnFrente) == HIGH) {
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
  }

  else if (digitalRead(btnTras) == HIGH) {
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    digitalWrite(in3, LOW);
    digitalWrite(in4, HIGH);
  }

  else if (digitalRead(btnEsquerda) == HIGH) {
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
  }

  else if (digitalRead(btnDireita) == HIGH) {
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
    digitalWrite(in3, LOW);
    digitalWrite(in4, HIGH);
  }

  else {
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    digitalWrite(in3, LOW);
    digitalWrite(in4, LOW);
  }
}
