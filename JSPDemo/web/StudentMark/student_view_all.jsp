<%-- 
    Document   : student_view_all
    Created on : 1 Oct, 2018, 1:52:12 PM
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
          int Student_ID,Mark1,Mark2,Mark3,Total;
          String Name,Result;
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
  <li><a class="active" href="student_view_all.jsp">Home</a></li>
  <li><a href="student_edit_list.jsp">EDIT</a></li>
  <li><a href="student_list.jsp">Delete</a></li>
  <li><a  href="student_insert.jsp">New</a></li>
</ul>
                        
                    </td>
                </tr>
                <tr>
                  <td align="center" valign="middle" style="font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size: large; font-style: italic;">Student Mark Details</td>
                </tr>
                <tr>
                    <td align="center" valign="middle" style="font-size: medium; color: #F10004;">
                        
                        
                        <%
                            
                            if(session.getAttribute("message")!=null)
                            {
                            
                            Message =session.getAttribute("message").toString();
                            session.removeAttribute("message");
                            
                            }
                            else
                            {
                            Message="";
                            }
                            
                               out.println(Message);
                            

                            %>
                        
                        
                    </td>
                </tr>
                <tr>
                  <td align="center" valign="top">
					  <form id="form1" name="form1" method="post">
					    <table width="80%" height="100" border="1">
					      <tbody>
					        <tr>
					          <td width="16%" height="33" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Student ID</span></td>
					          <td width="13%" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Name</span></td>
					          <td width="17%" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 1</span></td>
					          <td width="15%" align="center" valign="middle" bgcolor="#EDEE4E" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 2</td>
					          <td width="14%" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 3</span></td>
					          <td width="10%" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Total</span></td>
					          <td width="15%" align="center" valign="middle" bgcolor="#EDEE4E"><span style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Result</span></td>
					          </tr>
                                                  
                                                  
                                                   
                                                <% 
                                                try
                                                {
                                                        if(rsData!=null)
                                                        {
                                                                System.out.println("While");
                                                                while(rsData.next())
                                                                {

                                                                        %>
					        <tr>
					          <td height="30"><%= rsData.getInt("student_id") %></td>
					          <td><%= rsData.getString("name") %></td>
					          <td align="center"><%= rsData.getInt("mark1") %></td>
					          <td align="center" ><%= rsData.getInt("mark2") %></td>
					          <td align="center"><%= rsData.getInt("mark3") %></td>
					          <td align="center"><%= rsData.getInt("total") %></td>
					          <td align="center"><%= rsData.getString("result") %></td>
					          </tr>
					        <tr>
                                                    
                                                    <%
                                                    }

                                            }
                                                    else
                                                    {
                                %>
                                  <td height="29" colspan="7" align="center" valign="middle">There is no records !</td>

                                <%

                                                   
                                                    }
  con.close();
                stmt.close();

                                                    }
                                                    catch(Exception e)
                                                    {
out.print(e.getMessage().toString());

                                                    }
                                                    %>
                                                    
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
