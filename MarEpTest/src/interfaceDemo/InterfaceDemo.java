
package interfaceDemo;

public class InterfaceDemo {
    
}
class C extends A implements I1,I2 //class C can extends any number of Iterface
// class C extends A implements  I3 (in this case class C must override all the methods 
                                //in both I1 nd I2 since I3 extends I1 and I2)
{
   public void method1()
    {
    }
   public void method2()
    {
    }
   
   public static void main(String args[])
   {
      // C.count=12; can't change the value because bydefault 
                    //all datamembers in Interface are constant
  
   C c1= new C(); // all the methods in both I1 and I2 will be available
   I1 i1= new C(); // only the metods in I1 is available
   I2 i2= new C();  // only the metods in I2 is available
   i1.method1();
   i2.method2();
   c1.method1();
   c1.method2();
   
   }
     
}

