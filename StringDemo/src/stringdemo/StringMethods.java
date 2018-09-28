/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stringdemo;

/**
 *
 * @author saravanan
 */
public class StringMethods {
    
    
    
    public static String rev(String s)
    {
        String result="";
        
        
        int l = s.length();
        
        result= s.substring(5,6);
        
        
          for(int i=l;i>0;i--)
        {
        
       result= result+  s.substring(i-1,i);
        
        }
        
        
        
        return result;
    
    }
    
    
}
