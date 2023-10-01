<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*,java.util.*" %>
  <%
  
       //HttpSession session = request.getSession(true);
        String name1=(String) session.getAttribute("adm");  
		//String pass1=(String) session2.getAttribute("psm");
		//String t=name1+pass1;  
		 if(name1==null)
		{
			
			response.sendRedirect("una1a.jsp");
		}
		/*else if(pass1==null)
		{
			response.sendRedirect("una1a.jsp");
		}*/
		else //sessions for redirection and direct url accessing
		{
	    out.println("<textarea rows1 cols=15 hidden >"+name1+"</textarea>"); 				
		 //response.sendRedirect("una1.jsp");// at buttom of form like train added by admin
		}
 %>

<!doctype html>
<html lang="en">
    <head>
        <title>FARE CHANGE</title>

		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var frm = document.getElementById("frm").value;
        //var to = document.getElementById("to").value;
		var fare = document.getElementById("frm").value;
		if(frm =='')
		{
			alert("PLEAE ENTER FROM.");
			return false;
		}
		else if(to=='')
		{
        	alert("PLEASE ENTER DESTINATION");
			return false;
		}
        		else if(fare=='')
		{
        	alert("PLEASE ENTER FARE");
			return false;
		}
		else
		{
		  //alert("please fill corect details");
		  //window.location.href =ul;
		 //const myWindow.document.open(+<form method = post action = "http://192.168.43.42:8181/test/Jdbin.jsp"); 
		  //document.writeln("<form method = post action = http://192.168.43.42:8181/uservaljsp/Jdbin.jsp ">
		  
		  
		  
		}
	}
		function clearFunc()
	{
		document.getElementById("email").value="";
		document.getElementById("pwd1").value="";
	}	
	
		</script>
    </head>
    <body>
	<center>
        <form method = "post" onSubmit="return login(this)" action = "changefareb.jsp">
            <fieldset style="width:23%; background-color:lightblue">
                <h3><center>CHANGE TRAIN FARE</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>FROM<font color="red">*</font>:</td>
                        <td> <input type = "text" name = "frm" id="frm" Placeholder="STATIONS"></td>
                    </tr>
                   
                    <tr>
                        <td>FARE<font color="red">* </font>:</td>
                        <td><input type = "number" name = "fare" id="fare"  Placeholder="FARE"></td>
                    </tr>
                    <tr>
                    <% out.println("<textarea rows1 cols=15 name = adm id=adm hidden>"+name1+"</textarea>");%>
					
                        <td></td>
                        <td><input type = "submit" value="CHANGE" name = "s1" onClick ="login(this.form)">
						<input type="reset" value="RESET" onclick="clearFunc()">
						
						</td>
                    </tr>
                </table>
            </fieldset>
        </form>
		<h3>While Changing Fare Please Enter Station Names In Capital Letters & Route That Follows ex AtoB or BtoA.</h3>
        <br>
		
           </center>
	</body>
</html>