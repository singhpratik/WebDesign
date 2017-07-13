<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
	String PREFIX = "session.login";
	String ACCOUNT = PREFIX + ".account";
%>
<%
		try
		{
			Object accountObject = session.getValue(ACCOUNT);
			
			// If no account object was put in the session, or
			// if one exists but it is not a hashtable, then
			// redirect the user to the original login page
			
			if (accountObject == null)
				throw new RuntimeException("You need to log in to use this service!");
				
			if (!(accountObject instanceof Hashtable))
				throw new RuntimeException("You need to log in to use this service!");
				
			Hashtable account = (Hashtable) accountObject;
			
			String userName = (String) account.get("name");
%>

	<HTML>
	<HEAD><TITLE>User Messages for <%=userName%></TITLE>
	
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="loggedin.css">
	
	</HEAD>
	<BODY class="bodyClass">
	
	<div class="container-fluid">
	
	<div class="row" >
		<div class="col-md-12" id="mainImage">
			<img src="images1/dating4.jpg" class="image" alt="img"></img>
		</div>
	</div>
	<div class="row">
								<nav class="navbar navbar navbarClass">
					  <div class="container-fluid">
						<div class="navbar-header">
						<a class="navbar-brand link1" href="#">Welcome <%=userName%></a>
						 
						</div>
						<div>
						  <ul class="nav navbar-nav">
							<li class="active "><a class="link1" href='details.jsp?type=2&data=<%=userName%>'>View My Details</a></li>
							<li><a class="link1" href='update.jsp'>Update My Information</a></li>
							<li><a class="link1" href='viewContacts.jsp'>View My Contacts</a></li> 
							<li><a class="link1" href='change.jsp'>Change my password</a></li> 
							
						  </ul>
						  <ul class="nav navbar-nav navbar-right">
							
							<li><a class="link1" href='logout.jsp'><span class="glyphicon glyphicon-log-in"></span> Log ut</a></li>
						  </ul>
						</div>
					  </div>
					</nav>
	</div>
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-6">
<%
      Connection con = null;
      Statement stmt = null;
      ResultSet rs = null;
      try {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM messages WHERE userName='" + userName + "' ORDER BY messageID");
    %>
         
		<form name='deleteMessagesForm' method='post' action='delete.jsp'>
		
		<!--my code-->
		<!--My code-->
		</br></br>
	
		<table  class="table tableBorder">
		
		<thead class="headColor1 tableBorder1">
      <tr>
       <th >Message ID</th>
		<th >From User</th>
		<th >Message</th>
		<th >Date</th>
		<th >Reply to User</th>
		<th >Delete Messages</th>
      </tr>
    </thead>
	<tbody>

	<%
         int nRows = 0;
         while (rs.next()) {
            nRows++;
            String messageID = rs.getString("messageID");
            String fromUser = rs.getString("fromUser");
            String message = rs.getString("message");
            String messageDate = rs.getString("messageDate");
    %>   
	
            <TR>
				<TD class='tableBorder1'><%=messageID%></TD>
				<TD class='tableBorder1'><%=fromUser%></TD>
				<TD class='tableBorder1'><%=message%></TD>
				<TD class='tableBorder1'><%=messageDate%></TD>
				<TD><A href='message.jsp?toUser=<%=fromUser%>'><IMG SRC='images/reply.jpg'></A></TD>
				<TD class='tableBorder1'><input type='checkbox' name='msgList' value='<%=messageID%>'> Delete</TD>
			</TR>
	<%
         }
         
         out.println("<TR>");
         out.println("<TD COLSPAN='6' ALIGN='center' class='tableBorder1'>You have " + nRows + " messages.</TD>");
         out.println("</TR>");
          out.println("</tbody>");
		   out.println("<tfoot>");
         out.println("<TR>");
         out.println("<TD COLSPAN='6' ALIGN='center' class='tableBorder1'><input type='submit' value='Delete Selected Messages'></TD>");
         out.println("</TR>");
		 out.println("<tfoot>");
		
         
         out.println("</TABLE>");
		
         out.println("</FORM>");         
         
         out.println("<BR><BR>");
         
         out.println("<form name='lookupByNumberForm' method='post' action='lookupByNumber.jsp'>");
         out.println("<p><table class='table tableBorder'>");
		 out.println("<thead class='headColor1 tableBorder1'>");
         out.println("<tr>");
         out.println("   <th colspan='2' class='tableBorder1'>Look up by Member Number</th>");
         out.println("</tr>");
		 out.println("</thead>");
		  out.println("<tbody>");
         out.println("<tr>");
         out.println("   <td colspan='2' class='tableBorder1'>Please enter the member number of the person you want to look up.</td>");
         out.println("</tr>");
         out.println("<tr>");
         out.println("   <td ><input type='text' name='LookupMemberID' value='' size='18' maxlength='20'></td>");
         out.println("   <td class='tableBorder1'><input type='submit' name='cmdGo1' value='See Profile'></td>");
         out.println("</tr>");
		  out.println("</tbody>");
         out.println("</table>");
         out.println("</form>");


         out.println("<form name='lookupByNameForm' method='post' action='lookupByName.jsp'>");
         out.println("<p><table class='table tableBorder'>");
		 out.println("<thead class='headColor1 tableBorder1'>");
         out.println("<tr>");
         out.println("   <th colspan='2'>Look up by Username</th>");
         out.println("</tr>");
		 out.println("</thead>");
		 out.println("<tbody>");
         out.println("<tr>");
         out.println("   <td colspan='2' class='tableBorder1'>Please enter the username of the person you want to look up.</td>");
         out.println("</tr>");
         out.println("<tr>");
         out.println("   <td align='right'><input type='text' name='LookupMemberName' value='' size='18' maxlength='20'></td>");
         out.println("   <td class='tableBorder1' align='left'><input type='submit' name='cmdGo2' value='See Profile'></td>");
         out.println("</tr>");
		  out.println("</tbody>");
         out.println("</table>");
         out.println("</form>");


         out.println("<form name='searchUserForm' method='post' action='searchUsers.jsp'>");
         out.println("<p><table class='table tableBorder'>");
		 out.println("<thead class='headColor1'>");
         out.println("<tr>");
         out.println("<th colspan='2' class='tableBorder1'>Quick Search</th>");
         out.println("</tr>");
		 out.println("</thead>");
		 out.println("<tbody>");
         out.println("<tr>");
         out.println("   <td class='tableBorder1'>");
         out.println("      Show Me:");
         out.println("      <select name='SeekingGenderID' value=''>");
         out.println("      <option value='Male'>Male</option>");
         out.println("      <option value='Female' selected>Female</option>");
         out.println("      </select>");
         out.println("   </td>");
         out.println("   <td class='tableBorder1' >");
         out.println("      Seeking a :");
         out.println("      <select name='GenderID' value=''>");
         out.println("      <option value='Male' selected>Male</option>");
         out.println("      <option value='Female'>Female</option>");
         out.println("      </select>");
         out.println("   </td>");
         out.println("</tr>");
         out.println("<tr>");
         out.println("   <td class='tableBorder1' >");
         out.println("      Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='MinAge' value='' size='2' maxlength='2'>");
         out.println("   </td>");
         out.println("   <td class='tableBorder1' >");
         out.println("      to&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='MaxAge' value='' size='2' maxlength='2'>");
         out.println("   </td>");
         out.println("</tr>");
         out.println("<tr>");
         out.println("   <td class='tableBorder1' >");
         out.println("      Search Location:");
         out.println("   </td>");
         out.println("   <td>");
         out.println("      <table>");
         out.println("         <tr>");
         out.println("            <td class='tableBorder1'>Country:</td>");
         out.println("            <td>");
         out.println("<select name='CountryRegionID'>");
         out.println("	<option value='Afghanistan'         >Afghanistan</option>");
         out.println("	<option value='Albania'             >Albania</option>");
         out.println("	<option value='Algeria'             >Algeria</option>");
         out.println("	<option value='Andorra'             >Andorra</option>");
         out.println("	<option value='Angola'              >Angola</option>");
         out.println("	<option value='Anguilla'            >Anguilla</option>");
         out.println("	<option value='Antarctica'          >Antarctica</option>");
         out.println("	<option value='Antigua & Barbuda'   >Antigua & Barbuda</option>");
         out.println("	<option value='Argentina'           >Argentina</option>");
         out.println("	<option value='Armenia'             >Armenia</option>");
         out.println("	<option value='Aruba'               >Aruba</option>");
         out.println("	<option value='Australia'           >Australia</option>");
         out.println("	<option value='Austria'             >Austria</option>");
         out.println("	<option value='Azerbaijan'          >Azerbaijan</option>");
         out.println("	<option value='Bahamas'             >Bahamas</option>");
         out.println("	<option value='Bahrain'             >Bahrain</option>");
         out.println("	<option value='Bangladesh'          >Bangladesh</option>");
         out.println("	<option value='Barbados'            >Barbados</option>");
         out.println("	<option value='Belarus'             >Belarus</option>");
         out.println("	<option value='Belgium'             >Belgium</option>");
         out.println("	<option value='Belize'              >Belize</option>");
         out.println("	<option value='Benin'               >Benin</option>");
         out.println("	<option value='Bermuda'             >Bermuda</option>");
         out.println("	<option value='Bhutan'              >Bhutan</option>");
         out.println("	<option value='Bolivia'             >Bolivia</option>");
         out.println("	<option value='Bosnia-Herzgna'      >Bosnia-Herzgna</option>");
         out.println("	<option value='Botswana'            >Botswana</option>");
         out.println("	<option value='Brazil'              >Brazil</option>");
         out.println("	<option value='Brunei'              >Brunei</option>");
         out.println("	<option value='Bulgaria'            >Bulgaria</option>");
         out.println("	<option value='Burkina Faso'        >Burkina Faso</option>");
         out.println("	<option value='Burundi'             >Burundi</option>");
         out.println("	<option value='Cambodia'            >Cambodia</option>");
         out.println("	<option value='Cameroon'            >Cameroon</option>");
         out.println("	<option value='Canada'              >Canada</option>");
         out.println("	<option value='Cape Verde'          >Cape Verde</option>");
         out.println("	<option value='Cayman Islands'      >Cayman Islands</option>");
         out.println("	<option value='Central African Rep.'>Central African Rep.</option>");
         out.println("	<option value='Chad'                >Chad</option>");
         out.println("	<option value='Chile'               >Chile</option>");
         out.println("	<option value='China'               >China</option>");
         out.println("	<option value='Christmas Island'    >Christmas Island</option>");
         out.println("	<option value='Cocos (Keeling) Is.' >Cocos (Keeling) Is.</option>");
         out.println("	<option value='Colombia'            >Colombia</option>");
         out.println("	<option value='Comoros'             >Comoros</option>");
         out.println("	<option value='Congo'               >Congo</option>");
         out.println("	<option value='Congo (Zaire)'       >Congo (Zaire)</option>");
         out.println("	<option value='Cook Islands'        >Cook Islands</option>");
         out.println("	<option value='Costa Rica'          >Costa Rica</option>");
         out.println("	<option value='Cote DIvoire'        >Cote D'Ivoire</option>");
         out.println("	<option value='Croatia (Hrvatska)'  >Croatia (Hrvatska)</option>");
         out.println("	<option value='Cyprus'              >Cyprus</option>");
         out.println("	<option value='Czech Rep.'          >Czech Rep.</option>");
         out.println("	<option value='Denmark'             >Denmark</option>");
         out.println("	<option value='Djibouti'            >Djibouti</option>");
         out.println("	<option value='Dominica'            >Dominica</option>");
         out.println("	<option value='Dominican Rep.'      >Dominican Rep.</option>");
         out.println("	<option value='East Timor'          >East Timor</option>");
         out.println("	<option value='Ecuador'             >Ecuador</option>");
         out.println("	<option value='Egypt'               >Egypt</option>");
         out.println("	<option value='El Salvador'         >El Salvador</option>");
         out.println("	<option value='Equatorial Guinea'   >Equatorial Guinea</option>");
         out.println("	<option value='Eritrea'             >Eritrea</option>");
	     out.println("  <option value='Estonia'             >Estonia</option>");
         out.println("	<option value='Ethiopia'            >Ethiopia</option>");
         out.println("	<option value='Falkland Is.'        >Falkland Is.</option>");
         out.println("	<option value='Faroe Islands'       >Faroe Islands</option>");
         out.println("	<option value='Fiji Islands'        >Fiji Islands</option>");
         out.println("	<option value='Finland'             >Finland</option>");
         out.println("	<option value='France'              >France</option>");
         out.println("	<option value='French Guiana'       >French Guiana</option>");
         out.println("	<option value='French Polynesia'    >French Polynesia</option>");
         out.println("	<option value='French So. Terr.'    >French So. Terr.</option>");
         out.println("	<option value='Gabon'               >Gabon</option>");
         out.println("	<option value='Gambia'              >Gambia</option>");
         out.println("	<option value='Georgia'             >Georgia</option>");
         out.println("	<option value='Germany'             >Germany</option>");
         out.println("	<option value='Ghana'               >Ghana</option>");
         out.println("	<option value='Gibraltar'           >Gibraltar</option>");
         out.println("	<option value='Greece'              >Greece</option>");
         out.println("	<option value='Greenland'           >Greenland</option>");
         out.println("	<option value='Grenada'             >Grenada</option>");
         out.println("	<option value='Guadeloupe'          >Guadeloupe</option>");
         out.println("	<option value='Guam'                >Guam</option>");
         out.println("	<option value='Guatemala'           >Guatemala</option>");
         out.println("	<option value='Guinea'              >Guinea</option>");
         out.println("	<option value='Guinea-Bissau'       >Guinea-Bissau</option>");
         out.println("	<option value='Guyana'              >Guyana</option>");
         out.println("	<option value='Haiti'               >Haiti</option>");
         out.println("	<option value='Honduras'            >Honduras</option>");
         out.println("	<option value='Hong Kong (China)'   >Hong Kong (China)</option>");
         out.println("	<option value='Hungary'             >Hungary</option>");
         out.println("	<option value='Iceland'             >Iceland</option>");
         out.println("	<option value='India'               >India</option>");
         out.println("	<option value='Indonesia'           >Indonesia</option>");
         out.println("	<option value='Ireland'             >Ireland</option>");
         out.println("	<option value='Israel'              >Israel</option>");
         out.println("	<option value='Italy'               >Italy</option>");
         out.println("	<option value='Jamaica'             >Jamaica</option>");
         out.println("	<option value='Japan'               >Japan</option>");
         out.println("	<option value='Jordan'              >Jordan</option>");
         out.println("	<option value='Kazakhstan'          >Kazakhstan</option>");
         out.println("	<option value='Kenya'               >Kenya</option>");
         out.println("	<option value='Kiribati'            >Kiribati</option>");
         out.println("	<option value='Korea, South'        >Korea, South</option>");
         out.println("	<option value='Kuwait'              >Kuwait</option>");
         out.println("	<option value='Kyrgyzstan'          >Kyrgyzstan</option>");
         out.println("	<option value='Laos'                >Laos</option>");
         out.println("	<option value='Latvia'              >Latvia</option>");
         out.println("	<option value='Lebanon'             >Lebanon</option>");
         out.println("	<option value='Lesotho'             >Lesotho</option>");
         out.println("	<option value='Liechtenstein'       >Liechtenstein</option>");
         out.println("	<option value='Lithuania'           >Lithuania</option>");
         out.println("	<option value='Luxembourg'          >Luxembourg</option>");
         out.println("	<option value='Macau (China)'       >Macau (China)</option>");
         out.println("	<option value='Macedonia'           >Macedonia</option>");
         out.println("	<option value='Madagascar'          >Madagascar</option>");
         out.println("	<option value='Malawi'              >Malawi</option>");
         out.println("	<option value='Malaysia'            >Malaysia</option>");
         out.println("	<option value='Maldives'            >Maldives</option>");
         out.println("	<option value='Mali'                >Mali</option>");
         out.println("	<option value='Malta'               >Malta</option>");
         out.println("	<option value='Martinique'          >Martinique</option>");
         out.println("	<option value='Mauritania'          >Mauritania</option>");
         out.println("	<option value='Mauritius'           >Mauritius</option>");
         out.println("	<option value='Mayotte'             >Mayotte</option>");
         out.println("	<option value='Mexico'              >Mexico</option>");
         out.println("	<option value='Moldova'             >Moldova</option>");
         out.println("	<option value='Monaco'              >Monaco</option>");
         out.println("	<option value='Mongolia'            >Mongolia</option>");
         out.println("	<option value='Montserrat'          >Montserrat</option>");
         out.println("	<option value='Morocco'             >Morocco</option>");
         out.println("	<option value='Mozambique'          >Mozambique</option>");
         out.println("	<option value='Myanmar'             >Myanmar</option>");
         out.println("	<option value='Namibia'             >Namibia</option>");
         out.println("	<option value='Nauru'               >Nauru</option>");
         out.println("	<option value='Nepal'               >Nepal</option>");
         out.println("	<option value='Netherlands'         >Netherlands</option>");
         out.println("	<option value='Netherlands Ant.'    >Netherlands Ant.</option>");
         out.println("	<option value='New Caledonia'       >New Caledonia</option>");
         out.println("	<option value='New Zealand'         >New Zealand</option>");
         out.println("	<option value='Nicaragua'           >Nicaragua</option>");
         out.println("	<option value='Niger'               >Niger</option>");
         out.println("	<option value='Nigeria'             >Nigeria</option>");
         out.println("	<option value='Niue'                >Niue</option>");
         out.println("	<option value='No. Mariana Is.'     >No. Mariana Is.</option>");
         out.println("	<option value='Norfolk Island'      >Norfolk Island</option>");
         out.println("	<option value='Norway'              >Norway</option>");
         out.println("	<option value='Oman'                >Oman</option>");
         out.println("	<option value='Pakistan'            >Pakistan</option>");
         out.println("	<option value='Palau'               >Palau</option>");
         out.println("	<option value='Panama'              >Panama</option>");
         out.println("	<option value='Papua new Guinea'    >Papua new Guinea</option>");
         out.println("	<option value='Paraguay'            >Paraguay</option>");
         out.println("	<option value='Peru'                >Peru</option>");
         out.println("	<option value='Philippines'         >Philippines</option>");
         out.println("	<option value='Pitcairn Is.'        >Pitcairn Is.</option>");
         out.println("	<option value='Poland'              >Poland</option>");
         out.println("	<option value='Portugal'            >Portugal</option>");
         out.println("	<option value='Puerto Rico'         >Puerto Rico</option>");
         out.println("	<option value='Qatar'               >Qatar</option>");
         out.println("	<option value='Reunion'             >Reunion</option>");
         out.println("	<option value='Romania'             >Romania</option>");
         out.println("	<option value='Russia'              >Russia</option>");
         out.println("	<option value='Rwanda'              >Rwanda</option>");
         out.println("	<option value='Saint Helena'        >Saint Helena</option>");
         out.println("	<option value='Saint Kitts & Nevis' >Saint Kitts & Nevis</option>");
         out.println("	<option value='Saint Lucia'         >Saint Lucia</option>");
         out.println("	<option value='Samoa'               >Samoa</option>");
         out.println("	<option value='San Marino'          >San Marino</option>");
         out.println("	<option value='Sandwich Islands'    >Sandwich Islands</option>");
         out.println("	<option value='Sao Tome & Prin.'    >Sao Tome & Prin.</option>");
         out.println("	<option value='Saudi Arabia'        >Saudi Arabia</option>");
         out.println("	<option value='Senegal'             >Senegal</option>");
         out.println("	<option value='Seychelles'          >Seychelles</option>");
         out.println("	<option value='Sierra Leone'        >Sierra Leone</option>");
         out.println("	<option value='Singapore'           >Singapore</option>");
         out.println("	<option value='Slovakia'            >Slovakia</option>");
         out.println("	<option value='Slovenia'            >Slovenia</option>");
         out.println("	<option value='Solomon Islands'     >Solomon Islands</option>");
         out.println("	<option value='Somalia'             >Somalia</option>");
         out.println("	<option value='South Africa'        >South Africa</option>");
         out.println("	<option value='Spain'               >Spain</option>");
         out.println("	<option value='Sri Lanka'           >Sri Lanka</option>");
         out.println("	<option value='St. Pierre & Miqn'   >St. Pierre & Miq'n</option>");
         out.println("	<option value='St. Vincent & Greds.'>St. Vincent & Gred's.</option>");
         out.println("	<option value='Sudan'               >Sudan</option>");
         out.println("	<option value='Suriname'            >Suriname</option>");
         out.println("	<option value='Svalbard & J. Mayn'  >Svalbard & J. May'n</option>");
         out.println("	<option value='Swaziland'           >Swaziland</option>");
         out.println("	<option value='Sweden'              >Sweden</option>");
         out.println("	<option value='Switzerland'         >Switzerland</option>");
         out.println("	<option value='Syria'               >Syria</option>");
         out.println("	<option value='Taiwan'              >Taiwan</option>");
         out.println("	<option value='Tajikistan'          >Tajikistan</option>");
         out.println("	<option value='Tanzania'            >Tanzania</option>");
         out.println("	<option value='Thailand'            >Thailand</option>");
         out.println("	<option value='The Vatican'         >The Vatican</option>");
         out.println("	<option value='Togo'                >Togo</option>");
         out.println("	<option value='Tokelau'             >Tokelau</option>");
         out.println("	<option value='Tonga'               >Tonga</option>");
         out.println("	<option value='Trinidad & Tobago'   >Trinidad & Tobago</option>");
         out.println("	<option value='Tunisia'             >Tunisia</option>");
         out.println("	<option value='Turkey'              >Turkey</option>");
         out.println("	<option value='Turkmenistan'        >Turkmenistan</option>");
         out.println("	<option value='Turks & Caicos Is.'  >Turks & Caicos Is.</option>");
         out.println("	<option value='Tuvalu'              >Tuvalu</option>");
         out.println("	<option value='UAE'                 >UAE</option>");
         out.println("	<option value='Uganda'              >Uganda</option>");
         out.println("	<option value='Ukraine'             >Ukraine</option>");
	     out.println("  <option value='United Kingdom'      >United Kingdom</option>");
         out.println("	<option value='Uruguay'             >Uruguay</option>");
         out.println("	<option value='USA'  selected       >USA</option>");
         out.println("	<option value='Uzbekistan'          >Uzbekistan</option>");
         out.println("	<option value='Vanuatu'             >Vanuatu</option>");
         out.println("	<option value='Venezuela'           >Venezuela</option>");
	     out.println("  <option value='Vietnam'             >Vietnam</option>");
	     out.println("  <option value='Virgin Islands (UK)' >Virgin Islands (UK)</option>");
         out.println("	<option value='Virgin Islands (USA)'>Virgin Islands (USA)</option>");
         out.println("  <option value='Wallis & Futuna Is.' >Wallis & Futuna Is.</option>");
         out.println("	<option value='Western Sahara'      >Western Sahara</option>");
	     out.println("  <option value='Yemen'               >Yemen</option>");
         out.println("  <option value='Yugoslavia'          >Yugoslavia</option>");
         out.println("	<option value='Zambia'              >Zambia</option>");
         out.println("	<option value='Zimbabwe'            >Zimbabwe</option>");
         out.println("</select>");
         out.println("</td>");
         
         
         out.println("         </tr>");
         out.println("         <tr>");
         out.println("            <td class='tableBorder1' >State:");
         out.println("            <td><input type='text' name='stateName' value='' size='18' maxlength='40'>");
         out.println("         </tr>");
         out.println("         <tr>");
         out.println("            <td class='tableBorder1' >City:");
         out.println("            <td><input type='text' name='cityName' value='' size='18' maxlength='40'>");
         out.println("         </tr>");
         out.println("      </table>");
         out.println("   </td>");
         out.println("</tr>");
         out.println("<tr>");
         out.println("   <td colspan='2' align='center'><input type='submit' name='cmdGo3' value='Search'></td>");
         out.println("</tr>");
		 out.println("</tbody>");
         out.println("</table>");
         out.println("</form>");
      }
      catch (Exception e) {
         out.println
         ("Could not connect to the users database.<P>");
         out.println("The error message was");
         out.println("<PRE>");
         out.println(e.getMessage());
         out.println("</PRE>");
      }
      finally {
         if (rs != null) {
            try { rs.close(); }
            catch (SQLException ignore) {}
         }
         if (stmt != null) {
            try { stmt.close(); }
            catch (SQLException ignore) {}
         }
         if (con != null) {
            try { con.close(); }
            catch (SQLException ignore) {}
         }
      }

	  out.println("</CENTER>");
	  out.println("</div>");
	  out.println("<div class='col-md-3'>");
	  out.println("</div>");
	  out.println("</div>");
	  out.println("</div>");
      out.println("</BODY>");
      out.println("</HTML>");
			
	}
		catch (RuntimeException e)
		{
			out.println("<script language=\"javascript\">");
			out.println("alert(\"You need to log in to use this service!\");");
			out.println("</script>");
			
			out.println("<a href='index.html'>Click Here</a> to go to the main page.<br><br>");
			
			out.println("Or Click on the button to exit<FORM><INPUT onClick=\"javascipt:window.close()\" TYPE=\"BUTTON\" VALUE=\"Close Browser\" TITLE=\"Click here to close window\" NAME=\"CloseWindow\" STYLE=\"font-family:Verdana, Arial, Helvetica; font-size:smaller; font-weight:bold\"></FORM>");
			
			log(e.getMessage());
			return;
		}
%>