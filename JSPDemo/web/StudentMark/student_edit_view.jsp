<%-- 
    Document   : student_insert
    Created on : 28 Sep, 2018, 12:11:23 PM
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
                         Student_ID = Integer.parseInt(request.getParameter("sltStudentID"));
          
         
                        
                        Query="select * from tbl_student_mark where student_id="+Student_ID;
                       
                      
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
                  <td align="center" valign="middle">Menu</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" style="font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size: large; font-style: italic;">Student Mark Details</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" style="font-size: medium; color: #F10004;">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="top">
                      <form id="frm_student_insert" name="frm_student_insert" method="get" action="student_update_logic.jsp">
					    <table width="100%" height="179" border="0">
					      <tbody>
                                                         <% 
                                                try
                                                {
                                                        if(rsData!=null)
                                                        {
                                                               
                                                                if(rsData.next())
                                                                {

                                                                        %>
					        <tr>
					          <td width="10%">&nbsp;</td>
					          <td width="10%">&nbsp;</td>
					          <td width="16%">&nbsp;</td>
					          <td width="11%" align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="24%" align="left" valign="middle">
                                                      <input type="text" readonly="true" name="txtStudentID" id="txtStudentID" value='<%= rsData.getInt("student_id") %>'></td>
					          <td width="10%">&nbsp;</td>
					          <td width="9%">&nbsp;</td>
					          <td width="9%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Name</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtName" id="txtName" value='<%= rsData.getString("name") %>'></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 1</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark1" id="txtMark1" value='<%= rsData.getInt("mark1") %>'></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 2</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark2" id="txtMark2" value='<%= rsData.getInt("mark2") %>'></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Mark 3</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark3" id="txtMark3" value='<%= rsData.getInt("mark1") %>'></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
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
                                                    
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="Submit"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
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
