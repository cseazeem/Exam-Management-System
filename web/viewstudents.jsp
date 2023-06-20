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
                    <a href="facultyhome.jsp" class="but">Home</a>
                    <a href="viewstudents.jsp" class="but" >View Students</a>
                    <!--<a href="viewstudents.jsp" class="but" >Duty Chart</a>-->
                    <a href="faculty.jsp"  class="but" >Logout</a>
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

                    <!--<div id="content_left">-->
                    <div class="news">
                        <%
                            String user = session.getAttribute("user").toString();
                            int i = 1;
                            int j = 1;
                        %>    
                        <%@ page import="java.sql.*"%>
                        <%@ page import="java.util.*" %>
                        <%@ include file="connect.jsp" %>
                        <%       try {
                                //    PreparedStatement pst=connection.prepareStatement("SELECT studentname,rollno, department, roomno FROM ( SELECT *,CASE WHEN department = @prev_dept THEN @row_num := @row_num + 1 ELSE @row_num := 1 END AS dept_row_num, @prev_dept := department AS curr_dept FROM student, (SELECT @row_num := 0, @prev_dept := '') AS vars ORDER BY department, rollno ) subquery where facultyname='"+user+"' ORDER BY dept_row_num, FIELD(curr_dept, 'B.Tech', 'M.Tech', 'CSE');");
                                //    ResultSet rs=pst.executeQuery();  
                                //        PreparedStatement pst = connection.prepareStatement("SELECT studentname, rollno, department, roomno FROM student  LIMIT 30");
                                //ResultSet rs = pst.executeQuery();
                                //  PreparedStatement pst = connection.prepareStatement("SELECT studentID, rollNumber, courseName, semester FROM table_btech UNION ALL (SELECT studentID, rollNumber, courseName, semester FROM table_mtech UNION ALL SELECT studentID, rollNumber, courseName, semester FROM table_mca) ORDER BY studentID LIMIT 12");
                                PreparedStatement pst1 = connection.prepareStatement("SELECT studentID, rollNumber, courseName, semester FROM table_btech limit 12");
                                PreparedStatement pst2 = connection.prepareStatement("SELECT studentID, rollNumber, courseName, semester FROM table_mtech limit 12");
                                PreparedStatement pst3 = connection.prepareStatement("SELECT studentID, rollNumber, courseName, semester FROM table_mca limit 12");
                                ResultSet rs1 = pst1.executeQuery();
                                ResultSet rs2 = pst2.executeQuery();
                                ResultSet rs3 = pst3.executeQuery();

                        %>
                        <br/><center><p><font color="black" size="5"> <br><br>Room & Students Details Welcome <%=user%></font></p></center>
                        <center>
                            <div class="info">
                                <h2>EXAM TIME (10.00 AM to 11.00 AM) & (2.30 PM to 3.30 PM)</h2>
                                <h2>BACHELOR OF TECHNOLOGY & MASTER OF TECHNOLOGY (8th, 6th & 4nd Semesters)</h2>
                                <h2>SEATING ARRANGEMENT OF EVEN SEMESTER INTERNAL EXAM, JUNE-2023</h2>
                                <h2>Room No:S19</h2>
                            </div>
                            <table style="width:100%" border="1" >
                                <style>
                                    h2{
                                        color: black;
                                    }
                                    
                                    th{
                                        color: black;
                                    }
                                    td{
                                        color: black;
                                        s
                                        text-align: center;
                                    }

                                </style>
                                <tr>
                                    <!--<th>Sr No</th>-->
<!--                                        <th>Column1</th>
                                    <th>Column2</th>
                                    <th>Column3</th>
                                    <th>Column4</th>
                                    <th>Column5</th>
                                    <th>Column6</th>-->
                                    <!--<th>Room No</th>-->
                                    <!--<th>Seat No</th>-->
                                        </tr> </td>
                                    <%
                                        ArrayList<String> roll1 = new ArrayList<String>();
//                                        ArrayList<String> roll2 = new ArrayList<String>();
//                                        ArrayList<String> roll3 = new ArrayList<String>();
                                        ArrayList<String> course1 = new ArrayList<String>();
//                                        ArrayList<String> course2 = new ArrayList<String>();
//                                        ArrayList<String> course3 = new ArrayList<String>();
                                        ArrayList<String> sem1 = new ArrayList<String>();
//                                        ArrayList<String> sem2 = new ArrayList<String>();
//                                        ArrayList<String> sem3 = new ArrayList<String>();
                                        while (rs1.next() && rs2.next() && rs3.next()) {
                                            roll1.add(rs1.getString(2));
                                            course1.add(rs1.getString(3));
                                            sem1.add(rs1.getString(4));
                                            roll1.add(rs2.getString(2));
                                            course1.add(rs2.getString(3));
                                            sem1.add(rs2.getString(4));
                                            roll1.add(rs3.getString(2));
                                            course1.add(rs3.getString(3));
                                            sem1.add(rs3.getString(4));
                                        }
                                    %>
                               
<!--                                    <%
//                                        i=0;
                                        while(i<6){
                                        
                                        
                                        %>
                                         <tr>
                                    <td><%=roll1.get(0+i)%><%='\n'%><%=course1.get(0+i)%><%='\n'%><%=sem1.get(0+i)%></td>
                                    <td><%=roll1.get(6+i)%><%='\n'%><%=course1.get(6+i)%><%='\n'%><%=sem1.get(6+i)%></td>
                                    <td><%=roll1.get(12+i)%><%='\n'%><%=course1.get(12+i)%><%='\n'%><%=sem1.get(12+i)%></td>
                                    <td><%=roll1.get(18+i)%><%='\n'%><%=course1.get(18+i)%><%='\n'%><%=sem1.get(18+i)%></td>
                                    <td><%=roll1.get(24+i)%><%='\n'%><%=course1.get(24+i)%><%='\n'%><%=sem1.get(24+i)%></td>
                                    <td><%=roll1.get(30+i)%><%='\n'%><%=course1.get(30+i)%><%='\n'%><%=sem1.get(30+i)%></td>
                                     <%i++;}%>
                                     -->
                                     <% 
i = 0;
int rollSize = roll1.size();
while (i < 6) {
%>
  <tr>
    <td><%= roll1.get(i) %><br><%= course1.get(i) %><br><%= sem1.get(i) %></td>
    <td><%= roll1.get(rollSize - 13 - i) %><br><%= course1.get(rollSize - 13 - i) %><br><%= sem1.get(rollSize - 13 - i) %></td>
    <td><%= roll1.get(i + 6) %><br><%= course1.get(i + 6) %><br><%= sem1.get(i + 6) %></td>
    <td><%= roll1.get(rollSize - 7 - i) %><br><%= course1.get(rollSize - 7 - i) %><br><%= sem1.get(rollSize - 7 - i) %></td>
    <td><%= roll1.get(i + 12) %><br><%= course1.get(i + 12) %><br><%= sem1.get(i + 12) %></td>
    <td><%= roll1.get(rollSize - 1 - i) %><br><%= course1.get(rollSize - 1 - i) %><br><%= sem1.get(rollSize - 1 - i) %></td>
  </tr>
<%
  i++;
}
%>
                                </tr>
                               
                            </table>
                                <style>
                                    table tr td {
                                        text-align: center;
                                        padding: 8px 8px;
                                        /*font-weight: bold;*/
                                    }
                                </style>
                        </center>
                        <%

                            } catch (Exception e) {

                                System.out.println("user not found" + e.getMessage());
                            }

                        %>










                        <div class="clear"></div>
                    </div>

                    <!--</div>-->

                    <div class="clear"></div>
                </div>
                <!--<br/><br/><br/><br/><br/>-->

                <div style="clear: both; height: 12px;"></div>       


                <div>
                    <center>
                        <!--<input type="submit"  onclick="save()"></input>-->
                        <button type="submit" onclick="save()">Print</button>
<p id="output"></p>
                    </center>
                </div>
            </div>
            <script>
                function save() {
                    //        console.log("my message");
                    var outputElement = document.getElementById("output");
//  outputElement.textContent = "Generate";
                    document.querySelector('#header').style.display = 'none';
                    document.querySelector('.scrollable').style.display = 'none';
                    window.print();
                    document.querySelector('#header').style.display = 'block';
                    document.querySelector('.scrollable').style.display = 'block';
                }
            </script>
    </body>
</html>