<%@ include file="common.jsp" %>
<html>
<head>
<style>
/* latin-ext */
@font-face {
  font-family: 'Raleway';
  font-style: normal;
  font-weight: 100;
  src: local('Raleway Medium'), local('Raleway-Medium'), url(https://fonts.gstatic.com/s/raleway/v10/Li18TEFObx_yGdzKDoI_ciEAvth_LlrfE80CYdSH47w.woff2) format('woff2');
  unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Raleway';
  font-style: normal;
  font-weight: 100;
  src: local('Raleway Medium'), local('Raleway-Medium'), url(https://fonts.gstatic.com/s/raleway/v10/CcKI4k9un7TZVWzRVT-T8_k_vArhqVIZ0nv9q090hN8.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
}

h1{
	font-family: "Raleway";
	font-size:15px;
	font-wieght:100;
	font-style: normal;
	color:#2F2F2F;
}
input[type="text"]
{
    font-family: "Raleway";
	font-size:15px;
	font-wieght:100;
	font-style: normal;
	color:#2F2F2F;
}
</style>
<script language="javascript">
function validate1()
{
	var apos=f1.cname5.value.indexOf("@");
     var dotpos=f1.cname5.value.lastIndexOf(".");
	 var cname2=f1.cname2.value;
      if(f1.cname1.value=="")
      {
        alert("First name Should not be null");
        f1.cname1.focus();
	return false;
      }

for(var i=0;i<f1.cname1.length;i++)
{
     if((f1.cname1.charCodeAt(i)<65 || f1.cname1.charCodeAt(i)>90) && (f1.cname1.charCodeAt(i)<97 || f1.cname1.charCodeAt(i)>122))
      {
        alert("First name contain characters only");
        f1.cname1.value="";
	f1.cname1.focus();
	return false;
      }
}
   if(f1.cname2.value=="")
      {
        alert("Employee id should not be null");
        f1.cname2.focus();
	return false;
      }
	for(var j=0;j<cname2.length;j++)
	{
     if((cname2.charCodeAt(j)<65 || cname2.charCodeAt(j)>90) && (cname2.charCodeAt(j)<97 || cname2.charCodeAt(j)>122))
      {
        alert("Employee id should contain characters only");
        f1.cname2.value="";
		f1.cname2.focus();
		return false;
      }
	}

 if(f1.cname3.value=="")
 {
        alert("Branches should be entered");
        f1.cname3.focus();
		return false;
 }
if(f1.cname4.value=="")
	{
	alert("Enter number of students");
	f1.cname4.focus();
	return false;
	}
if(isNaN(f1.cname4.value))
	{
		alert("This field should contain integers only");
		f1.cname4.value="";
		f1.cname4.focus();
		return false;
	}


if(f1.cname5.value=="")
      {
        alert("Email Id should not be null");
       	f1.cname5.focus();
	return false;
      }
     if((apos==0||apos<0)&&(dotpos==0||dotpos<0))
	{
		alert("Enter valid Email Id");
		f1.cname5.value=""; 
		f1.cname5.focus();
 		return false;
	}	
    else if(apos>=dotpos)
	{
	 alert("Enter valid Email Id");
	 f1.cname5.value="";
	 f1.cname5.focus();
 	 return false;
	}
	if(f1.cname6.value=="")
	{
		alert("Contact number should not be null");
		f1.cname6.focus();
		return false;
	}
	if(isNaN(f1.cname6.value))
	{
		alert("This field should contain integers only");
		f1.cname6.value="";
		f1.cname6.focus();
		return false;
	}
	if(f1.cname7.value=="")
	{
		alert("Please enter any website address");
		f1.cname7.focus();
		return false;
	}
	if(f1.cname8.value=="")
		{
		alert("Please enter address");
		f1.cname8.focus();
		return false;
	}
	if(f1.cname9.value=="")
	{
		alert("Enter the established year of the college");
		f1.cname9.focus();
		return false;
	}
	if(isNaN(f1.cname9.value))
	{
		alert("This field should contain integers only");
		f1.cname9.value="";
		f1.cname9.focus();
		return false;
	}
 return true;    
 }
</script>
</head>
<body background="ob018.jpg">
<%@page import="java.sql.*"%>
<%!
ResultSet rs=null;
Statement stmt=null;
String sid1;
%>
<%
   HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
if(sid1.equals("admin"))
	 {
  try
    {
   

    stmt=con.createStatement();
     rs=stmt.executeQuery("select cname,empid,branches,nos,email,contactno,web,address,estyear from administrator" );
    while (rs.next())
	{%>
        <form name=f1 onsubmit="return validate1()" method="post"	action="cdetails.jsp">
	 <center>
	  <h1 style="color:#2271A0; font-size:30px;">Update Details</h1>
	<table>
	<tr><td><h1>College Name</h1></td><td><input type="text" name="cname1" value="<%=rs.getString(1)%>" size="20"></td></tr>
	<tr><td><h1>Employee ID</h1></td><td><input type="text" name="cname2" value="<%=rs.getString(2)%>" size="20"></td></tr>
	<tr><td><h1>Branches</h1></td><td><input type="text" name="cname3" value="<%=rs.getString(3)%>" size="20"></td></tr>
	<tr><td><h1>No Of Students</h1></td><td><input type="text" name="cname4" value="<%=rs.getString(4)%>" size="20"></td></tr>
	<tr><td><h1>Email ID</h1> </td><td><input type="text" name="cname5" value="<%=rs.getString(5)%>" size="20"></td></tr>
	<tr><td><h1>Contact No</h1></td><td><input type="text" name="cname6" value="<%=rs.getString(6)%>" size="20"></td></tr>
	<tr><td><h1>Web Address</h1> </td><td><input type="text" name="cname7" value="<%=rs.getString(7)%>" size="20"></td></tr>
	<tr><td><h1>Address</h1></td><td><input type="text" name="cname8"  value="<%=rs.getString(8)%>" size="20"></td></tr>
	<tr><td><h1>EstablishedYear</h1></td><td><input type="text" name="cname9" value="<%=rs.getString(9)%>" size="20"> </td></tr>
<br><tr><td colspan="2" align="center"><input type="submit" value="UPDATE" style="height:30px; width:100px; background-color:#69c2cf;"></td></tr>

   
   
   
     <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
	}
	else
	{
	  out.println("<center><br><h3><font color=#2271A0>U dont have privilage to update</h3>");
	}
%></body></html>































