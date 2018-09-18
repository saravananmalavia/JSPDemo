<%-- 
    Document   : declartion.jsp
    Created on : 18 Sep, 2018, 2:11:12 PM
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
        <br>
          <%-- <%!  int a=10; int b=120; int c;%>
       
        a : <%= a%>
        b : <%= b%>
      <%  c=a+b;%>  
        c : <%= c %>--%>
          <% int a,b,c;
          
          a=25;b=30;c=a+b;
          out.print("c "+c);
          
          %>
          
          <%= a%>
          
          
          
          
        
    </body>
</html>
