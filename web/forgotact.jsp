<%@page import="novelefficient.Mail"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@page import="java.util.Random"%>
<%@ include file="connect.jsp" %>
<%
    String email = request.getParameter("email");
  //  String password = request.getParameter("password");
    
    try{
        
    Random s = new Random();
    int otp = s.nextInt(10000 - 5000) +25000 ;
   
        String query="select * from faculty where email='"+email+"'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
        session.setAttribute("email", email);
        String user = rs.getString("facultyname");
    session.setAttribute("user",user);
  //  String email = rs.getString("email");
    session.setAttribute("email",email);
    
    PreparedStatement ps=connection.prepareStatement("update faculty set otp = "+otp+" where email = '"+email+"'");
    ps.executeUpdate();
    
    Mail m = new Mail();
          String msg ="User Name:"+rs.getString("facultyname") +"\nOTP :"+otp;
          m.secretMail(msg,email,email);
                   
   
    response.sendRedirect("otp2.jsp?m1=sucesss");
    
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