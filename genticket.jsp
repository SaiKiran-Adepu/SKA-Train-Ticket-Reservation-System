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
	    out.println("<textarea rows1 cols=15 hidden>"+name1+"</textarea>"); 				
		 //response.sendRedirect("una1.jsp");// at buttom of form like train added by admin
		}
 %>
 <!doctype html>
 <html lang="en">
    <head>
        <title>General TICKET</title>
		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var t1 = document.getElementById("train1").value;
		var t2 = document.getElementById("train2").value;
		var ad = document.getElementById("ad").value;
		//ad=0;
		//var ch = document.getElementById("ch").value;
		
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
	    /*else if(ad=='')
		{
        	ad=0;
			//
			alert("Please select Number of Adults");
			document.getElementById("ad").innerHTML = ad;
			return false;
		}*/
		
		
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
        <form name=F1 method = "POST" onSubmit="return login(this)" action ="genticketb.jsp">
			<fieldset style="width:28%; background-color:#B3DED4; border-end-start-radius:25;">
           <h3><font>GENERAL TICKET</font></h3>
			<table>
			<tr>
			<td>FROM:<font color="red">*</font>&nbsp:</td>
			<td><input list="source" name="SOURCE" id="train1" placeholder="FROM"></td></tr>

			<datalist id="source" name="train1">
			  <option value="SECUNDERABAD">
			 
			  <option value="KAZIPET">
			  <option value="UPPULA">
			  <option value="JAMMIKUNTA">
			  <option value="WARANGAL">
				
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
	
			<tr><td>TO:<font color="red">*</font>&nbsp:</td>
			<td><input list="dest" name="DEST" id="train2" placeholder="TO"></td></tr>
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
		
			  <tr>

  <td>ADULT:<font color="red">*</font>&nbsp:</td><td><input type = "number" name = "ad" id="ad" value=0 Placeholder="NUMBER OF ADULT"></td>
     </tr>

	 <tr>
	 <td>CHILD:<font color="red">*</font>&nbsp:</td><td> <input type = "number" name = "ch" id="ch" value=0 Placeholder="NUMBER OF CHILD"></td>             
      </tr>
	
  <tr>
  <td>
 <textarea id="demo1" name="dcut"readonly  hidden>
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
 
					<input type = "submit" value="CUT" onClick ="login(this.form)">
					<input type="button" value="BACK!" onclick="history.back()">
				<input type="reset" value="RESET" onclick="clearFunc()">
					</fieldset>
        </form>
		     <br>
 </center>
	</body>
</html>