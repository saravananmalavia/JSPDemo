
package general;

import input.*;

public class Sort {
    
    int input[];
    int output[];
    int n;
    
    
    public Sort(int n)
    {
    this.n=n;
    input = new int [this.n];
    output= new int[this.n];
    }
    
    public void read()
    {
        O.println("Enter the " + n + " elemts");
        for(int i=0;i<n;i++)
        {
         input[i] = Console.getI();
         output[i]=input[i];
        }
     
    
    }
    
    public void doSort()
    {
        int t;
    
    for(int i=0;i<n-1;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(output[i]>output[j])
            {
            t=output[i];
            output[i]=output[j];
            output[j]=t;
            
            
            }
        
        }
    
    
    }
    
    
    
    }
    
    
    
    
    
    
    
    
    
    public void display()
    {
            O.println("The Given values are");
        for(int i=0;i<n;i++)
        {
     
         O.print( input[i]  + " ");
       
        }
        O.println("");
             O.println("The Sorted values are");
         for(int i=0;i<n;i++)
        {
   
         O.print( output[i]  + " ");
       
        }
    
    }
    
    public static void main(String args[])
    {
      int N;
     O.println("Enter the number of elemnts");
     N=Console.getI();
    Sort s1= new Sort(N);
    s1.read();
    s1.doSort();
    s1.display();
    
    }
    
    
    
    
    
    
}
