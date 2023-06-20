<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>

<%
   Connection co = null;
     
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String department=request.getParameter("department");
        String rollno=request.getParameter("rollno");
        String email=request.getParameter("email");

        try
        {
	
	PreparedStatement pst2=connection.prepareStatement("insert into student(studentname,password,rollno,email,department) values(?,?,?,?,?)");
	pst2.setString(1,username);
        pst2.setString(2,password);
        pst2.setString(3,rollno);
        pst2.setString(4,email);
        pst2.setString(5,department);
        
	pst2.executeUpdate();
                
       response.sendRedirect("addstudent.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
