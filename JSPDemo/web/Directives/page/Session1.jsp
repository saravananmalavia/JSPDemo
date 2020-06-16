<%-- 
    Document   : Session1
    Created on : 24 Sep, 2018, 2:18:39 PM
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
        
        <% 
        session.setAttribute("Course", "Java-JsP");
        out.println("Session created successfully!");
        %>
        
    </body>
</html>
