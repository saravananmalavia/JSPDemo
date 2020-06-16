/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anonymous;

/**
 *
 * @author saravanan
 */
public class TestAnonymous {
    
    public void call_innerClass()
    {
        
          class Test
    {
    public void display()
    {
    System.out.println("I am in inner Class");
    }
    
    }
        
     Test t1= new Test();
      t1.display();
      
      
    
    
    }
            
    
    public static void main(String args[])
    {
    
     new TestAnonymous().call_innerClass();
    
    
    }
    
    
    
}
