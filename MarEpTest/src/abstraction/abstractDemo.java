/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abstraction;

public class abstractDemo {
    public static void main(String args[])
    {
   // baseA a1= new baseA();
        
        subB b1= new subB();
        b1.method1(10);
        b1.method2();
        b1.method3();
    }
    
}

abstract class baseA
{
    static int I;
    int j;

   public abstract void method1(int i);
    public abstract void method3();
   public void method2()
   {
   System.out.println("I am with in anstract class method2");
   }
  
}
class subB extends baseA
{
   public  void method1(int i)
   {
     System.out.println("I am with in sub class method1");
   }
     public  void method3()
   {
     System.out.println("I am with in sub class  method3");
   }


}
