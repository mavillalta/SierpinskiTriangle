int steps=8;
double angle=Math.PI/3;
public void setup()
{
    size(500,500);
}
public void draw()
{
    background (86,86,86);
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
          background(69,69,69);
          sierpinski(0,0,500,steps);
        }
    }

}
public void sierpinski(double x, double y, double len,int times) 
{
        ////Math.sqrt(mouseY*mouseY+mouseX*mouseX)/Math.sqrt(mouseY*mouseY+mouseX*mouseX)
        if(times<=1){
            triangle(x,y,x+len,y,x+len*mouseX/500,y+len*mouseY/500);
        }
        else{
            sierpinski(x,y,len/2,times-1);
            sierpinski(x+len/2,y,len/2,times-1);
            sierpinski(x+len*mouseX/1000,y+len*mouseY/1000,len/2,times-1);
        }
            
}
