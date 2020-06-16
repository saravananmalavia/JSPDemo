/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package opps;

import java.util.Scanner;

/**
 *
 * @author saravanan
 */
public class SumOops {
    
    int i1,i2,i3;
    
    static Scanner sc = new Scanner(System.in);
    
    public void readValues()
    {
    System.out.println("Enter the values of i1 and i2"); 
    
    i1=sc.nextInt();    i2= sc.nextInt(); 
    }
    public void read()
    {
    System.out.println("Enter the values of i1 and i2"); 
   
    i1=sc.nextInt();    i2= sc.nextInt(); 
    }
    public void findSum()
    {
    i3=i1+i2;
    }
    public void display()
    {
     System.out.println("The value of i1: " +i1);
    System.out.println("The value of i2: " +i2);
    System.out.println("The value of i3=i1+i2 " +i3);  
    }
    public static void main(String args[])
    {
    SumOops s1= new SumOops();
    s1.readValues();
    s1.findSum();
    s1.display();
    }
}
