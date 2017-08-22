<%@ page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>
<%!

Statement st=null;
%>
<body>
<% 
try
{

String branch=request.getParameter("branch");
st =con.createStatement();
String str="insert into branch values((select nvl((select max(BRANCH_ID) from branch)+1,1) from dual),'"+branch.toUpperCase()+"')";
System.out.print(str);
int i=st.executeUpdate(str);
if(i==1)
out.print("<center>Branch Added sucess fully</center>");
else
out.print("<center>The Branch already Exist</center>");
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
