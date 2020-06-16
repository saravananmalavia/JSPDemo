

package input;

import java.util.*;

public class Console {
    
   static  Scanner sc= new Scanner(System.in);
    
    public static int getI()
    {
        int i=0;
        boolean notvalid=true;
        do
        {
                try
                {

                i = sc.nextInt();
                  notvalid=false;
                }
                catch(Exception e)
                {
                  
                    sc.next();
                System.out.println("Enter a valid integer");

                }
      
        }while(notvalid);
        
        return i;
    
    }
     public static String getS()
    {
        String s = sc.next();
        return s;
    
    }
      public static Double getD()
    {
        Double d = sc.nextDouble();
        return d;
    
    }
}
