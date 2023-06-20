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
    <a href="index.html" class="but">Home</a>
    <a href="admin.jsp" class="but" >Admin</a>
    <a href="faculty.jsp"  class="but">Faculty</a>
    <a href="student.jsp"  class="but" >Student</a>
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
    <br/><br/>
    <center><p><font size="5" color="black">Student Login </font></p><br/></center>
     
    <form action="studentact.jsp" method="post">
    <center><table align="center" width="281" border="0" >

    <tr><td><font color="black"> User Name :</td><td><input type="text" name="username" required="" /></td></tr>
    <tr><td><font color="black"> Password :</td><td><input type="password" name="password" required="" /></td></tr>
    
    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="Login" /></td></tr>
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
