<%@ include file="common.jsp" %>
<%
String sid1=null;
HttpSession ses=request.getSession();
	sid1=(String)ses.getAttribute("sid");
  if(!(sid1.equals("NULL")))
	 {%>
<html>
<body background="ob018.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>

<%!

ResultSet rs=null;
String sid=null,sid1=null;
%>
<%
  

   try
   {
Statement st1=con.createStatement();
rs=st1.executeQuery("select hno,fname,branch,byear,baggregate,inter,tenth,day,month,year,email,contactno,lname,question,answer                       from student where hno='"+sid1+"'");

	while(rs.next())
           {%>
<form name="f" method="post" action="sdetails.jsp">
   <font color="#2271A0"" size="5" align="left"><u>Update Details:</font></u>

 <pre><center>
<font size="4"><b><table>
    <tr><td>Hallticketno:</td><td align=right> <%=rs.getString(1)%><br></td></tr>
 	<tr><td>First Name: </td><td align=right> <input type="text" name="sname2" value="<%=rs.getString(2)%>" size="20"><br></td></tr>
	<tr><td>Last Nmae:</td><td align=right> <input type="text" name="sname13" value="<%=rs.getString(13)%>" size="20"><br> </td></tr>
	<tr><td>Branch:</td><td align=right> <input type="text" name="sname3" value="<%=rs.getString(3)%>" size="20"><br></td></tr>
     <tr><td>Year: </td><td align=right> <select  name="sname4">
                         <option selected><%=rs.getString(4)%></option>
                         <option>III</option>
                         <option>IV</option> 
                         </select><br></td></tr>
	<tr><td>AgreeGate(%)</td><td align=right>   <input type="text" name="sname5" value="<%=rs.getString(5)%>" size="20"><br></td></tr>
	<tr><td>Inter:</td><td align=right><input type="text" name="sname6" value="<%=rs.getString(6)%>" size="20"><br></td></tr>
	<tr><td>Tenth:</td><td align=right><input type="text" name="sname7" value="<%=rs.getString(7)%>" size="20"><br></td></tr>
    <tr><td>ContactNo:</td><td align=right><input type="text" name="sname12" value="<%=rs.getString(12)%>" size="20"><br></td></tr>
<tr><td>	Email: </td><td align=right><input type="text" name="sname11" value="<%=rs.getString(11)%>" size="20"><br></td></tr>
<tr><td>Security Question: </td><td align=right><input type="text" name="sname14" value="<%=rs.getString(14)%>" readonly size="20"><br></td></tr>
<tr><td>	Answer: </td><td align=right><input type="password" name="sname15" value="<%=rs.getString(15)%>" size="20"><br></td></tr>
<tr><td> Date of Birth:</td><td align=right>
<select  name="sname8"><option selected><%=rs.getString(8)%></option> >
 <option value=1>1</option>
<option value=2>2</option> 
<option value=3>3</option>			
<option value=4>4</option>
<option value=5>5</option>							  <option value=6>6</option>							  <option value=7>7</option>							  <option value=8>8</option>						          <option value=9>9</option>							  <option value=10>10</option>						  <option value=11>11</option>						  <option value=12>12</option>						  <option value=13>13</option>					          <option value=14>14</option>							  <option value=15>15</option>						  <option value=16>16</option>							  <option value=17>17</option>						  <option value=18>18</option>					          <option value=19>19</option>
<option value=20>20</option>							  <option value=21>21</option>							  <option value=22>22</option>							  <option value=23>23</option>
<option value=24>24</option>						  <option value=25>25</option>						  <option value=26>26</option>							  <option value=27>27</option>						  <option value=28>28</option>					          <option value=29>29</option>							  <option value=30>30</option>							  <option value=31>31</option>							</select> 
<select  name="sname9">
<option selected><%=rs.getString(9)%>                 <option value=1>1</option>							  <option value=2>2</option>							  <option value=3>3</option>						          <option value=4>4</option>								  <option value=5>5</option>								  <option value=6>6</option>								  <option value=7>7</option>								  <option value=8>8</option>						          <option value=9>9</option>								  <option value=10>10</option>						  <option value=11>11</option>						  <option value=12>12</option>							</select>
<input type="text"  name="sname10"                        value="<%=rs.getString(10)%>" size="10" maxlength="4"></td></tr>        
   <pre>
   <tr rowspan=2><td align=center colspan=2><br> 
   <input type="submit" value="update"></pre></pre></td></tr>
   </table>
   <pre>&nbsp;</pre>
   <pre> </font> </b>           </pre>
   
     <% }
    }
  catch(Exception e)
   {
    out.println(e);
   }
%></body></html>
<%
}
else
out.println("<center><br><h3><font color=#2271A0>U dont have privilage to change</h3>");
%>