<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>

<%
   Connection co = null;
     
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String department=request.getParameter("department");
        String empid=request.getParameter("empid");
        String email=request.getParameter("email");
        int i = 0;

        try
        {
	
	PreparedStatement pst2=connection.prepareStatement("insert into faculty(facultyname,password,email,department,empid,otp) values(?,?,?,?,?,?)");
	pst2.setString(1,username);
        pst2.setString(2,password);
        pst2.setString(3,email);
        pst2.setString(4,department);
        pst2.setString(5,empid);
        pst2.setInt(6,i);
        
	pst2.executeUpdate();
                
       response.sendRedirect("addfaculty.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
