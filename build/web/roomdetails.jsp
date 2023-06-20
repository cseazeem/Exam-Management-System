<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Exam Management System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>	
		<script type="text/javascript" src="lib/jquery.custom.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    


    <div id="main">
    <div id="header">
    <div id="logo">

    <br/><center><p><font color="white" size="5"> Exam Management System </font></p></center>
    </div>
    <div id="buttons">
    <a href="studenthome.jsp" class="but">Home</a>
    <a href="roomdetails.jsp" class="but" >Room Details</a>
    <a href="student.jsp"  class="but" >Logout</a>
    </div>
    </div>

    <div id="content">

    <div class="scrollable">
    <div class="items">
    <div class="item">
    <div class="header1"></div>                                    
    </div> 
    <div class="item">
    <div class="header2"></div>						
    </div> 
    <div class="item">
    <div class="header3"></div>						
    </div> 	


    </div>
    </div> 
    <div class="navi"></div> 
    <div style="margin-top: -20px">

    <div id="content_left">
    <div class="news">
    <%
    String user = session.getAttribute("user").toString();
     String rollno = session.getAttribute("rollno").toString();
    %>    
   <%@ page import="java.sql.*"%>
   <%@ page import="java.util.*" %>
   <%@ include file="connect.jsp" %>
   <%

    try{
    PreparedStatement pst=connection.prepareStatement("select * from student where studentname='"+user+"' ");
    ResultSet rs=pst.executeQuery();    
    %>
    <br/><center><p><font color="black" size="5"> Room Details</font></p></center>
    <center><table style="width:40%" border="2" >
    <style>
    th{
     color: black;   
    }    
    td{
     color: black;  
     text-align: center;
    }    
         
     </style>
     <tr>
     <th>Roll No</th>
     <th>Student Name</th>
     <th>Room No</th>
     </tr> </td>
        <%

        while(rs.next()){
        %>
        <tr>
        <td><%=rollno%></td>
        <td><%=user%></td>
        <td><%=rs.getString(6)%></td>

         </tr>
         </table> </center>
          <%  }

    }
     catch(Exception e)
    {
       
        System.out.println("user not found"+e.getMessage());
    }
 
%>
    	

    <div class="clear"></div>
    </div>

    </div>

    <div class="clear"></div>
    </div>
    <br/><br/><br/><br/><br/>

    <div style="clear: both; height: 12px;"></div>                  
    </div>
</body>
</html>
