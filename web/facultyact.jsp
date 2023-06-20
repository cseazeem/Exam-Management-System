<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
        
    
   
        String query="select * from faculty where facultyname='"+username+"' and password='"+password+"'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
        session.setAttribute("user", username);
   
    response.sendRedirect("facultyhome.jsp?msg=sucesss");
    
    }   else 
        {
        response.sendRedirect("faculty.jsp?msg=sucesss");   
        }
    }
     catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>