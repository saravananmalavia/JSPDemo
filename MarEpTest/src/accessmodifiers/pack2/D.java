
package accessmodifiers.pack2;
import accessmodifiers.pack1.A;

public class D {
    A a1= new A();
    public void display() // different package non sub class
    {
    System.out.println("I am in CLASS D");
    System.out.println("non sub class different  package public i : " + a1.i);
  //  System.out.println("non sub class different package friendly j : " + a1.j);
  //  System.out.println("non sub class different package protected k : " + a1.k);
   // System.out.println("non sub class different package private l : " + a1.l);
    System.out.println("*****************");
    }  
    public static void main(String args[])
    {
   D d1= new D();
   E e1= new E();
   d1.display();
   e1.display(); 
    } 
}
class E extends A
{
    public void display()
    {
    System.out.println("I am in CLASS E");
    System.out.println("sub class different  package public i : " + i);
   // System.out.println("sub class different package friendly j : " + j);
    System.out.println("sub class different package protected k : " + k);
  // System.out.println("sub class same package private l : " + l);
    // privae only available in the same calss same package
         System.out.println("*****************");
    }
 }
