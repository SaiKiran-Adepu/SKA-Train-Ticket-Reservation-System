<html>
<head>
<title>PNR TRAIN BOOKING DETAILS</title>
</head>
<!--<body onkeydown="return(event.keyCode == 154)">-->
<body>
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

 
 
<%!

    Connection con;
    PreparedStatement ps1,ps2;
    public void jspInit()
    {
        try
        { 
			Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/train","root","tiger");
            //ps1 = con.prepareStatement("insert into train_reservation(Train_Number,Train_Name,Frm,To1,Classc,Ticket_Type,Passenger_Names,Passengers_age,Adult,Child,Couch,Berth,Base_Fare,Class_Fare,Quota_Fare,Fare,Km,Booked_on,Booked_For,Booked_By,Tad)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			//ps1 = con.prepareStatement("insert into train_reservation(Train_Name,Frm,To1,Classc,Ticket_Type,Passenger_Names,Passengers_age,Adult,Child,Couch,Berth,Base_Fare,Class_Fare,Quota_Fare,Fare,Km,Booked_on,Booked_For,Booked_By)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
            ps2 = con.prepareStatement("select PNR,Train_Number,Train_Name,Frm,To1,Classc,couch,Seat_Number,Berth,Booked_For from train_reservation where PNR=? ORDER BY PNR");
                        
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
        
        /*int tno11=Integer.parseInt(request.getParameter("tn"));
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
         String adm1 = request.getParameter("adm1");
         
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
        ps1.setString(21,adm1);
                 
         int cnt = ps1.executeUpdate();

		  if(cnt>0)
		  {           */

      
       int pnr=Integer.parseInt(request.getParameter("pnr"));
           
         
           ps2.setInt(1,pnr);
           //ps2.setString(2,usr1);
            
            ResultSet rs2 = ps2.executeQuery();
                  while(rs2.next())
             {
            //out.println("<td>"+rs2.getInt(1)+"</td>");
            //int pnr=rs2.getInt(1);//For PNR NUMBER
            //int trn=rs2.getInt(2);
            //String tname=rs2.getString(3);
            //rs2.getString(2)
   out.println("<center><font color=blue><h3>PNR DETAILS</h3></font></center>");
        out.println("<center>");
        out.println("<from>");
        out.println("<fieldset style=width:80%;>");
        out.println("<center><h3><font color=orange>HAPPY JOURNEY</font></h3></center>");
        //out.println("<center><h3><font color=Blue>&nbspElectric Reservation Slip(ERS)</font></h3></center>");
        //out.println("<img src=images/train11.jpg alt=Sunflower style=float: left; margin-right:5px;>");
		out.println("<table bgcolor=EDF2F4");
		out.println("<tr>");
        out.println("<td>&nbsp&nbsp&nbsp<img src=images/train11.jpg width=220 height=180 style=float: left; margin-right:5px;></td>");
        out.println("<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<h2><font color=Blue>&nbspPNR DETAILS</font></h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>");
        //out.println("<td><img src=images/train11.jpg margin-right:5px;></td>");
        out.println("<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src=images/qr.jpg width=220 height=180 style=float: right; margin-right:5px;></td>");
                out.println("</tr>");
        out.println("<tr>");
        out.println("<td>PNR NUMBER:&nbsp"+rs2.getInt(1)+"</td>");
        out.println("<td>TRAIN NUMBER:&nbsp"+rs2.getInt(2)+"&nbsp&nbsp&nbsp&nbsp</td>");
        out.println("<td>TRAIN NAME:&nbsp"+rs2.getString(3)+"</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Booked FROM:&nbsp"+rs2.getString(4)+"</td>");
        out.println("<td>TO:&nbsp"+rs2.getString(5)+"</td>");
        out.println("<td>CLASS:&nbsp"+rs2.getString(6)+"</td>");
        out.println("</tr>");
        
        out.println("<tr>");
      
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>COUCH:&nbsp"+rs2.getString(7)+"</td>");
        out.println("<td>Seat/Berth Number:&nbsp"+rs2.getInt(8)+"</td>");
        out.println("<td>Berth:&nbsp"+rs2.getString(9)+"&nbsp&nbsp&nbsp</td>");//direct by selected not by database table order
        
        out.println("</tr>");
    
        out.println("<td>Booking Status:CNF&nbsp/"+rs2.getString(7)+"/"+rs2.getInt(8)+"/"+rs2.getString(9)+"&nbsp&nbsp</td>");
       out.println("<td>Current Status:&nbspCNF&nbsp/"+rs2.getString(7)+"/"+rs2.getInt(8)+"/"+rs2.getString(9)+"</td>");
       //out.println("<td></td>");
        out.println("<td>Depature Day:&nbsp"+rs2.getString(10)+"</td>");
        out.println("</tr>");

        out.println("</table>");
        out.println("</br>");
        //out.println("<p><font color=blue>SKA Railwyas Recovers Only 61% of Cost of Travel on an average Ticket & Reservation Tickets</font></p>");
        out.println("<p><font color=red>* If a Person Who/Whoom Travelling In Trains Without a Ticket then its Totally Illegal and Will Fined Upto RS 5000</font></p>");
        out.println("<p><font color=blue>SKAR OR ITS AFFILIATES NEVER ASK FOR YOUR PERSONAL BANK OR SECURITY DETAILS , PLEASE BE AWARE IF ANYONE IS ASKING FOR YOUR ATM PIN CVV NUMBER</font></p>");
       out.println("<p><font color=blue>SKA Railwyas Recovers Only 61% of Cost of Travel on an average Ticket & Reservation Tickets</font></p>");
        out.println("<h2>INSTRUCTIONS</h2>");
        out.println("<li>Never Purchase E-Tickets From Unauthorized Persons or persons using thier ID as Commercial purpose Because of the Ticket Refunded Ammount will Refunded to their Account,All The Users Need To Regester Them Selfs In The Web site For Ticket Booking Purpose Its Free of Cost And Easy To Book At SKAR</li>");
        
              out.println("</fieldset>");
        out.println("<button onclick=window.print()> PRINT</button>");
        out.println("</from>");
		//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		out.println("</center>");

        }

		 

		 
		      
%>



<%!

    public void jspDestroy()
    {
        try
        {
                 //ps1.close();
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