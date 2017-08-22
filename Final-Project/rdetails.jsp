<html>
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%!
 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null;
 String hnum,snam,br,byr,bagg,boi,ssc,dat,mon,yr;
 String sid=null,sid1=null;
 int i;
 %>
<%
 
 snam=request.getParameter("sname2");
 br=request.getParameter("sname3");
 byr=request.getParameter("sname4");
 bagg=request.getParameter("sname5");  
 boi=request.getParameter("sname6");
 ssc=request.getParameter("sname7");
 dat=request.getParameter("sname8");
 mon=request.getParameter("sname9");
 yr=request.getParameter("sname10");
 
%>
<%
 try
    {
     HttpSession ses=request.getSession();
	 sid1=(String)ses.getAttribute("sid");
	 Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/tnp","root","password");
     stmt=con.createStatement();
     i=stmt.executeUpdate(" update student set  fname='"+snam+"' , branch='"+br+"', byear='"+byr+"',                 baggregate='"+bagg+"' , inter='"+boi+"' , tenth='"+ssc+"' , day='"+dat+"' ,month='"+mon+"' ,year='"+yr+"' where       hno='"+sid1+"' ");%>
	 <font size=6 color=pink>UPDATED SUCCESSFULLY</font>
	 <%
    }
 catch(Exception e)
  {
   out.println(e);
  }
%>
</html>
     

































