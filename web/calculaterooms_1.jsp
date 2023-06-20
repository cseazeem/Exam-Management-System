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
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Room Added Successfully...!');</script>
    <%}%>


    <div id="main">
    <div id="header">
    <div id="logo">

    <br/><center><p><font color="white" size="5"> Exam Management System </font></p></center>
    </div>
    <div id="buttons">
    <a href="adminhome.jsp" class="but">Home</a>
    <a href="addfaculty.jsp" class="but" >Add Faculty</a>
    <a href="addstudent.jsp"  class="but">Add Student</a>
    <a href="addrooms.jsp"  class="but" >Add Rooms</a>
    <a href="calculaterooms.jsp"  class="but" >Calculate Rooms</a>
    <a href="admin.jsp"  class="but" >Logout</a>
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
     
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*" %>
    <%@ include file="connect.jsp" %>  
    
    <%
    
    int i=75;
    int studentsinroom = 0;
    int totalrooms = 0;
    
    try
    {

   // ResultSet rs=connection.createStatement().executeQuery("SELECT studentname,count(studentname) FROM student group by studentname ");


    

     

   //  while(rs.next())
   //  {


   //  i++;
     
   //  }
   //  System.out.println("totalstudents"+i);     
     
     
     studentsinroom = 25;
     
     totalrooms = i/25;
     
   // session.setAttribute("studentsinroom", studentsinroom);
        
    %>
        
    <%
    }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    %>
      
        
        
        
        
        
    <br/><br/>
    <center><p><font size="5" color="black">Faculty Allocation </font></p><br/></center>
     
    <form action="calculateroomsact.jsp" method="post">
    <center><table align="center" width="381" border="0" >

            
    <tr><td><font color="black">Total Students </td><td>
            <input type="text" name="totalstudents" readonly="" value="<%=i%>" /></td></tr>
            
    <tr><td><font color="black"> No of Students in a Room  </td><td>
    <input type="text" name="noofstudents" readonly="" value="<%=25%>" /></td></tr>
    
    <tr><td><font color="black">Total Faculty Required </td><td>
    <input type="text" name="requiredfac" readonly="" value="<%=totalrooms%>" /></td></tr>
    
    <tr><td>
    <p><font size="2" color="red"><br/>Select No of Faculty</font></p>
    </td></tr>
    
    <tr><td><font color="black"><br/> CSE </td><td>
    <input type="text" name="cse" required="" /></td></tr>
    
    <tr><td><font color="black"> ECE </td><td>
    <input type="text" name="ece" required="" /></td></tr>
    
    <tr><td><font color="black"> IT </td><td>
    <input type="text" name="it" required="" /></td></tr>
    
    
    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="Allocate" /></td></tr>
    <tr></tr>      
    </table></center>
    </form>
    	

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
