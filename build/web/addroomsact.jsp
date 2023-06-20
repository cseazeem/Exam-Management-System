<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>

<%
   Connection co = null;
     
        
        String roomno=request.getParameter("roomno");
        String department=request.getParameter("department");
        String strength=request.getParameter("strength");

        try
        {
        String sql = "select * from rooms where roomno = '"+roomno+"' ";
        Statement stm1 = connection.createStatement();
        ResultSet rst1 = stm1.executeQuery(sql);  
        if(rst1.next()){
        response.sendRedirect("addrooms.jsp?m1=Failed"); 
        }
        
        else{
	PreparedStatement ps=connection.prepareStatement("insert into rooms values(?,?,?)");
	ps.setString(1,roomno);
        ps.setString(2,department);
        ps.setString(3,strength);
	ps.executeUpdate();
                
       response.sendRedirect("addrooms.jsp?msg=success"); 
       }
        
	%>
        <%
        }
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
