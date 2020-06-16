/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abstraction;

/**
 *
 * @author saravanan
 */
public abstract class Shape {
    
    double area;
    static final double PI =3.1417;
    
    public abstract void findArea();
    
    public void displayArea()
    {
    System.out.println("The area is " + area);
    }
    
    
}
