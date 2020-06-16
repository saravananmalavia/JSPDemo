/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anonymous;

abstract class Hello
{
public abstract void greet();

}
public class InnerClass {
    
    public static void main(String args[])
    {
    
        (new Hello(){
        public void greet()
        {
        System.out.println("Hi Welcome to MECET");
        }
        
        }).greet();
    }
    
}
