<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*,java.util.*" %>

  <%
     
     Integer i=(Integer)session.getAttribute("nu"); 
     
	 if(i==null)
	 {
		response.sendRedirect("una1u.jsp");
	 }
	 else
	 {
		int k=i.intValue();
       //out.print("<textarea>"+k);
    //out.println("<textarea rows1 cols=15 name = acid id=acid1>"+k+"</textarea>");
	 }					

 %>

<!doctype html>
<html lang="en">
    <head>
        <title>TRAIN RESERVATION</title>
		<script LANGUAGE="JavaScript">
		
    function login(form)
	{
    
		//var tnum = document.getElementById("tnum").value; no need directly from jsp to textbox
		/*var t1 = document.getElementById("train1").value;
		var t2 = document.getElementById("train2").value;
		var doj = document.getElementById("doj").value;
		
		var tyb = document.getElementById("tyt").value;*/

		var tyc = document.getElementById("tyc").value;
		var pname = document.getElementById("pname").value;
		var page = document.getElementById("page").value;
		var ad = document.getElementById("ad").value;
		var ch = document.getElementById("ch").value;
		var couch = document.getElementById("couch").value;
		var berth = document.getElementById("berth").value;
		var r =confirm("YOUR READY FOR TRAIN RESERVATION");
		/*if(tnum =='')
		{
			alert("Please Enter Train Number.");
			return false;
		}
		else if(t1 =='')
		{
			alert("Please Select From.");
			return false;
		}
		else if(t2=='')
		{
        	alert("Please select TO.");
			return false;
		}
		else if(document.F1.train1.value==document.F1.train2.value)
       {
	     alert("Your Selected Same Stations !."); 
	     document.F1.train1.focus();
	     document.F1.train2.value="";	
	     return false;
		 
	   }
	   else if(doj=='')
		{
        	alert("Please select Date of Journey.");
			return false;
		}
		else if(tyt=='')
		   {
			   alert("Please select Type of Booking Quota.");
			   return false;
		 
		}*/
		  if(tyc=='')
		{
        	alert("Please select Type of Class.");
			return false;
		}
 else if(pname=='')
		{
        	alert("Please Enter Passenger Name.");
			return false;
		}
		 else if(page=='')
		{
        	alert("Please Enter Passenger Age.");
			return false;
		}
			 else if(ad=='')
		{
        	alert("Please Select No of Adults.");
			return false;
		}
			 else if(ch=='')
		{
        	alert("Please Select No of Children.");
			return false;
		}
			 else if(couch=='')
		{
        	alert("Please Select Couch.");
			return false;
		}
			 else if(berth=='')
		{
        	alert("Please Select Berth/Seat.");
			return false;
		}
 if(r==true)
	  {
	  // alert("Fund Transfered to AC");
	  // return true;
	   }
	    
		else
		{ 
		  alert("RESERVATION DECLINIED");
		  return false;
		  
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
	
        <form name=F1 method = "POST" onSubmit="return login(this)" action ="reservationub.jsp">
			<fieldset style="width:54%; height:50%; background-color:	#B0E0E6; border-end-start-radius:25;">
           <h3><font color="blue">TRAIN RESERVATION NEXT STEPS</font></h3>
			<table height="100">
			<tr>
			 <td>
			&nbsp&nbsp&nbspFROM:<input list="source" name="SOURCE" id="train1" readonly>
			</td>
			<td>
			 DEPATURE:<input type="text" name="setTodaysDate" id="doj"readonly>
	         </td>
			<td>
			&nbsp&nbsp&nbspTO:<input list="dest" name="DEST" id="train2" readonly>
			</td>
			</tr>		
        
		    <tr>
			<td>
			<br>
			Train Number: <input type ="number" name ="tnum" id="tnum" readonly>&nbsp
			 </td>
			 <td>
			 <br>
			&nbspTrain Name:<input type ="text" id="trnn" readonly>&nbsp
			 </td>
			 <td>		  
          <br>
         &nbsp&nbsp Quota:<input type="text" name="tyt" id="tyt" readonly>
		  
         </td>
			</tr>
<hr>			
			<tr>
<td>
      <h4><font color="	#4B0082">PERSONAL DETAILS:</font></h4>
	  </tr>
	  <tr>
  <td>NAME:<input type = "text" name = "pname" id="pname" Placeholder="PASSENGER NAMES ,"></td>
  <td>AGE:<input type = "number" name = "page" id="page" Placeholder="PASSENGER AGES ,"></td>
  
<td>

ADULT: <select name="ad" id="ad">
			<//<option value="">SELECT ADULTS</option>
           <//<option value="0">0</option>
		   <option value="1">1</option>
           <option value="2">2</option>
          <option value="3">3</option>
	     <option value="4">4</option>
         <option value="5">5</option>
	      <option value="6">6</option>
		     <option value="3">3</option>
	     <option value="4">4</option>
         <option value="5">5</option>
	      <option value="6">6</option>
		     <option value="7">7</option>
	     <option value="8">8</option>
         <option value="9">9</option>
	      <option value="10">10</option>
  </select>
  
&nbsp&nbsp&nbspCHILD:<select name="ch" id="ch">
			<//<option value="">SELECT CHILD</option>
           <option value="0">0</option>
		   <option value="1">1</option>
           <option value="2">2</option>
          <option value="3">3</option>
	     <option value="4">4</option>
         <option value="5">5</option>
	      <option value="6">6</option>
		     <option value="3">3</option>
	     <option value="4">4</option>
         <option value="5">5</option>
	      <option value="6">6</option>
		     <option value="7">7</option>
	     <option value="8">8</option>
         <option value="9">9</option>
	      <option value="10">10</option>
  </select>
  </td>	 	 








  </tr>
  <tr>
<td>
      <h4><font color="	#9400D3">COUCH SELECTION:</font></h4>
	  </tr>
  <tr>
  
  <td>
			CLASS: <select name="tycl" id="tyc" onchange="updateCouches()">
			<option value="">SELECT CLASS</option>
           <option value="AC FIRST CLASS">AC FIRST CLASS (1A)</option>
           <option value="AC 2 Tier(2A)">AC 2 Tier(2A)</option>
          <option value="AC 3 Tier (3A)">AC 3 Tier (3A)</option>
	     <option value="CHAIR CAR">CHAIR CAR</option>
         <option value="SLEEPER">SLEEPER</option>
	      <option value="SECOND SITTING">SECOND SITTING</option>
  </select>
  


</td>
<td>

COUCH:<select id="couch" name="couch" onchange="updateBerths()">
  <option value="">SELECT A CLASS FIRST</option>
<script>
function updateCouches() {
  var classSelection = document.getElementById("tyc").value;
  var couchSelection = document.getElementById("couch");
  couchSelection.disabled = false;
  couchSelection.innerHTML = ""; // clear the couch selection options
  
  if (classSelection === "AC FIRST CLASS") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
	couchSelection.options.add(new Option("H1", "H1"));
    couchSelection.options.add(new Option("H2", "H2"));
    couchSelection.options.add(new Option("H3", "H3"));
  } else if (classSelection === "AC 2 Tier(2A)") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
    couchSelection.options.add(new Option("A1", "A1"));
    couchSelection.options.add(new Option("A2", "A2"));
    couchSelection.options.add(new Option("A3", "A3"));
  } else if (classSelection === "AC 3 Tier (3A)") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
    couchSelection.options.add(new Option("B1", "B1"));
    couchSelection.options.add(new Option("B2", "B2"));
    couchSelection.options.add(new Option("B3", "B3"));
	couchSelection.options.add(new Option("B4", "B4"));
    couchSelection.options.add(new Option("B5", "B5"));
	couchSelection.options.add(new Option("B6", "B6"));
  }
  else if (classSelection === "CHAIR CAR") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
    couchSelection.options.add(new Option("C1", "C1"));
    couchSelection.options.add(new Option("C2", "C2"));
    couchSelection.options.add(new Option("C3", "C3"));
  } 
   else if (classSelection === "SLEEPER") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
    couchSelection.options.add(new Option("S1", "S1"));
    couchSelection.options.add(new Option("S2", "S2"));
    couchSelection.options.add(new Option("S3", "S3"));
	 couchSelection.options.add(new Option("S4", "S4"));
    couchSelection.options.add(new Option("S5", "S5"));
    couchSelection.options.add(new Option("S6", "S6"));
	couchSelection.options.add(new Option("S7", "S7"));
    couchSelection.options.add(new Option("S8", "S8"));
  } 
   else if (classSelection === "SECOND SITTING") {
	couchSelection.options.add(new Option("SELECT COUCH",""));
    couchSelection.options.add(new Option("D1", "D1"));
    couchSelection.options.add(new Option("D2", "D2"));
    couchSelection.options.add(new Option("D3", "D3"));
  } 
  else {
    couchSelection.disabled = true;
    couchSelection.options.add(new Option("Please select a class first", ""));
  }
  
  // reset the berth selection and disable it
  var berthSelection = document.getElementById("berth");
  berthSelection.disabled = true;
  berthSelection.innerHTML = "";
  berthSelection.options.add(new Option("Please select a couch first", ""));
}

