
package exceptionDemo;
public class TestException {
     public static void main(String args[])
    {
        int a,b,c;
        int []data;
         try
    {
                     try
                    {
                    data = new int[5];
                    int i=5;
                    data[i]=10;  // data[5]=10; //ArrayIndexOutOfBoundsException 
                    System.out.println("data " +data[i]);
                    }
                     catch(ArrayIndexOutOfBoundsException e1)
                         { System.out.println("ArrayIndexOutOfBoundsException"); }                     
         a=20;  b=5; 
         System.out.println("a :" +a);
         System.out.println("b :" +b);
         c=a/(b); // c=a/(b-5); //ArithmeticException
         
    System.out.println("c :" +c);
        }
      catch(ArithmeticException e2)
        { System.out.println("ArithmeticException") ;}
         
        catch(Exception e3)
        { System.out.println("Exception"); }
   finally
        {System.out.println("i am at finally block");}
        
         System.out.println("I am after catch block");    
   }
   
}
