
package interfaceDemo;

public interface I1 {
    
int count=10; // by default static final constant

 public abstract  void method1(); // by default abstract no need 
                                  // to include the keyword abstract
  
}

interface I2 {
    
    public  void method2();
  
}
class A
{
}
class B
{
}

interface I3 extends I1,I2 // interface can extends any number of interface
{

}
