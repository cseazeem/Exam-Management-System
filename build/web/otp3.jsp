<%@page import="novelefficient.Mail"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@page import="java.util.Random"%>
<%@ include file="connect.jsp" %>
<%
    String ot = request.getParameter("otp");
String password = request.getParameter("password");
 String email = session.getAttribute("email").toString();
    
    try{
        
 
   
        String query="select * from faculty where email='"+email+"' and otp = '"+ot+"'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
       
    
    PreparedStatement ps=connection.prepareStatement("update faculty set password = '"+password+"' where email = '"+email+"'");
    ps.executeUpdate();
    
    
   
    response.sendRedirect("faculty.jsp?m4=sucesss");
    
    }   else 
        {
        response.sendRedirect("faculty.jsp?m2=Failed");   
        }
    }
     catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>