function updateBerths() {
  var couchSelection = document.getElementById("couch").value;
  var berthSelection = document.getElementById("berth");
  berthSelection.disabled = false;
  berthSelection.innerHTML = ""; // clear the berth selection options
  
if (couchSelection === "H1" || couchSelection === "H2" || couchSelection === "H3") {
    berthSelection.options.add(new Option("Lower Berth", "Lower"));
    berthSelection.options.add(new Option("Upper Berth", "Upper"));
  } 
else if (couchSelection === "A1" || couchSelection === "A2" || couchSelection === "A3") {
    berthSelection.options.add(new Option("Lower Berth", "Lower"));
    berthSelection.options.add(new Option("Upper Berth", "Upper"));
	berthSelection.options.add(new Option("Side Lower Berth", " Side Lower"));
	berthSelection.options.add(new Option("Side Upper Berth", " Side Upper"));
  } 
else if (couchSelection === "B1" || couchSelection === "B2" || couchSelection === "B3"
|| couchSelection === "B4"|| couchSelection === "B5"|| couchSelection === "B6") {
    berthSelection.options.add(new Option("Lower Berth", "Lower"));
	berthSelection.options.add(new Option("Middle Berth", "Middle"));
    berthSelection.options.add(new Option("Upper Berth", "Upper"));
	berthSelection.options.add(new Option("Side Lower Berth", " Side Lower"));
	berthSelection.options.add(new Option("Side Upper Berth", " Side Upper"));
  } 

  else if (couchSelection === "S1" || couchSelection === "S2" || couchSelection === "S3" || couchSelection === "S4"
  || couchSelection === "S5"|| couchSelection === "S6" || couchSelection === "S7" || couchSelection === "S8") {
    berthSelection.options.add(new Option("Lower Berth", "Lower"));
    berthSelection.options.add(new Option("Middle Berth", "Middle"));
    berthSelection.options.add(new Option("Upper Berth", "Upper"));
	berthSelection.options.add(new Option("Side Lower Berth", "Side Lower"));
    berthSelection.options.add(new Option("Side Middle Berth", "Side Middle"));
    berthSelection.options.add(new Option("Side Upper Berth", "Side Upper"));
  } 
else if (couchSelection === "C1" || couchSelection === "C2" || couchSelection === "C3") {
    berthSelection.options.add(new Option("Window", "Window"));
    berthSelection.options.add(new Option("Middle", "Middle"));
	berthSelection.options.add(new Option("Alise", "Alisw"));
	berthSelection.options.add(new Option("Side Window", "Side Window"));
	berthSelection.options.add(new Option("Side Alise", "Side Alise"));
  } 
  else if (couchSelection === "D1" || couchSelection === "D2" || couchSelection === "D3") {
    berthSelection.options.add(new Option("Window", "Window"));
    berthSelection.options.add(new Option("Middle", "Middle"));
	berthSelection.options.add(new Option("Alise", "Alisw"));
	//berthSelection.options.add(new Option("Side Window", "Side Window"));
	//berthSelection.options.add(new Option("Side Alise", "Side Alise"));
  }

  else {
    berthSelection.disabled = true;
    berthSelection.options.add(new Option("Please select a sleeper couch", ""));
  }
}
</script>





