<%-- 
    Document   : student_view
    Created on : 28 Sep, 2018, 12:20:08 PM
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
      <%!
          int Student_ID,Mark1,Mark2,Mark3,Total;
          String Name,Result;
          %>
          <%
          Student_ID = Integer.parseInt(request.getParameter("txtStudentID"));
          Name = request.getParameter("txtName");
          Mark1 = Integer.parseInt(request.getParameter("txtMark1"));
          Mark2 = Integer.parseInt(request.getParameter("txtMark2"));
          Mark3 = Integer.parseInt(request.getParameter("txtMark3"));
          
          
          
          
           Total=Mark1+Mark2+Mark3;
           if(Mark1<=50 || Mark2 <=50 || Mark3<=50)
           {
           Result = "Fail";
                   }
           else
           {
               Result="Pass";
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
					  <form id="form1" name="form1" method="post">
					    <table width="100%" height="179" border="0">
					      <tbody>
					        <tr>
					          <td width="10%">&nbsp;</td>
					          <td width="10%">&nbsp;</td>
					          <td width="16%">&nbsp;</td>
					          <td width="11%" align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="24%" align="left" valign="middle" style="font-style: italic"><%= Student_ID %></td>
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
					          <td align="left" valign="middle" style="font-style: italic"><%= Name %></td>
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
					          <td align="left" valign="middle" style="font-style: italic"> <%= Mark1 %> </td>
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
					          <td align="left" valign="middle" style="font-style: italic"><%= Mark2 %></td>
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
					          <td align="left" valign="middle" style="font-style: italic"><%= Mark3 %></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Total</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-style: italic"><%= Total %></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Gill Sans', 'Gill Sans MT', 'Myriad Pro', 'DejaVu Sans Condensed', Helvetica, Arial, sans-serif; font-size: medium;">Result</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-style: italic"><%= Result %></td>
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
