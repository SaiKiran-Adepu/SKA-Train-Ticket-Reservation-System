<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
        <title>Train Enquiry</title>
		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var t1 = document.getElementById("train1").value;
		var t2 = document.getElementById("train2").value;
		var doj = document.getElementById("doj").value;
		var tyc = document.getElementById("tyc").value;
		var tyb = document.getElementById("tyt").value;
		if(t1 =='')
		{
			alert("Please Select From");
			return false;
		}
		else if(t2=='')
		{
        	alert("Please select TO");
			return false;
		}
		else if(document.F1.train1.value==document.F1.train2.value)
       {
	     alert("Your Selected Same Stations !"); 
	     document.F1.train1.focus();
	     document.F1.train2.value="";	
	     return false;
		 
	   }
	   else if(doj=='')
		{
        	alert("Please select Date of Journey");
			return false;
		}
		 else if(tyc=='')
		{
        	alert("Please select Type of Ticket");
			return false;
		}
		 else if(tyt=='')
		{
        	alert("Please select Type of Booking");
			return false;
		}
      //window.open("ticketbu.jsp");


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
        <form name=F1 method = "POST" onSubmit="return login(this)" action ="adtrainenqb.jsp">
			<fieldset style="width:36%; background-color:#B3DED4; border-end-start-radius:25;">
           <h3><font>TRAIN ENQUIRY</font></h3>
			<table>
			<tr>
			<td>
			<input list="source" name="SOURCE" id="train1" placeholder="FROM">
			<datalist id="source" name="train1">
			  <option value="SECUNDERABAD">
			 <option value="WARANGAL">
			  <option value="KAZIPET">
			  <option value="UPPULA">
			  <option value="JAMMIKUNTA">
				
			  <option value="PEDDAPALLI">
				<option value="RAMAGUNDAM">
				<option value="MANCHIRIYAL">
				<option value="SIRPUR KAGHAZNAGAR">
				<option value="BHALLARSHA">
				<option value="CHENDRAPUR">
					<option value="NAGAPUR">
				<option value="BHOPAL">
				<option value="VEERANGAM LAXMIBHAI">
				<option value="AGRA">
				<option value="NEW DELHI">
				<option value="DELHI">
				<option value="MAHABUBABAD">
				<option value="VIJAYAWADA">
				<option value="RAJAHMUNDRY">
				<option value="SAMARLAKOTA JUNCTION">
				<option value="KAKINADA">
				<option value="VISAKHAPATNAM">
			</datalist>
			</td>
			<td>

     
      <script type="text/javascript">
    window.onload=function()
    {
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("setTodaysDate")[0].setAttribute('min', today);
    }

      </script> 
         <input name="setTodaysDate" type="date" id="doj">

</td>
			</tr>
			<tr>
			<td>
	<br>
			<input list="dest" name="DEST" id="train2" placeholder="TO">
			<datalist id="dest" name="train2">
				<option value="SECUNDERABAD">
				
					<option value="KAZIPET">
					<option value="UPPULA">
						<option value="WARANGAL">
					<option value="JAMMIKUNTA">
					  
					<option value="PEDDAPALLI">
					  <option value="RAMAGUNDAM">
					  <option value="MANCHIRIYAL">
					  <option value="SIRPUR KAGHAZNAGAR">
					  <option value="BHALLARSHA">
					  <option value="CHENDRAPUR">
						  <option value="NAGPUR">
					  <option value="BHOPAL">
					  <option value="VEERANGAM LAXMIBHAI">
					  <option value="AGRA">
					  <option value="NEW DELHI">
					  <option value="DELHI">
					<option value="KHAMMAM">
					 <option value="MAHABUBABAD">
					  <option value="VIJAYAWADA">
					  <option value="RAJAHMUNDRY">
					  <option value="SAMARLAKOTA JUNCTION">
					  <option value="KAKINADA">
					  <option value="VISAKHAPATNAM">	
			</datalist>
				<td>
				<br>
				 <select name="tycl" id="tyc">
    <option value="AC FIRST CLASS">AC FIRST CLASS (1A)</option>
    <option value="AC 2 Tier(2A)">AC 2 Tier(2A)</option>
    <option value="AC 3 Tier (3A)">AC 3 Tier (3A)</option>
	<option value="CHAIR CAR">CHAIR CAR</option>
    <option value="SLEEPER" id="sl">SLEEPER</option>
	<option value="SECOND SITTING" id="ss">SECOND SITTING</option>
  </select>
</td>
			</td>
			</tr>
			 <tr>
			 <td>
			 <br>
		 <script>
					function showAlert()
		 {
      var ld = document.getElementById("tyt").value;
	  if (ld === "LADIES" || ld === "PHC") 
	  {
        alert("Specially abled passengers need to carry Photo Identity card issued by Government which is to be produced for On-board / Off-board verification during journey.: " + ld);
      }
      
    }
			 </script>
			  <label for="tyt">Type OF Ticket:</label>
  <select name="tyt" id="tyt" onchange="showAlert()">
    <option value="GENERAL">GENERAL</option>
    <option value="LADIES">LADIES</option>
    <option value="TATKAL">TATKAL</option>
	<option value="PREMIUM TATKAL">PREMIUM TATKAL</option>
    <option value="PHC"id="phc">PHC</option>
  </select>
  </td>
  </tr>
  <tr>
  <td>
<textarea id="demo1" name="dob" hidden>
                               </textarea>				      		
							<script>
                                  window.onload1 = function () {
        DisplayCurrentTime();
    };

  
	setInterval(() => {
                                   var date = new Date();
	var current_date = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+ date.getDate();
	var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
	
	var date_time =current_time+" "+current_date;	
	document.getElementById("demo1").innerHTML = date_time;
							    }, 1000);
    							
   	                             </script>
</td>
  </tr>
  </table>
  <br>
					<input type = "submit" value="BOOK" onClick ="login(this.form)">
				<input type="reset" value="RESET" onclick="clearFunc()">
					</fieldset>
        </form>
		     <br>
		           </center>
	</body>
</html>