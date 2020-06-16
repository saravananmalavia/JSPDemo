/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anonymous;

public class passingObject {
    
    public void display(Greet g1)
    {
     g1.greet();
        
    }
    
    public static void main(String args[])
    {
    passingObject p1= new passingObject();
    p1.display(new Greet(){public void greet(){System.out.println("Welcome to anonymous");}});
    
    
    }
    
    
}


abstract class Greet
{
public abstract void greet();

}
