<%@page import="java.sql.*"%>

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