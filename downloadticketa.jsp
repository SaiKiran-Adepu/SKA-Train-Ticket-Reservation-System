<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*,java.util.*" %>
  <%
  
       //HttpSession session = request.getSession(true);
        String name1=(String)session.getAttribute("adm");  
		if(name1==null)
		{
			response.sendRedirect("una1a.jsp");
		}
		else //sessions for redirection and direct url accessing
		{
	    //out.println("<textarea rows1 cols=15 >"+name1+"</textarea>"); 				
		 //response.sendRedirect("una1.jsp");// at buttom of form like train added by admin
		}
 %>


<!doctype html>
<html lang="en">
    <head>
        <title>ADMIN DOWNLOAD TICKET</title>

		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var pnr = document.getElementById("pnr").value;
		if(pnr =='')
		{
			alert("PLEAE ENTER PNR NUMBER.");
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
        <form method = "post" onSubmit="return login(this)" action = "downloadticketab.jsp">
            <fieldset style="width:23%; background-color:lightblue">
                <h3><center>ADMIN DOWNLOAD TRAIN TICKET</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>PNR NUMBER<font color="red">*</font>:</td>
                        <td> <input type = "number" name = "pnr" id="pnr" Placeholder="PNR NUMBER"></td>
                    </tr>
				
                   
                    <tr>					
                        <td></td>
                        <td><input type = "submit" value="ENQUIRY" name = "s1" onClick ="login(this.form)">
						<input type="reset" value="RESET" onclick="clearFunc()">
						
						</td>
                    </tr>
                </table>
            </fieldset>
        </form>
		<h3><font color="blue">THE USER CAN DOWNLOAD THE RESERVATION TICKET.</font></h3>
        <br>
		
           </center>
	</body>
</html>