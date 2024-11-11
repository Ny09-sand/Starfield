starfield [] stars ; 
void setup(){
  size(750,750); 
 stars = new starfield [500]; 
 for ( int i = 0 ; i < stars.length; i ++ ) { 
   if (i%10==0){ 
     stars[i]=new Oddballz(); 
 } else { 
   stars[i] = new starfield(); 
 } 
}
}
void draw() { 
  background(0); 
  for ( int i = 0 ; i < stars.length; i ++ ) {
    stars[i].show();
    stars[i].show();
    stars[i].doom+=.01; 
  
    stars[i].colorstreaks2+=1;
    
  }
} 
class starfield{ 
  float   angel, speed, colorstreaks1, colorstreaks2, colorstreaks3, size,skibidix,skibidiy ,z,doom; 
  private float x , y; 
  starfield() {
    doom = 1; 
    z=(float)Math.cos(doom); 
    colorstreaks1 = (int)(Math.random()*255+1) ; 
    colorstreaks2 = (int)(Math.random()*255+1) ;
    colorstreaks3 = (int)(Math.random()*255+1) ;
    x=(float) mouseX; 
    y=(float) mouseY;
    skibidix=x;
    skibidiy=y;
    angel = (float)( Math.random()*( 2 * PI ) +1) ;
    speed=(float) (Math.random()*40 ); 
    size=10.0; 
  }

  
  void show (){ 
    
    speed+=1;
    fill(  colorstreaks1, colorstreaks2, colorstreaks3,50);
    rect (x + (float)Math.cos(angel) * speed, y + (float)Math.sin(angel) * speed, size ,size );
    if (x + (float)Math.cos(angel) * speed>750|| x + (float)Math.cos(angel) * speed<0 ){
       x = float(mouseX); 
       y = float(mouseY); 
       colorstreaks1 = (int)(Math.random()*255+1) ; 
       colorstreaks2 = (int)(Math.random()*255+1) ;
       colorstreaks3 = (int)(Math.random()*255+1) ; 
    
       speed=1;
       angel = (float)( Math.random()*( 2 * PI ) +1) ;
      
    }
    if (y + (float)Math.sin(angel) * speed>750 || y + (float)Math.sin(angel) * speed<0 ){
       x = float(mouseX); 
       y = float(mouseY); 
       colorstreaks1 = (int)(Math.random()*255+1) ; 
       colorstreaks2 = (int)(Math.random()*255+1) ;
       colorstreaks3 = (int)(Math.random()*255+1) ; 
       speed=1;
       angel = (float)( Math.random()*( 2 * PI ) +1) ;
      
    }
  } 
}
class Oddballz extends starfield { 
  float x , y ; 
  Oddballz() { 
    x = (float)(Math.random()*500)+1; 
    y = (float)Math.random()*500+1;
    z = 1;
    angel = (float)( Math.random()*( 2 * PI ) +1) ;
    speed=float(100); 
    colorstreaks1 = (int)(Math.random()*255+1) ; 
    colorstreaks2 = (int)(Math.random()*255+1) ;
    colorstreaks3 = (int)(Math.random()*255+1) ;
    size=50.0; 
    size=50.0; 
  } 
  void show(){ 
    speed+=3;
   
    fill(  colorstreaks1, colorstreaks2, colorstreaks3,50);
    ellipse ((x +90* cos(doom)) , (y + 90* sin(doom)) , size ,size );
    if ((x +90* cos(doom))>750||(y + 90* sin(doom))<0 ){
       x = (float)(Math.random()*750)+1 * z; 
       y = (float)Math.random()*750+1;
       colorstreaks1 = (int)(Math.random()*255+1) ; 
       colorstreaks2 = (int)(Math.random()*255+1) ;
       colorstreaks3 = (int)(Math.random()*255+1) ; 
    
       speed=1;
       angel = (float)( Math.random()*( 2 * PI ) +1) ;
      
    }
    if (y + (float)Math.sin(angel) * speed>750 || y + (float)Math.sin(angel) * speed<0 ){
       x = (float)(Math.random()*750)+1 * z; 
       y = (float)Math.random()*750+1;
       colorstreaks1 = (int)(Math.random()*255+1) ; 
       colorstreaks2 = (int)(Math.random()*255+1) ;
       colorstreaks3 = (int)(Math.random()*255+1) ; 
       speed=1;
       angel = (float)( Math.random()*( 2 * PI ) +1) ;
      
    }
  } 
  } 
 


  
