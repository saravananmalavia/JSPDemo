package anonymous;
public class Welcome {
    public void display(Greeting g1)
    {
    g1.greet();
    }
     public static void main(String args[])
    {
        Welcome w1= new Welcome();
        
        w1.display(new Greeting(){ 
    
        public void greet()
        {
            System.out.println("Welcome to MECET");
        }
    });

    }    
}
abstract class Greeting
{
public abstract void greet();
}