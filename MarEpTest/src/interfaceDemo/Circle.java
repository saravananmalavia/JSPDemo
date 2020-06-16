
package interfaceDemo;
import input.*;
public class Circle implements Shape,General {   
    double area;
    double radius; 
    public void readRadius()
    {
    System.out.println("Enter the radius of the Circle");
    radius=Console.getD();
    } 
    public void findArea()
    {
    area = PI * Math.pow(radius, 2);
    } 
    
    public void display()
    {
    System.out.println("************CIRCLE************");
    System.out.println("The radius of the circle is " + radius);
    System.out.println("The area of the circle is " + area);
    }   
    public static void main(String args[])
    {
    Circle c1= new Circle();
    c1.readRadius();
    c1.findArea();
    c1.display();    
    }  
}

class Square implements Shape,General
{

public void findArea()
{

}

public void display()
{
}

}
