
<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst;
    ResultSet rs=null;
	ResultSetMetaData rsmd=null;
    Statement stmt;
%>
<%
try

{

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/tnp","root","password");


 stmt=con.createStatement();

}
catch(Exception e)
{
out.println("cannot create");
}
%>
































