<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>  

<%


       // int totalstudents = Integer.parseInt(request.getParameter("totalstudents"));
      //  int noofstudents = Integer.parseInt(request.getParameter("noofstudents"));
      //  int requiredfac = Integer.parseInt(request.getParameter("requiredfac"));
        
      //  String cse = request.getParameter("cse");
     //   String ece = request.getParameter("ece");
      //  String it = request.getParameter("it");
        


        try 
        {
            
            
        String query = "select * from student where department = 'CSE' ";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);
        
        if(rs.next()){
            
        String query1 = "select * from rooms where department = 'CSE' ";
        Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery(query1);  
        String roomno = null;
        if(rs1.next()){
        roomno = rs1.getString("roomno");
        }
        
        String sql = "select * from faculty where department != 'CSE' and status = 'No' ";
        Statement stm1 = connection.createStatement();
        ResultSet rst1 = stm1.executeQuery(sql);  
        String faculty = null;
        if(rst1.next()){
        faculty = rst1.getString("facultyname");
        }
        
        PreparedStatement ps=connection.prepareStatement("update student set roomno = '"+roomno+"', facultyname = '"+faculty+"' where department  = 'CSE' ");    
        ps.executeUpdate();
        
        PreparedStatement psmt1=connection.prepareStatement("update faculty set roomno = '"+roomno+"', status = 'Allocated' where facultyname  = '"+faculty+"' ");    
        psmt1.executeUpdate();
        }
        
        String query2 = "select * from student where department = 'ECE' ";
        Statement st2 = connection.createStatement();
        ResultSet rs2 = st2.executeQuery(query2);
        
        if(rs2.next()){
            
        String query3 = "select * from rooms where department = 'ECE' ";
        Statement st3 = connection.createStatement();
        ResultSet rs3 = st3.executeQuery(query3);  
        String roomno = null;
        if(rs3.next()){
        roomno = rs3.getString("roomno");
        }
        
        String sql = "select * from faculty where department != 'ECE' and status = 'No' ";
        Statement stm1 = connection.createStatement();
        ResultSet rst1 = stm1.executeQuery(sql);  
        String faculty = null;
        while(rst1.next()){
        faculty = rst1.getString("facultyname");
        }
        
        PreparedStatement ps1=connection.prepareStatement("update student set roomno = '"+roomno+"', facultyname = '"+faculty+"' where department  = 'ECE' ");    
        ps1.executeUpdate();  
        
        PreparedStatement psmt1=connection.prepareStatement("update faculty set roomno = '"+roomno+"',status = 'Allocated' where facultyname  = '"+faculty+"' ");    
        psmt1.executeUpdate();
        
        }
        
        String query4 = "select * from student where department = 'IT' ";
        Statement st4 = connection.createStatement();
        ResultSet rs4 = st4.executeQuery(query4);
        
        if(rs4.next()){
            
        String query5 = "select * from rooms where department = 'IT' ";
        Statement st5 = connection.createStatement();
        ResultSet rs5 = st5.executeQuery(query5);  
        String roomno = null;
        if(rs5.next()){
        roomno = rs5.getString("roomno");
        }
        String sql = "select * from faculty where department != 'IT' and status = 'No' ";
        Statement stm1 = connection.createStatement();
        ResultSet rst1 = stm1.executeQuery(sql);  
        String faculty = null;
        if(rst1.next()){
        faculty = rst1.getString("facultyname");
        }
        
        PreparedStatement ps2=connection.prepareStatement("update student set roomno = '"+roomno+"', facultyname = '"+faculty+"' where department  = 'IT' ");    
        ps2.executeUpdate();  
        
        PreparedStatement psmt1=connection.prepareStatement("update faculty set roomno = '"+roomno+"', status = 'Allocated' where facultyname  = '"+faculty+"' ");    
        psmt1.executeUpdate();
        
        } 
        
        PreparedStatement psmt1=connection.prepareStatement("update faculty set status = 'No' ");    
        psmt1.executeUpdate();
        
        response.sendRedirect("calculaterooms.jsp?msg=success"); 
        
       %>  
       <%  
       }
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
            
            
         %>
