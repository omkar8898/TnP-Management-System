<%@ include file="common.jsp" %>
<%@ page import="java.util.*"%>

<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
	 {%>
<%!int dat,yr;
StringTokenizer stk =null;
int i,j,dat1;%>
<html>
<head>
<title>
Student details
</title>
</head>
<body background="ob018.jpg">

<form name="f1" method="get" action="rsdetails.jsp">
<center><u><font color="#2271A0"" size="5" align="left">Searching for student information:</u></center></font>
<b><font size="4"><pre><center>
<table>
<tr><td>Branch</td><td>: <select name="branch">
<option selected value="%">All</option>    
<%
String str="select BRANCH_NAME from branch";
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs3=st.executeQuery(str);
while(rs3.next())
{
	String branchval=rs3.getString("BRANCH_NAME");
%>
<option value=<%=branchval%>>
<font color="#6633FF"><b><%=branchval%></b></font></option>
<%}%>
</select></td></tr>

 <td>Aggregate</td><td>:  <select name="aggr">
    
<option selected value="0">All</option>
<option value="75">">=75%"</option>
<option value="70">">=70%"</option>
<option value="68">">=68%"</option>
<option value="65">">=65%"</option>
<option value="63">">=63%"</option>
<option value="60">">=60%"</option>
</select></td></tr>
<%
try
{
ResultSet rs=st1.executeQuery("Select to_char(sysdate,'yyyy') from dual");
 rs.next();                                                   
	dat=Integer.parseInt(rs.getString(1));
	System.out.println("<<<<<<<<<>>>>>"+dat);
  rs.close();
  rs=st2.executeQuery("select estyear from administrator");
  rs.next();
   dat1=Integer.parseInt(rs.getString(1));
	System.out.println("<<<<<<<<<ffffffff>>>>>"+dat1);
   j=dat-7;
   System.out.println("<<JJJJJJJJ value"+j);
   if(j<(dat1+4))
	j=dat1+4;
 }
catch(Exception e)
{
 out.println(e);
}
%>
<tr><td>Passed out</td><td>:  <select name="passedout">
<%
while(j<=(dat+1))
{%>
<option value="<%=j%>"><%=j++%></option>
<%
}
%>
</select></td></tr>
<br></table>
<center><input type="submit" name="src"  value="search">
</center>
</font>
<%}
else
 out.println("<center><br><h3><font color=#2271A0>U dont have privilage to view</h3>");%>
</b>
</form>
</pre>
</body>































