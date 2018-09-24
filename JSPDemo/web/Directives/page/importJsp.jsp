<%-- 
    Document   : importJsp
    Created on : 24 Sep, 2018, 1:59:42 PM
    Author     : saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import ="evision.calculator.*,java.io.*"
        import ="java.util.*"
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%= "Sum a+b " + Cal.sum(20, 10)
        %>
        <br>
        <%
        int result=Cal.sub(20, 10);
        
        
        out.print("result :" + result);
        
        %>
    </body>
</html>
