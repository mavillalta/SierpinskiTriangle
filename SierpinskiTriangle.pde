int steps=8;
public void setup()
{
    size(500,500);
 

}
public void draw()
{
    sierpinski(0,0,500,steps);
}
public void mouseDragged()//optional
{

}

public void keyPressed(){
    if(keyCode==UP){
        steps++;
        background(67,67,67);
        sierpinski(0,0,500,steps);
        
    }
    if(keyCode==DOWN){
        if(steps>1){
          steps--;
          background(67,67,67);
          sierpinski(0,0,500,steps);
        }
    }

}
public void sierpinski(double x, double y, double len,int times) 
{
        if(times<=1){
            triangle(x,y,x+len,y,x+len/2,y+len*Math.sqrt(0.75));
        }
        else{
            sierpinski(x,y,len/2,times-1);
            sierpinski(x+len/2,y,len/2,times-1);
            sierpinski(x+len/4,y+len*Math.sqrt(0.75)/2,len/2,times-1);
        }
            
}
