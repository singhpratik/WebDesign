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
			
			//////////////////////////////////////////////
			// Display Messages for the user who logged in
			//////////////////////////////////////////////
%>
	<HTML>
	<HEAD>
		<TITLE>Contacts for <%=userName%></TITLE>
		<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="loggedin.css">

<link rel="stylesheet" type="text/css" href="viewContactStylesheet.css">

<link rel="stylesheet" type="text/css" href="updateStyleSheet.css">

	</HEAD>
	<BODY class="bodyClass">
	<div class='container-fluid'>
	
	
	
	<div class='row'>
			<div class="col-md-12" id="mainImage">
				<img src="images1/dating4.jpg" class="image" alt="img"></img>
			</div>
		</div>
				<div class="row">
								<nav class="navbar navbar navbarClass">
					  <div class="container-fluid">
						<div class="navbar-header">
						<a class="navbar-brand link1" href="loggedin.jsp">Home Page</a>
						 
						</div>
						<div>
						  <ul class="nav navbar-nav">
							<li class="active"><a class="link1" href='details.jsp?type=2&data=<%=userName%>'>View My Details</a></li>
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
	<H2><em><span class='textColorMain1'>Welcome <%=userName%></span></em></H2>
	<CENTER>
	<div class='row'>
	<div class='col-md-3'>
	</div>
	<div class='col-md-6'>
<%      
      Connection con = null;
      Statement stmt = null;
      ResultSet rs = null;
      try {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM contacts WHERE userName='" + userName + "' ORDER BY contactID");
%>
	<form name='deleteContactsForm' method='post' action='deleteContact.jsp'>
        <TABLE class='table table-bordered'>
		<thead>
		<TR>
			<th class='tableAlignCenter textColor'>Contact ID</th>
			<th class='tableAlignCenter textColor'>Contact Name</th>
			<th class='tableAlignCenter textColor'>Comment</th>
			<th class='tableAlignCenter textColor'>Date</th>
			<th class='tableAlignCenter textColor'>Delete Contacts</th>
		</TR>
		<thead>
<%
         int nRows = 0;
         while (rs.next()) {
            nRows++;
            String messageID = rs.getString("contactID");
            String fromUser = rs.getString("contactName");
            String message = rs.getString("comments");
            String messageDate = rs.getString("dateAdded");
%>     
			<TR>
            <TD><%=messageID%></TD>
            <TD><%=fromUser%></TD>
            <TD><%=message%></TD>
            <TD><%=messageDate%></TD>
            <TD><input type='checkbox' name='msgList' value='<%=messageID%>'> Delete</TD>
            </TR>
	<%
         }
    %>   
        <TR>
        <TD COLSPAN='6' ALIGN='center'><input type='submit' value='Delete Selected Contacts'></TD>
        </TR>
        </TABLE>
        </FORM>
	<%
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
	  out.println("</div>");
	  out.println("<div class='col-md-3'>");
	  out.println("</div>");
	  out.println("</div>");
	  out.println("</CENTER>");
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