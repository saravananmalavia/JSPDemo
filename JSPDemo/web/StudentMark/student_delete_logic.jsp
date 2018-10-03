<%-- 
    Document   : student_delete_logic
    Created on : 3 Oct, 2018, 2:14:24 PM
    Author     : saravanan
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%!
          int Student_ID;
       
        public static String DBDriver = "";
	public static String DBUrl = "";
	public static String DBUser = "";
	public static String DBPassword = "";

	public Connection con;
        Statement stmt;
           int QueryResult=0;
String Query,Message;



          %>
          <%
          Student_ID = Integer.parseInt(request.getParameter("sltStudentID"));
          
          
           Query = "delete from  tbl_student_mark where student_id=" +Student_ID;
       
        
        out.println(Query);
          
          try {
			DBDriver = "com.mysql.jdbc.Driver";
			DBUrl = "jdbc:mysql://127.0.0.1:3306/student_mark?autoReconnect=true";
			DBUser = "root";
			DBPassword = "root";
                        
			Class.forName(DBDriver); //Mysql driver initialalization
                        con = DriverManager.getConnection(DBUrl, DBUser,DBPassword);
                        stmt = con.createStatement();
                      
		QueryResult = stmt.executeUpdate(Query);
                con.close();
                stmt.close();
                        
                        
                     if(QueryResult >0)  
                     {
                     Message ="Student details successfully deleted for the student_id " + Student_ID;
                     
                     
                     }
                     else
                     {
                      Message ="Please try again later";
                     }
                        
                        
                        session.setAttribute("message", Message);
                     
                     
                     response.sendRedirect("student_view_all.jsp");
                        
					
		} 
		catch (Exception er) {
			//System.out.println("ERROR [Driver loading Error] : " + er);
                        
                         Message =er.getMessage();
                         out.print(Message);
		}





          %>
    </body>
</html>
