<%-- 
    Document   : looping
    Created on : 18 Sep, 2018, 2:30:31 PM
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
        <table border="1">
            <tr><td>S.No</td><td> name</td><td>Mobile Number</td></tr>
            
            <% for(int i=1;i<=10;i++)
            {
                %>
                
                <tr><td><%= i %></td><td> </td><td></td></tr>
                
                <%
                    }
%>
            
        </table>
    </body>
</html>
