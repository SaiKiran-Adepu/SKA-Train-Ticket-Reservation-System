<%@ page import="java.sql.*" %>

  <%
  
       //HttpSession session = request.getSession(true);
        String name1=(String)session.getAttribute("adm");  
		if(name1==null)
		{
			response.sendRedirect("una1a.jsp");
		}
		else //sessions for redirection and direct url accessing
		{
	    out.println("<textarea rows1 cols=15 hidden>"+name1+"</textarea>"); 				
		 //response.sendRedirect("una1.jsp");// at buttom of form like train added by admin
		}
 %>


<%
    //String mbl = request.getParameter("fare");
    int fare=Integer.parseInt(request.getParameter("fare"));
    String frm = request.getParameter("frm");
    String adm = request.getParameter("adm");
    
    // Connect to MySQL database
    String url = "jdbc:mysql://localhost:3306/train";
    String user = "root";
    String password = "tiger";
    Connection conn = DriverManager.getConnection(url, user, password);
    // Create prepared statement for update query
    //SELECT Train_Number,Train_Name FROM trains WHERE FIND_IN_SET(?,Fstation) AND FIND_IN_SET(?,Fstation) AND FIND_IN_SET(?,CLASS) AND FIND_IN_SET(?,ticket_type)
    String query = "UPDATE train_fare SET fare= ?,TAD=? WHERE Fstation=?";
    PreparedStatement stmt = conn.prepareStatement(query);
    stmt.setInt(1,fare);//first the value which you want to set hold then next usernumber and old password
    stmt.setString(2,adm);
    stmt.setString(3,frm);
    
    // Execute update query and close database connection
    int c=stmt.executeUpdate();
    if(c>0)
    {
        //out.println("updated");
   out.println("<center><h2><font color=green>THE SKA RAILWAYS</font></h2></center>");
			   out.println("<center><font color=blue><h3>TRAIN FARE SUCCESSFULLY UPDATED</h3></font></center>");
		       out.println("<center><img src=images/train14.jpg width=500 height=250></img></center>");
				out.println("<br>");
                 out.println("<center>");
                 out.println("<table border=2px bgcolor=#b0c4de>");
			  out.println("<tr>");
			  out.println("<th>STATION NAMES</th>");
			  out.println("<th>FARE</th>");
        out.println("<th>TRAIN ADMIN</th>");
              //out.println("<th>FARE</th>");
              //out.println("<th>TRAIN ADMIN</th>");
			  out.println("</tr>");
               out.println("<tr>");
			  out.println("<td>"+frm+"</td>");
			  //out.println("<td>"+st+"</td>");
              out.println("<td>"+fare+"</td>");
              out.println("<td>"+adm+"</td>");
              //out.println("<td>"++"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			    out.println("</center>");
        

    }
    else{
        //out.println("no there is a problem");
    out.println("<center><font color=blue><h3>TRAIN FARE UPDATION UN SUCCESSFULL DUE TO STATION NAMES</h3></font></center>");
    
    }
    conn.close();
%>

<html>
<head>
<title>TRAIN FARE UPDATE</title>

</head>
<body onkeydown="return(event.keyCode == 154)">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 40%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</body>
</html>
