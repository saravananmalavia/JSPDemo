/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exceptionDemo;

/**
 *
 * @author saravanan
 */
public class MOBException extends Exception {
    
    public MOBException()
    {
    System.out.println("MOBException : Mark should be between(0-100)");
    
    }
     
}
