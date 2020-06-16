
package anonymous;

public class staticInner {
    int i=10;
    static int j=20;
    
    static class inner
    {
        public void display()
        {
        System.out.println("I am with in static inner class j " + j);
        }
    
    }
     public static void main(String args[])
    {
        inner i1= new inner();
       i1.display();
        
       staticInner.inner i2 = new inner();
       i2.display();
      
    }
    
}
