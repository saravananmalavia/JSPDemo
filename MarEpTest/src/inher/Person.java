
package inher;

import input.*;

public class Person {
    
    int ID;
    String Name;
    
    
    public void readPerson()
    {
        System.out.println("Enter the ID");
        ID=Console.getI();
        
         System.out.println("Enter the Name");
        Name =Console.getS();
        
    }
    
    public void displayPerson()
    {
        System.out.println("ID : " +ID);
         System.out.println("Name : " + Name);
    
    
    }
    
    public static  void main(String ss[])
    {
        Staff s1= new Staff();
        s1.readStaff();
        s1.calcultateSalary();
        s1.displayStaff();
        
        Student s2= new Student();
        s2.readStudent();
        s2.findResult();
        s2.displayStudent();  
    }
}
class Staff extends Person
{
    
    double BasicPay,DA,HRA,PF,GrossPay,NetPay;
    
    public void readStaff()
    {
       System.out.println("Enter the Staff Details");
        super.readPerson();  
        System.out.println("Enter the Basic Pay");
        BasicPay = Console.getD();
    }
   
    public void calcultateSalary()
    {
    DA = BasicPay *10/1000;
    HRA = BasicPay *13.5/1000;
    PF = BasicPay *12.5/1000;
    GrossPay =BasicPay + DA +HRA;
     NetPay =BasicPay + DA +HRA -PF;
    }
    public void displayStaff()
    {
        super.displayPerson();
        System.out.println(" BasicPay: " +BasicPay);
        System.out.println(" HRA: " +HRA);
        System.out.println(" PF: " +PF);
        System.out.println(" GrossPay: " +GrossPay);
        System.out.println(" NetPay: " +NetPay);
    
    }
}

class Student extends Person
{
    int Mark1,Mark2,Mark3,Total;
    String Result;  
    public void readStudent()
    {
       System.out.println("Enter the Student Details");
        readPerson();
        System.out.println("Enter the Mark1");
        Mark1=Console.getI();
         System.out.println("Enter the Mark2");
        Mark2=Console.getI();
         System.out.println("Enter the Mark3");
        Mark3=Console.getI();  
    }
    
    public void findResult()
    {
        Total=Mark1+Mark2+Mark3;
        if(Mark1 <50 || Mark2 <50 || Mark3 <50)
        {
        Result="FAIL";
        }
        else
        {
        Result="PASS";
        }            
    }
    
     public void displayStudent()
    {
        super.displayPerson();
        System.out.println("Mark1 : " +Mark1 );      
         System.out.println("Mark2 : " +Mark2);
         System.out.println("Mark3  : " +Mark3);
             System.out.println("Total : " +Total);
         System.out.println("Result  : " +Result);
    }
    
}
