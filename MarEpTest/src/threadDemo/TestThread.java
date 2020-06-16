
package threadDemo;

public class TestThread  {   
    public static void main(String args[])
    {
    FiveTable t1 = new FiveTable();
    SevenTable t2 = new SevenTable();
   
    t1.start(); t2.start();
    }
}
class FiveTable extends Thread
{
    int n;
    FiveTable()
    {
    this.n=5;
    }
    public void run() 
        {
            try
            {
            for(int i=1;i<=10;i++)
            {
                Thread.sleep(1000);
                System.out.println(i +" * " + n + " = " + i*n);
            }
            }
            catch(InterruptedException ie)
            {
            
            }
        }

}


class SevenTable extends Thread
{
    int n;
    SevenTable()
    {
    this.n=7;
    }
    public void run()
        {
             try
            {
            for(int i=1;i<=10;i++)
            {
                Thread.sleep(2000);
                System.out.println(i +" * " + n + " = " + i*n);
            }
            }
            catch(InterruptedException ie)
            {
            
            }
        }

}