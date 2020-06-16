<%-- 
    Document   : Session2.jsp
    Created on : 24 Sep, 2018, 2:20:25 PM
    Author     : saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
       <%-- <%= session.getAttribute("Course")
        
        %> --%>
        
         Value is ${ sessionScope.Course } 
                
    </body>
</html>
