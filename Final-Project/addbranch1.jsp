<%@ page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<% 
try
{

String branch="eee";//request.getParameter("branch");
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

}
catch(Exception e)
{
out.print("<center>The Branch already Exist</center>"+e);
}

finally
{
st.close();
con.close();
}
%>
</body>
</html>
