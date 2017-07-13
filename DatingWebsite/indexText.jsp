<!DOCTYPE html>

<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%!
	String PREFIX = "session.login";
	String ACCOUNT = PREFIX + ".account";
%>

<html>
<head>
<title></title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="indexStylesheet.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>

<body id="main" class='body'>

<form method='POST' action='indexText.jsp'>

		<div class="container-fluid" id="mainDiv">
			<div class="row" >
				<div class='col-md-12' id='innerDiv1'>	
					
						
					<div class="row" id='innerDiv11'>
						<div class='col-md-3' id='innerDiv111'>	
							
										<div class="col-md-12" id="loginContent">
											<a href=""><span class='textColor'>Login</span></a>
											<p>
												<span class='mediumTextColor'>Login in if your are an existing user. Else click on sign up to become the  member</span>
											</p>
										</div>
										</br>
											<div class="form-group col-md-12" id="innerDiv1111">
										  
										  <input type=text name="user" onblur='' class="form-control" id="usr" placeholder="Username">
											<span class="error" id='fieldText'>User name cannot be blank</span>
										</div>
							
										</br>
							
										<div class="form-group col-md-12" id="innerDiv1111">  
										<input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
										<span class="error" id='fieldText1'>Password  cannot be blank</span>
										
										</div>
										
							
										</br>
										</br>
									<div class="col-md-12" id="innerDiv1114">
										 <button type=submit  value='Continue' class="btn  btn-block" id="inputTypeButton"><span class='textColor'>Continue</span></input>
												<!--<input type="button" value="Continue" id="inputTypeButton">-->
									</div>
							
						</div>
						<div class="col-md-6" >			
						</div>
						<div class="col-md-3 signUp" >
							 <a href='register_01.jsp' class='anchor1'>Sign Up</a>	
						</div>
						
					</div>
				</div>
			</div>
			<div class='row' >
				<div col="col-md-12" id="innerDiv2" >
					
				</div>
			</div><!--end of Second main row -->
			<div class='row' >
				<div col="col-md-12" id="innerDiv3" >
					
				</div>
					
			</div><!--end of 3rd main row -->
			<div class='row'>
				<div class='col-md-3 inner4 ' >
					
				</div>
				<div class='col-md-2 inner4' >
					<div class='textColor'>About myDating</div>
					<div class='smallTextColor'>with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
				</div>
				<div class='col-md-2 inner4 ' >
					<div class='textColor'>Twitter Feed</div>
					<div class='smallTextColor'>since the 1500s, when an unknoweMaker including versions of Lorem Ipsum.</div>
				</div>
				<div class='col-md-2 inner4'>
					<div class='textColor'>Contact Us</div>
					<div class='smallTextColor'>since the 1500s, when an unknown printer took a galley of type and scrambled ntly with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
				</div>
				<div class='col-md-3 inner4'>
				</div>
			</div><!--end of last row-->
		</div><!--end odf main div-->
</form>

<script>

$('#usr').blur(function() {

var x= document.getElementById('usr').value;
if(x == null||x =="")
{
var y = document.getElementById('fieldText');
$("#fieldText").removeClass("error").addClass("error_show");
$("#inputTypeButton").prop("disabled","true");
alert("disable true");
}else{

$("#fieldText").removeClass("error_show").addClass("error")
$("#inputTypeButton").removeProp("disabled");
alert("disable false");
}
});

$('#pwd').blur(function() {

var x= document.getElementById('pwd').value;

if(x == null||x =="")
{
var y = document.getElementById('fieldText1');


$("#fieldText1").removeClass("error").addClass("error_show");
$("#inputTypeButton").prop("disabled","true");
}else{
$("#fieldText1").removeClass("error_show").addClass("error");
$("#inputTypeButton").removeProp("disabled");
}
});

$('#inputTypeButton').click(function() {
alert("x");
<%
String userName = request.getParameter("user");
			String userPassword = request.getParameter("password");
			String pswd = "";
			
			
%>


});


$( document ).ready(function(){

if('<%=userName%>'== null)
{}else{
alert("hello");
alert('<%=userName%>');
}
});

</script>

</body>
</html>

