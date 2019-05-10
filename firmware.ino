#include <Wire.h>
#include <Adafruit_ADS1015.h>
Adafruit_ADS1115 ads;
float gain = 0;
bool c0, c1, c2, c3, contconv = false;
    
void setup(){
    Serial.begin(2000000);
    Serial.println("rdy");
    ads.setGain(GAIN_ONE);
    gain = 1.0;  
}

void loop(){
  if(contconv){
    if(c0){
      Serial.println(ads.readADC_SingleEnded(0)/gain,4); 
    }if(c1){
      Serial.println(ads.readADC_SingleEnded(1)/gain,4); 
    }if(c2){
      Serial.println(ads.readADC_SingleEnded(2)/gain,4); 
    }if(c3){
      Serial.println(ads.readADC_SingleEnded(3)/gain,4); 
    }  
  }
  parseMessage();   
}

void parseMessage(){
  static bool ready = false;
  static char message[128];
  static int i = 0;
  
  if(Serial.available()){
    message[i] = Serial.read();
    i++;
    if(message[i-1] == '\n'){
      message[i-1] = NULL;
      ready = true;  
    }else{
      ready = false;  
    } 
  }
  if(ready){
    ready = false;
    i = 0; 
    if(strcmp(message,"asd")==0){
      Serial.write("ja, fant asd\n");
    }else if(strcmp(message,"gain=2/3")==0){
      ads.setGain(GAIN_TWOTHIRDS);
      gain = 2.0/3.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=1")==0){
      ads.setGain(GAIN_ONE);
      gain = 1.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=2")==0){
      ads.setGain(GAIN_TWO);
      gain = 2.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=4")==0){
      ads.setGain(GAIN_FOUR);
      gain = 4.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=8")==0){
      ads.setGain(GAIN_EIGHT);
      gain = 8.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=16")==0){
      ads.setGain(GAIN_SIXTEEN);
      gain = 16.0;
      Serial.write("gain="); Serial.println(gain);
    }else if(strcmp(message,"gain=?")==0){
      Serial.println(gain);  
    }else if(strcmp(message,"read=c0")==0){
      Serial.println(ads.readADC_SingleEnded(0)/gain,4);  
    }else if(strcmp(message,"read=c1")==0){
      Serial.println(ads.readADC_SingleEnded(1)/gain,4);  
    }else if(strcmp(message,"read=c2")==0){
      Serial.println(ads.readADC_SingleEnded(2)/gain,4);  
    }else if(strcmp(message,"read=c3")==0){
      Serial.println(ads.readADC_SingleEnded(3)/gain,4);  
    }else if(strcmp(message,"cont0=1")==0){
      c0 = true;
    }else if(strcmp(message,"cont1=1")==0){ 
      c1 = true;
    }else if(strcmp(message,"cont2=1")==0){
      c2 = true;  
    }else if(strcmp(message,"cont3=1")==0){
      c3 = true;
    }else if(strcmp(message,"cont0=0")==0){
      c0 = false;
    }else if(strcmp(message,"cont1=0")==0){
      c1 = false;
    }else if(strcmp(message,"cont2=0")==0){
      c2 = false;  
    }else if(strcmp(message,"cont3=0")==0){
      c3 = false;
    }else if(strcmp(message,"startc")==0){
      contconv = true;  
    }else if(strcmp(message,"stopc")==0){
      contconv = false;
    }else if(strcmp(message,"cont=?")==0){
      Serial.write("continuous conversion channel 0: "); Serial.println(c0);
      Serial.write("continuous conversion channel 1: "); Serial.println(c1);
      Serial.write("continuous conversion channel 2: "); Serial.println(c2);
      Serial.write("continuous conversion channel 3: "); Serial.println(c3);
    }else{
      Serial.write("command not recognized: ");
      Serial.write(message);
      Serial.println(" ");
    }
  }
}
