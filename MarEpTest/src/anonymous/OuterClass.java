
package anonymous;
public class OuterClass {
    private int i=20;
    public void display()
    {
    System.out.println("I am with in OuterClass display method");
    
            class innertMethd
            {
              public void print()
              {
              System.out.println("I am with in innertMethd print method");
              }
            
            }
          innertMethd i1= new innertMethd();
          i1.print();
            
    }
     public static void main(String args[])
    {
   OuterClass o1= new OuterClass();
   o1.display();
    }
}
