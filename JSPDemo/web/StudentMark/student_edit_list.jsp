<%-- 
    Document   : student_edit_list
    Created on : 3 Oct, 2018, 2:24:49 PM
    Author     : saravanan
--%>

<%-- 
    Document   : student_list
    Created on : 3 Oct, 2018, 2:05:49 PM
    Author     : saravanan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="..\css\style.css">
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
  ResultSet rsData ;


          %>
          
          <%
              

  try {
			DBDriver = "com.mysql.jdbc.Driver";
			DBUrl = "jdbc:mysql://127.0.0.1:3306/student_mark?autoReconnect=true";
			DBUser = "root";
			DBPassword = "root";
                        
			Class.forName(DBDriver); //Mysql driver initialalization
                        con = DriverManager.getConnection(DBUrl, DBUser,DBPassword);
                        stmt = con.createStatement();
                        
                        Query="select * from tbl_student_mark";
                       
                      
		rsData=stmt.executeQuery(Query);
                
              
  
                } 
		catch (Exception er) {
			//System.out.println("ERROR [Driver loading Error] : " + er);
                        
                         Message =er.getMessage();
		}

              %>
        
<table width="100%" border="0">
  <tbody>
    <tr>
      <td height="547" valign="top" align="center"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="103" align="center" valign="middle" bgcolor="#EDEE4E"><h1><strong>Student Information System</strong></h1></td>
          </tr>
          <tr>
            <td height="419" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                    <td align="center" valign="middle">
                        
                                            <ul>
  <li><a  href="student_view_all.jsp">Home</a></li>
  <li><a class="active"  href="student_edit_list.jsp">EDIT</a></li>
  <li><a href="student_list.jsp">Delete</a></li>
  <li><a  href="student_insert.jsp">New</a></li>
</ul>
      
                        
                    </td>
                </tr>
                <tr>
                  <td align="center" valign="middle" style="font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size: large; font-style: italic;">Student Mark Details</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" style="font-size: medium; color: #F10004;">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="top">
                      <form id="form1" name="form1" method="post" action="student_edit_view.jsp">
					    <table width="100%" height="43" border="0">
					      <tbody>
					        <tr>
					          <td width="10%" height="39">&nbsp;</td>
					          <td width="10%">&nbsp;</td>
					          <td width="16%">&nbsp;</td>
					          <td width="11%" align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="13%" align="left" valign="middle" style="font-style: italic">
                                                      
                                                      <select name="sltStudentID" id="sltStudentID">
                                                     
                                                           <% 
                                                try
                                                {
                                                        if(rsData!=null)
                                                        {
                                                                
                                                                while(rsData.next())
                                                                {

                                                                        %>
					            <option value="<%= rsData.getInt("student_id") %>"><%= rsData.getInt("student_id") %></option>
					            <%
                                                    }

                                            }
                                                   
  con.close();
                stmt.close();

                                                    }
                                                    catch(Exception e)
                                                    {
out.print(e.getMessage().toString());

                                                    }
                                                    %>
                                                    
                                                    
                                                     </select>
                                                  
                                                  </td>
					          <td width="21%"><input type="submit" name="submit" id="submit" value="Edit"></td>
					          <td width="9%">&nbsp;</td>
					          <td width="9%">&nbsp;</td>
					          </tr>
					        </tbody>
					      </table>
                      </form></td>
                </tr>
                <tr>
                  <td height="83" align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td height="68" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="middle"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#EDEE4E" style="font-family: Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, serif; font-size: small;">e-vision labs &copy;2018</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>

