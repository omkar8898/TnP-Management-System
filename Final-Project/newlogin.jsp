
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
    <%!
       
        Statement stmt1=null;
		ResultSet rs=null;
        String usr=null,passwd=null,sid=null,spw=null,sid1=null,spw1=null,u=null,p=null,t=null;
		int flag;
     %>
     <%
        usr=request.getParameter("usrname");
        passwd=request.getParameter("password");
      %>
      
      <%
         try{
				Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "RSD", "password");
                HttpSession ses=request.getSession();
				ses.setAttribute("sid",usr);
				ses.setAttribute("spw",passwd);
				sid1=(String)ses.getAttribute("sid");
				spw1=(String)ses.getAttribute("spw");
				
				
stmt1=con.createStatement();
rs=stmt1.executeQuery("select * from login");
			
              while(rs.next())
		      {
                String uid=rs.getString(1);
				String pwd=rs.getString(2);
                String ty=rs.getString(3);
			 if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equals("a")))
				  {%>
				    <jsp:forward page="ahome.html"/>
				  <%}
			 else if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equals("s")))
					  {%>
<jsp:forward page="student home.html"/>
                  <%}
	         else if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equals("r"))) 
                  { %>                                            
                        <jsp:forward page="recthome.html"/>
                  <%                
			        }
              }                 
			  	         
                 %>
				    
					<jsp:include page="ahome2.html"/>
                      			 
	       <%   
	       }
        catch(Exception e)
       {
          out.println(e);
       }
   
   %>































