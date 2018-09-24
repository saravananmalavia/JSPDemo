<%-- 
    Document   : student_insert_logic
    Created on : 24 Sep, 2018, 10:40:23 AM
    Author     : saravanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" 
        import = "java.sql.Connection,java.sql.DriverManager, java.sql.Statement,java.sql.*"
            
        %>
<%!
    
int Mark1,Mark2,Mark3,Total;
String StudentID,StudentName,Result,Query;
public static String DBDriver = "";
	public static String DBUrl = "";
	public static String DBUser = "";
	public static String DBPassword = "";
	public Connection con;
        Statement stmt;
           int QueryResult=0;
    %>
    <%
        StudentID= request.getParameter("txtStudentID");
        StudentName= request.getParameter("txtStudentNmae");
        
        Mark1 = Integer.parseInt(request.getParameter("txtMark1"));
        Mark2 = Integer.parseInt(request.getParameter("txtMark2"));
        Mark3 = Integer.parseInt(request.getParameter("txtMark3"));
        
        Total =Mark1+Mark2+Mark3; 

        if(Mark1 < 50 || Mark2< 50 || Mark3 <50)
        {Result= "FAIL";}
        else
        {Result="PASS";}
        
          


        Query = "insert into tbl_student values(";
        Query =Query + "'" + StudentID + "',";
        Query =Query + "'" + StudentName + "',";
        Query =Query +  Mark1 + ",";
        Query =Query +  Mark2 + ",";
        Query =Query +  Mark3 + ",";
        Query =Query +  Total + ",";
        Query =Query + "'" + Result + "')";
        

        out.print(Query);
        
                // MySql Driver Loading

                try {
			DBDriver = "com.mysql.jdbc.Driver";
			DBUrl = "jdbc:mysql://127.0.0.1:3306/StudentDB?autoReconnect=true";
			DBUser = "root";
			DBPassword = "root";
			Class.forName(DBDriver);
					
		} 
		catch (Exception er) {
			System.out.println("ERROR [Driver loading Error] : " + er);
		}
        
                    // Estabilishing connection
                     try
                {
                con = DriverManager.getConnection(DBUrl, DBUser,DBPassword);
                }
                catch(Exception er)
                {
                System.out.println("ERROR[DBConnection.java:getConnection():46] [Connection error] : " + er.getMessage());	
                }



              
                try
                {
               
		stmt = con.createStatement();
		QueryResult = stmt.executeUpdate(Query);
                con.close();
                stmt.close();
		                }
                catch(SQLException er)
                {
                QueryResult=-1;
                System.out.println("ERROR[DBConnection.java:getConnection():46] [Connection error] : " + er.getMessage());	
                }
                
if (QueryResult > 0) {
    out.println("Result Inserted Successfully");
        
    }
else
{
out.println("Please try again later");
}
        
        %>