<br>
<br>
</td>
		<td>
	 
BERTH:<select id="berth" disabled name="berth">
  &NBSP&NBSP<option value="">SELECT A COUCH FIRST</option>
</select>

	
</td>	
</tr>

 		  <tr>
		  


	 </tr>
	 <tr>
	 <td></td>
	 <td>
	 </td>
	 <td>
	    <%
		// for jsp to js to html text fields
			int trn =Integer.parseInt(request.getParameter("trn"));
			// out.println(trn);
			//out.println("<textarea rows1 cols=15 readonly>"+trn+"</textarea>");
			String trnn = request.getParameter("trnn"); 
			String frm = request.getParameter("frm");
			String to = request.getParameter("to");
			String dt = request.getParameter("dt");
			String tt = request.getParameter("tt");

			%>
    <script>
        var trn = <%= trn %>;
        document.getElementById("tnum").value = trn.toString();// for intergers to string for converting.
		var trnn = '<%= trnn %>';
	     document.getElementById("trnn").value = trnn;		
		var frm = '<%= frm %>';
	     document.getElementById("train1").value = frm;
		 var to = '<%= to %>';
	     document.getElementById("train2").value = to;
		 var dt = '<%= dt %>';
	     document.getElementById("doj").value = dt;
		 var tt = '<%= tt %>';
	     document.getElementById("tyt").value = tt;

	
	
	</script>
	 
	 </td>
	 </tr>


  </table>

	  <script type="text/javascript">
    window.onload=function()
    {
     var today = new Date().toISOString().split('T')[0];
     document.getElementsByName("setTodaysDate")[0].setAttribute('min',today);
	 DisplayCurrentTime();
    }
      </script> 
<textarea id="demo1" name="dob" hidden>
                               </textarea>				      		
							<script>
  
	setInterval(() => {
                                   var date = new Date();
	var current_date = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+ date.getDate();
	var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
	
	var date_time =current_time+" "+current_date;	
	document.getElementById("demo1").innerHTML = date_time;
							    }, 1000);
    							
</script>

  <br>
					<input type = "submit" value="CONTINUE" onClick ="login(this.form)">
				 <a href="javascript:history.back()">
				<input type="button" value="BACK"></a>
					</fieldset>
					<h3><font color="orange">While Entering Passenger Names Please Enter In Capital Letters Only And , Between If More than one  Passenger</font></h3> 
        </form>
		     
		           </center>
	</body>
</html>