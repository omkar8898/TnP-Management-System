<%@ page import="java.sql.*" %>
<%@ include file="common.jsp" %>
<body background="ob018.jpg">

<%

   Statement stmt=null;
   ResultSet rs=null;
   String event=null,sub=null,dat=null;
   int i=0;
   %>

  <% 
    
   event=request.getParameter("event");
   sub=request.getParameter("subj");
try {


		stmt=con.createStatement();
		 rs=stmt.executeQuery("select count(*) from event");
		 rs.next();
		 
		int c=rs.getInt(1);
		  c=c+1;
		 rs=stmt.executeQuery("select to_char(cast(sysdate as timestamp), 'DD-Mon-YYYY HH24:MI:SS') from dual");
	     rs.next();                                                   
	     dat=rs.getString(1);
		 //out.println(dat);
	     stmt.executeUpdate("insert into event values('"+sub+"','"+event+"',to_date('"+dat+"','DD-Mon-YYYY HH24:MI:SS'),"+c+","+1+","+1+")");
		
	     out.println("<center><br><br><font color=#2271A0 size=5>Event Sucessfully added.....</font>");
	  %>
	 <br><br>
<a href="addeve.jsp"><font color="#2271A0">back</a>
		
		
	
		<% 
     
   }
   catch(Exception e)
   {
	     out.println(e);
   }
	 
    %>































