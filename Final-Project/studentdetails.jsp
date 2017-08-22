<%@page import="java.sql.*"%>
<%!
 Connection con=null;
 Statement stmt=null,st=null;
 ResultSet rs=null,rs1=null;
 int i;
 String id,date;
%>
<body background="ob018.jpg">
<center><h1><u><font color="#2271A0">Selected Students</font></u></h1></center><pre>
	<center><table border="1"><thead><tr><th><font color="black"><h3>Hno</th><th><font color="black"><h3>Name</th>
	<th><font color="black"><h3>Branch</th><th><font color="black"><h3>Selected Date</th></tr>
	</thead><tbody>
<%
String comp=request.getParameter("id");
try
{
    Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/tnp","root","password");
    stmt=con.createStatement();
    rs=stmt.executeQuery("select hno,to_char(date1,'dd-MON-yy') from results where companyid='"+comp+"'");
    while(rs.next())
	{
	 id=rs.getString(1);
	 date=rs.getString(2);
	 st=con.createStatement();
	 rs1=st.executeQuery("select hno,fname,branch from student where hno='"+id+"'");       
    while(rs1.next())
	{%>
	 <tr><td><font color="black"> <%=rs1.getString(1)%></td>
	<td><font color="black"> <%=rs1.getString(2)%></td>
	<td><font color="black"> <%=rs1.getString(3)%></td>
	<td><font color="black"> <%=date%></td>
	</tr>
  <%}  
   }
}
catch(Exception e)
{ out.println(e);
}
%>
 </tbody></table>
<br><br><br>
<a href="achievements1.jsp"><font color="#2271A0"><h3>back</h3></a>
 </center>
 </body>

     
































