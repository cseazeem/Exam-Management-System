<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
        
    
   
        String query="select * from student where studentname='"+username+"' and password='"+password+"'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
        String rollno = rs.getString("rollno");
        session.setAttribute("user", username);
        session.setAttribute("rollno", rollno);
   
    response.sendRedirect("studenthome.jsp?msg=sucesss");
    
    }   else 
        {
        response.sendRedirect("student.jsp?msg=sucesss");   
        }
    }
     catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>