<%@ page import="java.sql.*"%>
<%@ include file="common.jsp" %>

<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style2 {font-family: Geneva, Arial, Helvetica, sans-serif}
-->
</style>
<body background="ob018.jpg">
<%!
     Statement st = null;
%>
<table width="200" border="2" cellspacing="5" align="center" cellpadding="5">
<caption>
<span class="style1">Branch Details</span>
</caption>
  <tr>
    <th scope="col"><span class="style2">BtanchID</span></th>
    <th scope="col"><span class="style2">BranchName</span></th>
  </tr>

<%
try{
st=con.createStatement();
String str="select * from branch";
ResultSet rs=st.executeQuery(str);
while(rs.next())
{

%>
  <tr>
    <td align="center"><font color="#6633FF"><b><%=rs.getInt(1)%> </b> </font></td>
<td align="center">
<font color="#6633FF"><b><%=rs.getString(2)%></b></font></td>
  </tr>
<%}
}
catch(Exception e)
{
	System.out.println(e);
}%>
</table>

</body>