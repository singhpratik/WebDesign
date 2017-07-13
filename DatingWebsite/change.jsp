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
			
			String pswd = "";
			String oldPassword = request.getParameter("oldpass");
			String newPassword1 = request.getParameter("newpass1");
			String newPassword2 = request.getParameter("newpass2");
			
			Connection con = null;
      		Statement stmt = null;
      		ResultSet rs = null;
%>
	<HTML>
    <HEAD>
		<TITLE>Change password for user: <%=userName%></TITLE>
					<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="updateStyleSheet.css">

<link rel="stylesheet" type="text/css" href="loggedin.css">

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
						<a class="navbar-brand link1" href="#">Home</a>
						 
						</div>
						<div>
						  <ul class="nav navbar-nav">
							<li class="active"><a class="link1" href=''>View My Details</a></li>
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
	
	<div class='row'>
   
	<div class='col-md-3'>
	</div>
	<div class='col-md-6'>
    <CENTER>
	
      
<%
      try
      {
%>
		<form name='changePasswordForm' method='post'>
		<p><table class='table table-bordered'>
		<thead class='buttonClass1 tableAlignCenter'>
		<tr >
		   <th colspan='2' class='tableAlignCenter'>Password Change Form</th>
		</tr>

		<TR>
		</thead>
		<TD class='textColor textSize tableAlignRight'>Please Enter your old password: </TD>
		<TD><input type='password' class='form-control' name='oldpass' value='' placeholder='old Password'></TD>
		</TR>
		   
		<TR>
		<TD class='textColor textSize tableAlignRight'>Enter NEW password:</TD>
		<TD><input type='password' class='form-control' name='newpass1' value='' placeholder='new Password'></TD>
		</TR>
		   
		<TR>
		<TD class='textColor textSize tableAlignRight'>Enter NEW password again:</TD>
		<TD><input type='password' class='form-control' name='newpass2' value='' placeholder='new Password'></TD>
		</TR>
		 
    <%
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         
         rs = stmt.executeQuery("SELECT UserPassword FROM userstable WHERE UserName='" + userName + "'");
	%>
	
        <TR>
        <TD COLSPAN='6' class='tableAlignCenter'><input class='btn buttonClass1' type='submit' value='Change Password'></TD>
        </TR>
        </TABLE>
        </FORM>
		 
    <%  
         while (rs.next())
         {
             pswd = rs.getString("UserPassword");
         }
         
         if (oldPassword == null)
			throw new RuntimeException("Old password NOT specified");
			
		if (newPassword1 == null)
			throw new RuntimeException("New password NOT specified");
			
		if (newPassword1 == null)
			throw new RuntimeException("New password MUST be entered twice");

		oldPassword = oldPassword.trim();
			
		if (oldPassword.equals(""))
			throw new RuntimeException("Old password CANNOT be blank");
				
		newPassword1 = newPassword1.trim();
			
		if (newPassword1.equals(""))
			throw new RuntimeException("New Password cannot be blank");
			
		newPassword2 = newPassword2.trim();
			
		if (newPassword2.equals(""))
			throw new RuntimeException("New password MUST be entered twice and cannot be blank");
			
		if (! newPassword1.equals(newPassword2))
			throw new RuntimeException("Passwords entered do NOT match");
         
         if (! pswd.equals(oldPassword))
			throw new RuntimeException("Password incorrect - couldnt login to make changes - try again");
			
		stmt.executeUpdate("UPDATE userstable SET UserPassword='" + newPassword1 + "' WHERE UserName='" + userName + "'");
%>
        <H2><U>Password changed successfully.</U></H2>
        <H2><a href='loggedin.jsp'>Click Here</a> to go back</H2>
        <BR><BR>
<%
      }
      catch (Exception e)
      {
         out.println("<H2><U>Enter fields to update password.</U></H2>");
         out.println("<PRE>");
         out.println(e.getMessage());
         out.println("</PRE>");
      }
      finally
      {
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
%>
			<script language="javascript">
				alert("ERROR: <%=e.getMessage()%>");
			</script>

<%
			return;
		}
%>