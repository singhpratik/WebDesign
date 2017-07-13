<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
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
			String contactName = request.getParameter("hiddenUser");
	%>

	<HTML>
	<HEAD>
	<TITLE>Add to Contact List</TITLE>
	</HEAD>
	<BODY bgcolor="#7C4DFF">

	<h2><font face='Verdana, Arial, Helvetica, sans-serif'>Add Contact Form</font></h2>
	<form name='addContactForm' method='post' action='addContactProcess.jsp'>
	<input type='hidden' name='hiddenUser' value='<%=contactName%>'>

	<table width='610' border='1' bgcolor='#EFEFEF' cellpadding='2' cellspacing='0' bordercolor='#EFEFEF' bordercolorlight='#EFEFEF' bordercolordark='#CCCCCC'>
	<tr nowrap>
	<td align='left' width='29%' height='2' valign='baseline' bgcolor='#EFEFEF'>
	<div align='left'><b><font size='2' face='Verdana, Arial, Helvetica, sans-serif'>Contact to be Added</font></b></div>
	</td>

	<td width='71%' height='2' valign='baseline'>
	<b><%=contactName%></b>
	</td>
	</tr>

	<tr nowrap>
	<td align='left' width='29%' height='82' valign='top' bgcolor='#EFEFEF'>
	<b><font face='Verdana, Arial, Helvetica, sans-serif' size='2'>Comments:&nbsp;</font></b>
	</td>
	<td width='71%' height='82' valign='top' bgcolor='#FFFFFF'>
	<textarea name='message' cols='58' rows='7' wrap='VIRTUAL'></textarea>
	<br><font size='2'>Enter up to 4000 characters. HTML cannot be displayed.</font>
	</td>
	</tr>
	</table>

	<p><input type='submit' value='Add contact'>&nbsp;&nbsp;&nbsp;&nbsp;
	   <input type='reset' value='Clear form'>
	</p>

	</form>
	</BODY>
	</HTML>
	
	<%
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