<%@ page import="java.sql.*"%>

<%! 
     Connection con = null;
%>
<%

		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "RSD", "password");	
		}
		catch(ClassNotFoundException ex) {
				System.out.println("Error: unable to load driver class!");
		}
		
		
%>

<%--
<%! 
     Connection con = null;
     Statement st = null,st1=null,st2=null,st3=null,st4=null;
%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/tnp","root","password");
st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
st4=con.createStatement();
%>
--%>