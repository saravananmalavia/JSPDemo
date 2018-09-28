<%-- 
    Document   : Student_view_all
    Created on : 19 Sep, 2018, 10:47:21 AM
    Author     : saravanan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="#E7BF09"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">Student Information System</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle">menu</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">message</td>
                </tr>
                 <%!
    
    public static String DBDriver = "";
	public static String DBUrl = "";
	public static String DBUser = "";
	public static String DBPassword = "";
	public Connection con;
        Statement stmt;
        ResultSet rsData ;
        String strQuery;
    %>
                
    <%
    try {
			DBDriver = "com.mysql.jdbc.Driver";
			DBUrl = "jdbc:mysql://127.0.0.1:3306/StudentDB?autoReconnect=true";
			DBUser = "root";
			DBPassword = "root";
			Class.forName(DBDriver);
                        
                         // Estabilishing connection
                       con = DriverManager.getConnection(DBUrl, DBUser,DBPassword);
                       
                       strQuery ="select * from tbl_student";
			
			 stmt = con.createStatement();
				
				rsData=stmt.executeQuery(strQuery);
					
		} 
		catch (Exception er) {
			System.out.println("ERROR [Driver loading Error] : " + er);
		}
        
                   
              %>


                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					    <table width="80%" border="1">
					      <tbody>
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
					          <td width="16%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student Name </span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	1 </span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	2</td>
					          <td width="11%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	3</span></td>
					          <td width="20%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Total</span></td>
					          <td width="18%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Result</span></td>
					          </tr>
                                                  
                                                   <% 
                                            try
                                            {
                                                    if(rsData!=null)
                                                    {
                                                            while(rsData.next())
                                                            {

                                                                    %>
                                                  
					        <tr>
                                                    <td height="30"><%= rsData.getString("StudentID") %></td>
					          <td><%= rsData.getString("StudentName") %></td>
					          
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif"><%= rsData.getString("Mark1") %></td>
					          <td><%= rsData.getString("Mark2") %></td>
					          <td align="left" valign="middle"><%= rsData.getString("Mark3") %></td>
					          <td><%= rsData.getString("Total") %></td>
                                                  <td><%= rsData.getString("Result") %></td>
					          </tr>
                                                  
                                                  <%
                                                  }
                                                }
                                                }
                                                catch(Exception ee)
                                                {
out.print(ee.getMessage());
}
                                                  %>
                                                </tbody>
					      </table>
						  
						  
                      </form></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="#E7BF09">e-vision labs &copy;2018</td>
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
