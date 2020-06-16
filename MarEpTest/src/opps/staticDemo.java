package opps;
public class staticDemo {    
    int i;
    static int j;
    public void inc()
    {
    this.i++;
    j++;
    System.out.println(" i : "+i);
    System.out.println(" static  j : "+j);
    int k=0;
    
      System.out.println("k: " + k);
    }
    public static void main(String args[])
    {
        staticDemo s1,s2,s3;
        s1= new staticDemo();
        s2= new staticDemo();
        s3= new staticDemo();
        s1.inc();
        s2.inc();
        s3.inc();      
        //s1.i++;
        //staticDemo.j++;
    }
    
}
