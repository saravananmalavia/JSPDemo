<%-- 
    Document   : method
    Created on : 18 Sep, 2018, 2:23:06 PM
    Author     : saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
        int sum(int a,int b,int c)
        {
        return a+b+c;
        
        }
        
        %>
        <% 
        
        out.print("Result = " + sum(10,20,30));
        %>
    </body>
</html>
