<html>
<head>
<title>TRAIN BOOKING DETAILS</title>
</head>
<body onkeydown="return(event.keyCode == 154)">

<style>
table {

  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {

  border: solid #dddddd;
  text-align: left;
  padding: 10px;
}

tr:nth-child(even) {

  background-color: #dddddd;
}
</style>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.net.URLEncoder"%>

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


<%!

    Connection con;
    PreparedStatement ps1,ps2;
    public void jspInit()
    {
        try
        { 
			Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/train","root","tiger");
            ps1 = con.prepareStatement("insert into train_reservation(Train_Number,Train_Name,Frm,To1,Classc,Ticket_Type,Passenger_Names,Passengers_age,Adult,Child,Couch,Berth,Base_Fare,Class_Fare,Quota_Fare,Fare,Km,Booked_on,Booked_For,Booked_By)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			//ps1 = con.prepareStatement("insert into train_reservation(Train_Name,Frm,To1,Classc,Ticket_Type,Passenger_Names,Passengers_age,Adult,Child,Couch,Berth,Base_Fare,Class_Fare,Quota_Fare,Fare,Km,Booked_on,Booked_For,Booked_By)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
            ps2 = con.prepareStatement("select * from train_reservation where Booked_On=? AND Booked_By=? ORDER BY Booked_On");
                        
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<% 
        //int acid=Integer.parseInt(request.getParameter("acid12"));
        //int tn=Integer.parseInt(request.getParameter("tn"));
        //int tno=Integer.parseInt(request.getParameter("tno"));
        
        int tno11=Integer.parseInt(request.getParameter("tn"));
        String tname = request.getParameter("tname");
        String s = request.getParameter("s");
        String d = request.getParameter("d");
        String tcl = request.getParameter("tcl");
        String tt = request.getParameter("tt");
        String pname = request.getParameter("pname");
        int pge1=Integer.parseInt(request.getParameter("page1"));
      


         int ad=Integer.parseInt(request.getParameter("ad"));
         int ch=Integer.parseInt(request.getParameter("ch"));
        String couch = request.getParameter("couch");
        String berth = request.getParameter("berth");
        int bsf=Integer.parseInt(request.getParameter("bsf"));
        int acc=Integer.parseInt(request.getParameter("acc"));
        int tc=Integer.parseInt(request.getParameter("tc"));
        int fr=Integer.parseInt(request.getParameter("fr"));
        int km=Integer.parseInt(request.getParameter("km"));
         String dob = request.getParameter("dob");
         String doj = request.getParameter("doj");
         String usr = request.getParameter("usr");
         
        ps1.setInt(1,tno11);
        ps1.setString(2,tname);
		ps1.setString(3,s);
        ps1.setString(4,d);
        ps1.setString(5,tcl);
        ps1.setString(6,tt);
        ps1.setString(7,pname);
		ps1.setInt(8,pge1);
        ps1.setInt(9,ad);
        ps1.setInt(10,ch);
        ps1.setString(11,couch);
        ps1.setString(12,berth);
        ps1.setInt(13,bsf);
        ps1.setInt(14,acc);
        ps1.setInt(15,tc);
        ps1.setInt(16,fr);
        ps1.setInt(17,km);
        ps1.setString(18,dob);
        ps1.setString(19,doj);
        ps1.setString(20,usr);
                 
       



         int cnt = ps1.executeUpdate();

		  if(cnt>0)
		  {           
                   //int tn1=Integer.parseInt(request.getParameter("tn"));
           
           String dob1 = request.getParameter("dob");
           String usr1 = request.getParameter("usr");
           ps2.setString(1,dob1);
           ps2.setString(2,usr1);
            ResultSet rs2 = ps2.executeQuery();
                  while(rs2.next())
             {
            //out.println("<td>"+rs2.getInt(1)+"</td>");
            //int pnr=rs2.getInt(1);//For PNR NUMBER
            //int trn=rs2.getInt(2);
            //String tname=rs2.getString(3);
            //rs2.getString(2)

        out.println("<center>");
        out.println("<from>");
        out.println("<fieldset style=width:80%;>");
        out.println("<center><h3><font color=orange>HAPPY JOURNEY</font></h3></center>");
        //out.println("<center><h3><font color=Blue>&nbspElectric Reservation Slip(ERS)</font></h3></center>");
        //out.println("<img src=images/train11.jpg alt=Sunflower style=float: left; margin-right:5px;>");
		out.println("<table bgcolor=EDF2F4");
		out.println("<tr>");
        out.println("<td>&nbsp&nbsp&nbsp<img src=images/train11.jpg width=220 height=180 style=float: left; margin-right:5px;></td>");
        out.println("<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<h3><font color=Blue>&nbspELECTRIC RESERVATION SLIP(ERS) E-TICKET</font></h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>");
        //out.println("<td><img src=images/train11.jpg margin-right:5px;></td>");
        out.println("<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src=images/qr.jpg width=220 height=180 style=float: right; margin-right:5px;></td>");
                out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Booked FROM:&nbsp"+rs2.getString(4)+"</td>");
        out.println("<td>Depature:&nbsp"+rs2.getString(21)+"</td>");
        out.println("<td>TO:&nbsp"+rs2.getString(5)+"</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>PNR NUMBER:&nbsp"+rs2.getInt(1)+"</td>");
        out.println("<td>TRAIN NUMBER:&nbsp"+rs2.getInt(2)+"&nbsp&nbsp&nbsp&nbspTRAIN NAME:&nbsp"+rs2.getString(3)+"</td>");
        out.println("<td>CLASS:&nbsp"+rs2.getString(6)+"</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>QUOTA:&nbsp"+rs2.getString(7)+"</td>");
        out.println("<td>KM:&nbsp"+rs2.getInt(19)+"</td>");
        out.println("<td>BOOKING DATE:&nbsp"+rs2.getString(20)+"</td>");
        out.println("</tr>");
        out.println("<tr>");
        //out.println("<td>PASSENGER DETAILS:&nbsp</td>");
        out.println("<th>Passenger Name:&nbsp</th>");
        out.println("<th>Passenger Age:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>");
       // out.println("Gender:&nbsp</th>"); not inserted to db table gender optinal if we make it mandatory then front end then always selects perticular person with perticular gender
        out.println("<th>Booking Status:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
        out.println("Current Status:&nbsp</th>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>&nbsp"+rs2.getString(8)+"</td>");
        out.println("<td>&nbsp"+rs2.getInt(9)+"</td>");
        out.println("<td>CNF/"+rs2.getString(12)+"/"+rs2.getInt(13)+"/"+rs2.getString(14)+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
        out.println("CNF/"+rs2.getString(12)+"/"+rs2.getInt(13)+"/"+rs2.getString(14)+"</td>");
      
        out.println("</tr>");
        out.println("<tr>");
        out.println("<center><td>&nbsp&nbsp</td></center>");/////
        out.println("<center><td><font color=blue>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPayment Details<font></td></center>");/////
       out.println("<center><td></td></center>");/////
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Base Fare:&nbsp&nbsp"+rs2.getInt(15)+"</td>");
        out.println("<td>Adult:&nbsp&nbsp"+rs2.getInt(10)+"</td>");
        out.println("<td>Child:&nbsp&nbsp"+rs2.getInt(11)+"</td>");
       out.println("</tr>");
         
         out.println("<tr>");
        out.println("<td>Class Charges:&nbsp&nbsp"+rs2.getInt(16)+"</td>");
         out.println("<td>Quota Charges:&nbsp&nbsp"+rs2.getInt(17)+"</td>");
          out.println("<td>Total RS:&nbsp&nbsp"+rs2.getInt(18)+"</td>");
          out.println("</tr>");

        out.println("</table>");
        out.println("</br>");
        //out.println("<p><font color=blue>SKA Railwyas Recovers Only 61% of Cost of Travel on an average Ticket & Reservation Tickets</font></p>");
         out.println("<p>* The printed Departure and Arrival Times are liable to change. Please Check correct departure, arrival from Railway Station Enquiry or Dial 139 or SMS RAIL to 139.</p>");
        out.println("<p>* This ticket is booked on a personal User ID, its sale/purchase is an offence u/s 143 of the Railways Act,2.</p>");
       out.println("<p><font color=red>* Prescribed original ID proof is required while travelling along with SMS/ VRM/ ERS otherwise will be treated as without ticket and penalized as per Railway Rules.</font></p>");
        out.println("<p><font color=red>* If a Person Who/Whoom Travelling In Trains Without a Ticket then its Totally Illegal and Will Fined Upto RS 5000</font></p>");
        out.println("<p><font color=blue>SKAR OR ITS AFFILIATES NEVER ASK FOR YOUR PERSONAL BANK OR SECURITY DETAILS , PLEASE BE AWARE IF ANYONE IS ASKING FOR YOUR ATM PIN CVV NUMBER</font></p>");
       out.println("<p><font color=blue>SKA Railwyas Recovers Only 61% of Cost of Travel on an average Ticket & Reservation Tickets</font></p>");
        out.println("<h2>INSTRUCTIONS</h2>");
        out.println("<ol type=1>");
        out.println("<li>Prescribed Photo Identity Proofs Are Voter Identity card / Passport / Aadhar card / Photo Id Issued By Central/State Govt.</li>");
       out.println("<li>PNRs Having fully Waiting List Status is Droped and Automatically Refunded to User Account at the time of Train Reached to its Destination.(WL) and Passengers Travelling fully Waiting list is treated as Ticketless </li>");
        out.println("<li>In Case of Train is Delayed for 4 Hours Then Refund is Admissible. or In Case of train cancellation on its entire Run Then Toatal RS/Fund Refunded To users Account Automatically.</li>");
          out.println("<li>In case, on a party e-ticket or a family e-ticket issued for travel of more than one passenger, some passengers have confirmed reservation and others are on RAC or waiting list, full refund of fare, less clerkage, shall be admissible for confirmed passengers also subject to the condition that the ticket shall be cancelled online or online TDR shall be filed for all the passengers upto thirty minutes before the scheduled departure of the tram.</li>");
        out.println("<li>Never Purchase E-Tickets From Unauthorized Persons or persons using thier ID as Commercial purpose Because of the Ticket Refunded Ammount will Refunded to their Account,All The Users Need To Regester Them Selfs In The Web site For Ticket Booking Purpose Its Free of Cost And Easy To Book At SKAR</li>");
        
          out.println("<li>While booking this ticket, you have agreed of having read the Health Protocol of Destination State of your travel. You are again advised to clearly read the Health Protocol advisory of destination state before start of your travel and follow them properly.</li>");
          out.println("</ol>");

        //out.println("<p><font color=orange>The Ticket is Valid for 4 hrs Only or Departure of First Train</font></p>");
        out.println("</fieldset>");
        out.println("<button onclick=window.print()> PRINT</button>");
        out.println("</from>");
		//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		out.println("</center>");

        }

		    }

		     else
		   {
			  
			   out.println("<center><font color=blue><h3>TRAIN RESERVATION UN SUCCESSFULL</h3></font></center>");
		       
		   }

		 
		      
%>



<%!

    public void jspDestroy()
    {
        try
        {
                 ps1.close();
				ps2.close();
                 con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>