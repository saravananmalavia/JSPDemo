/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accessmodifiers.pack1;
public class A { //same class same package
    public int i=10;
           int  j=20;
    protected int k=30;
    private int l=40;
    
    public void display()
    {
    System.out.println("I am in CLASS A");
    System.out.println("same class same package public i : " + i);
    System.out.println("same class same package friendly j : " + j);
    System.out.println("same class same package protected k : " + k);
    System.out.println("same class same package private l : " + l);
     System.out.println("*****************");
    }   
    public static void main(String args[])
    {
    A a1= new A();
    B b1= new B();
    C c1 = new C();
    a1.display();
    b1.display();
    c1.display();
    }   
}

class B extends A // subclass same package
{
public void display()
    {
    System.out.println("I am in CLASS B");
    System.out.println("sub class same package public i : " + i);
    System.out.println("sub class same package friendly j : " + j);
    System.out.println("sub class same package protected k : " + k);
   // System.out.println("sub class same package private l : " + l);
    // privae only available in the same calss same package
         System.out.println("*****************");
    }
    
}
class C  // same package non sub class
{
    A a1= new A();
    public void display()
    {
        System.out.println("I am in CLASS C");
    System.out.println("non sub class same package public i : " + a1.i);
   System.out.println("non sub class same package friendly j : " + a1.j);
    System.out.println("non sub class same package protected k : " + a1.k);
   // System.out.println("non sub class same package private l : " + a1.l);
    // privae only available in the same calss same package
    System.out.println("*****************");
    }

}
