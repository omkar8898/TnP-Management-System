<%@ include file="common.jsp" %>
<html>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!

 Statement stmt=null;
 ResultSet rs=null;
 String cn,emp,br,no,cnu,ei,we,add,dat=null,day,mon,year;
 int i=1;
%>
<%
day=request.getParameter("d");
mon=request.getParameter("m");
year=request.getParameter("year");
dat=day+"-"+mon+"-"+year;

out.println("<br><b><font size=8 color=#2271A0><center>Updated Successfully</b></font>"); 
try
{


    Statement stmt=con.createStatement();
    Statement st=con.createStatement();
    rs=stmt.executeQuery("select id,nosr from recruiter");
	
	int j=1;
		while(rs.next()) 
		{ 
		  String nn=rs.getString(1);
	      String  stu=rs.getString(2);
		  int old=Integer.parseInt(stu);
		  String no=request.getParameter(nn);
		  int m=Integer.parseInt(no);		  
          int n=m+old;
		  
	      st.executeUpdate("update recruiter set nosr='"+n+"' where id='"+nn+"'");
          %>
		  <form name="f1" method="get" action="entstu.jsp">
		  
		  <table rows=<%=m%> cols=4 border="5" cellpadding="10px">
	     <tr><th>Hno</th><th>CompanyID</th></tr>
		  
        <%
		  
		   i=1;
		   while(i<=m)
		   {%>
		       <tr><td><input type="text" name="abc<%=j%>"></td><td><input type="text" name="abcd<%=j%>" value="<%=nn%>" readonly></td></tr>
			   <%
		    i++;j++;
		   }%>
		  
		  <%
		  }
		  
		%>
	    
	  
			</table>
			<input type="hidden" name="x" value="<%=j%>">
			<input type="hidden" name="y" value="<%=dat%>">
			<center><input type="submit" value="submit"></center>
		    </form>
<%}
catch(Exception e)
{ 
	System.out.println(e);
}
%>

</body>
</html>
     

































