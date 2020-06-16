package construct;
import input.*;
public class Distance {
    int feet;
    int inches;
    static // will be executed before constructing the first object
    {
    O.println("I am in the static block");
    }   
    public Distance() // non parametric constructor
    {
    feet =10;
    inches = 11;
    }
      public Distance(int feet,int inches) // overloaded constructor
    {
    this.feet =feet;
    this.inches = inches;
    }   
    public void read()
    {
       O.println("Enter the feet");
        feet= Console.getI();
        O.print("Enter the inches");
        inches=Console.getI();
    }
    public void display()
    {
        O.println("feet : " + this.feet);
        O.println("nches : " + this.inches);
    }
    public static  void main(String args[])
    {
    Distance d1= new Distance();
    d1.display();
       Distance d2= new Distance(20,2);
    d2.display();   
    }
}
