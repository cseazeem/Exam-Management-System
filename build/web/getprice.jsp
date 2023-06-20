<%@page import="java.sql.*"%>
<%
  
    ResultSet rs=null;
try{
response.setContentType("text/xml");
response.setHeader("Cache-Control", "no-cache");

Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/abdul", "root", "root");
String mobile = request.getParameter("product");
System.out.println("ddsfjd"+mobile);
String query1 = "select year from department where department ='"+mobile+"'";
Statement st1 = co.createStatement();
    rs=st1.executeQuery(query1); 

String cnm="";
while(rs.next())
{
  cnm=cnm+rs.getString("year")+":";
  
 }
out.write(cnm);
 }catch(Exception e)
  { out.write(e.toString()); }
%>