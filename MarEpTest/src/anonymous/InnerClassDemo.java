package anonymous;
public class InnerClassDemo {
    private int i=10;
    innerTest i1 = new innerTest();
    
   
   
    public void display()
    {
         i=i+10;
         i1.print();
    System.out.println("I am in Outer class");
     innerTest i2= new innerTest();
    i2.print();
    }
    class innerTest{
        public void print()
        {
        System.out.println("I am innerTest class " + i);
        }
    }
    public static void main(String args[])
    {
   // InnerClassDemo i1= new InnerClassDemo();
    //i1.display();
      
        sample s1= new sample();
        s1.testMethod();
    }
   }

class sample
{
public void testMethod()
{
InnerClassDemo.innerTest i1;
i1 = new InnerClassDemo().new innerTest();
i1.print();
}
}
