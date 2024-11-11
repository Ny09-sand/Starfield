starfield [] stars ; 
void setup(){
  size(750,750); 
 stars = new starfield [200]; 
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
    stars[i].doom+=.1; 
    stars[i].colorstreaks1+=1;
    stars[i].colorstreaks3+=1;
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

  void move(){ 
  } 
  void show (){ 
    speed+=1;
    fill(  colorstreaks1, colorstreaks2, colorstreaks3,50);
    rect (x + (float)Math.cos(angel) * speed, y + (float)Math.sin(angel) * speed, size ,size );
    if (x + (float)Math.cos(angel) * speed>750|| x + (float)Math.cos(angel) * speed<0 ){
       x = float(mouseX) *z; 
       y = float(mouseY); 
       colorstreaks1 = (int)(Math.random()*255+1) ; 
       colorstreaks2 = (int)(Math.random()*255+1) ;
       colorstreaks3 = (int)(Math.random()*255+1) ; 
    
      speed=1;
      angel = (float)( Math.random()*( 2 * PI ) +1) ;
      
    }
    if (y + (float)Math.sin(angel) * speed>750 || y + (float)Math.sin(angel) * speed<0 ){
       x = float(mouseX)*z; 
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
    x = float(mouseX); 
    y = float(mouseY);
    z = 1;
    angel = (float)( Math.random()*( 2 * PI ) +1) ;
    speed=float(100); 
    colorstreaks1 = (int)(Math.random()*255+1) ; 
    colorstreaks2 = (int)(Math.random()*255+1) ;
    colorstreaks3 = (int)(Math.random()*255+1) ;
    size=50.0; 
    size=50.0; 
  } 
 
}

  
