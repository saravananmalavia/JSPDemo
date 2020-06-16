
package opps;

public class InherDemo {
    
    public static void main(String args[])
    {
    subB s1= new subB();
    s1.assignVal();
    s1.display();
    
   /*  baseA a1= new baseA();
    a1.assignVal();
    a1.display();*/
    
    }
    
}

class baseA
{
int i;
      public void assignVal()
    {
    i=10;
   
    }
    public void display()
    {
    System.out.println("the value of base i " + i);

    }
    
    
    
}
class subB extends baseA
{
    int j;
    
    public void assignVal()
    {
        
        super.assignVal();
    j=40;
    }
    
    public void display()
    {
       super.display();
 
    System.out.println("the value of sub j " + j);
    }
    
}








