/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stringDemo;

/**
 *
 * @author saravanan
 */
public class TestString {
    
    public static void main(String args[])
    {
    
   // String s1="Welcome"; //assigning String litrals
   String s2 = "Welcome";  //new String ("Welcome"); // new operator
    
        
      String s1= new String("Welcome");
      //    String s2= new String("Welcome");
  
      
    if(s1.equals(s2))
    {
     System.out.println("contents same");
    }
    else
    {
        System.out.println("contents not same");
    }
    
  if(s1==s2)
  {
     System.out.println("address same");
    }
    else
    {
        System.out.println("address not same");
    }
    
    
    
    }
    
}
