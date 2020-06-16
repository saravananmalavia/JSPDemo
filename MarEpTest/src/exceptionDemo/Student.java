
package exceptionDemo;

import input.*;
public class Student {
    int Mark;  
    public void read() //throws MOBException
    {
    System.out.println("Enter the Mark");
    Mark = Console.getI();
            try
            {
                if(Mark<0 || Mark >100)
                {
                throw new MOBException();
                }
                System.out.println("Mark : " + Mark);
            }
            catch(MOBException ex)
            {
                System.out.println(ex);
            }
    }
    public static void main(String args[]) // throws MOBException
    {
        Student s1= new Student();
        s1.read();   
    }
    
}
