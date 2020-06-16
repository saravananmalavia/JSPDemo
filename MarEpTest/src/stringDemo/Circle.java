
package stringDemo;

public class Circle {    
    double radius;
    double area;    
    public Circle()
    {
    radius=10.0;
    area=31.4;
    }   
   public String toString()
    {   
        String ss="Details of Circle Object \n";
        ss=ss+"****************************" + "\n";       
             ss=ss+"Radius : " + radius + "\n";
            ss=ss+"Area : " + area + "\n";
              return ss;     
    }
   public static void main(String args[])
    {
    Circle c1= new Circle(); 
    System.out.println(c1); 
    }
   
}
