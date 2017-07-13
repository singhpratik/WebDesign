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
			
			String user = (String) account.get("name");
			
			//////////////////////////////////////////////
			// Display Messages for the user who logged in
			//////////////////////////////////////////////
%>
		<!DOCTYPE html>
		<HTML>
		<HEAD>
		<TITLE>Updating Information for <%=user%></TITLE>
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
		
		<CENTER>
		
			
		
		<div class='container-fluid' >
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
		
<%	
		try
		{
		  Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM userstable WHERE UserName='" + user + "'");
         
         out.println("<FORM NAME='updateForm' METHOD='POST' ACTION='updated.jsp'>");
         out.println("<TABLE class='tableBackground'>");
		 
         
         String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
         String FileLocation;
         int UserID;
         int DOBmonth;
         int DOBday;
         int DOByear;
         int age;
         String Email;
         String Country;
         String State;
         String City;
         String PostalCode;
         String AboutMe1;
         String StudiesEmphasis;
         String RelocateFlag;
         String Headline;
         String Occupation;
         String OccupationDescription;
         String GrewUpIn;
         String ZodiacSign;
         String Languages;
         String RelationshipType;
         String MaritalStatus;
         String HairColor;
         String IncomeLevel;
         String EducationLevel;
         String BodyType;
         String AppearanceImportance;
         String Religion;
         String EyeColor;
         String Ethnicity;
         String PoliticalOrientation;
         String IntelligenceImportance;
         String SmokingHabits;
         String ActivityLevel;
         String Custody;
         String DrinkingHabits;
         String MoreChildrenFlag;
         String AboutMe2;
         String PersonalityTrait;
         String LeisureActivity;
         String PerfectMatchEssay;
         String Cuisine;
         String Music;
         String Reading;
         String PerfectFirstDateEssay;
         String EntertainmentLocation;
         String PhysicalActivity;
         String IdealRelationshipEssay;
         String LearnFromThePastEssay;
         
		out.println("<TR class='backGroundColor'>");
		out.println("<TD class='textColor tableAlignCenter' colspan='2'><h2>Information Update </h2></TD>");
		out.println("</TR>");
         
         while (rs.next())
         {
         	FileLocation = rs.getString("FileLocation");
            UserID = Integer.parseInt( rs.getString("UserID") );
            DOBmonth = Integer.parseInt( rs.getString("DOBmonth") );
            DOBday = Integer.parseInt( rs.getString("DOBday") );
            DOByear = Integer.parseInt( rs.getString("DOByear") );
            age = Integer.parseInt( rs.getString("age") );
            Email = rs.getString("Email");
            Country = rs.getString("Country");
            State = rs.getString("State");
            City = rs.getString("City");
            PostalCode = rs.getString("PostalCode");
            AboutMe1 = rs.getString("AboutMe1");
            StudiesEmphasis = rs.getString("StudiesEmphasis");
            RelocateFlag = rs.getString("RelocateFlag");
            Headline = rs.getString("Headline");
            Occupation = rs.getString("Occupation");
            OccupationDescription = rs.getString("OccupationDescription");
            GrewUpIn = rs.getString("GrewUpIn");
            ZodiacSign = rs.getString("ZodiacSign");
            Languages = rs.getString("Languages");
            RelationshipType = rs.getString("RelationshipType");
            MaritalStatus = rs.getString("MaritalStatus");
            HairColor = rs.getString("HairColor");
            IncomeLevel = rs.getString("IncomeLevel");
            EducationLevel = rs.getString("EducationLevel");
            BodyType = rs.getString("BodyType");
            AppearanceImportance = rs.getString("AppearanceImportance");
            Religion = rs.getString("Religion");
            EyeColor = rs.getString("EyeColor");
            Ethnicity = rs.getString("Ethnicity");
            PoliticalOrientation = rs.getString("PoliticalOrientation");
            IntelligenceImportance = rs.getString("IntelligenceImportance");
            SmokingHabits = rs.getString("SmokingHabits");
            ActivityLevel = rs.getString("ActivityLevel");
            Custody = rs.getString("Custody");
            DrinkingHabits = rs.getString("DrinkingHabits");
            MoreChildrenFlag = rs.getString("MoreChildrenFlag");
            AboutMe2 = rs.getString("AboutMe2");
            PersonalityTrait = rs.getString("PersonalityTrait");
            LeisureActivity = rs.getString("LeisureActivity");
            PerfectMatchEssay = rs.getString("PerfectMatchEssay");
            Cuisine = rs.getString("Cuisine");
            Music = rs.getString("Music");
            Reading = rs.getString("Reading");
            PerfectFirstDateEssay = rs.getString("PerfectFirstDateEssay");
            EntertainmentLocation = rs.getString("EntertainmentLocation");
            PhysicalActivity = rs.getString("PhysicalActivity");
            IdealRelationshipEssay = rs.getString("IdealRelationshipEssay");
            LearnFromThePastEssay = rs.getString("LearnFromThePastEssay");
            
            out.println("<TR>");
            out.println("<TD class='tableAlignCenter textColor'><img src='" + FileLocation + "'></TD>");
            out.println("<TD class='tableAlignLeft textColor'>Member ID:" + UserID + "<BR>Member Name: " + user + "</TD>");
			out.println("</TR>");

			/* I think the user does not need to change his/her birthdate - doesnt make sense to me - Yusuf
            out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Date of Birth:</td>");
            
            out.println("<TD ALIGN='left'>");
            out.println("<select name=\"DOBmonth\">");
	            out.println("<option value=\"1\" selected>Jan</option>");
	            out.println("<option value=\"2\">Feb</option>");
	            out.println("<option value=\"3\">Mar</option>");
	            out.println("<option value=\"4\">Apr</option>");
	            out.println("<option value=\"5\">May</option>");
	            out.println("<option value=\"6\">Jun</option>");
	            out.println("<option value=\"7\">Jul</option>");
	            out.println("<option value=\"8\">Aug</option>");
	            out.println("<option value=\"9\">Sep</option>");
	            out.println("<option value=\"10\">Oct</option>");
	            out.println("<option value=\"11\">Nov</option>");
	            out.println("<option value=\"12\">Dec</option>");
            out.println("</select>");

            out.println("<select name=\"DOBday\">");
	            out.println("<option value=\"1\" selected>1</option>");
	            out.println("<option value=\"2\">2</option>");
	            out.println("<option value=\"3\">3</option>");
	            out.println("<option value=\"4\">4</option>");
	            out.println("<option value=\"5\">5</option>");
	            out.println("<option value=\"6\">6</option>");
	            out.println("<option value=\"7\">7</option>");
	            out.println("<option value=\"8\">8</option>");
	            out.println("<option value=\"9\">9</option>");
	            out.println("<option value=\"10\">10</option>");
	            out.println("<option value=\"11\">11</option>");
	            out.println("<option value=\"12\">12</option>");
	            out.println("<option value=\"13\">13</option>");
	            out.println("<option value=\"14\">14</option>");
	            out.println("<option value=\"15\">15</option>");
	            out.println("<option value=\"16\">16</option>");
	            out.println("<option value=\"17\">17</option>");
	            out.println("<option value=\"18\">18</option>");
	            out.println("<option value=\"19\">19</option>");
	            out.println("<option value=\"20\">20</option>");
	            out.println("<option value=\"21\">21</option>");
	            out.println("<option value=\"22\">22</option>");
	            out.println("<option value=\"23\">23</option>");
	            out.println("<option value=\"24\">24</option>");
	            out.println("<option value=\"25\">25</option>");
	            out.println("<option value=\"26\">26</option>");
	            out.println("<option value=\"27\">27</option>");
	            out.println("<option value=\"28\">28</option>");
	            out.println("<option value=\"29\">29</option>");
	            out.println("<option value=\"30\">30</option>");
	            out.println("<option value=\"31\">31</option>");
            out.println("</select>");

            out.println("<select name=\"DOByear\">");
	            out.println("<option value=\"1986\" selected>1986</option>");
	            out.println("<option value=\"1985\">1985</option>");
	            out.println("<option value=\"1984\">1984</option>");
	            out.println("<option value=\"1983\">1983</option>");
	            out.println("<option value=\"1982\">1982</option>");
	            out.println("<option value=\"1981\">1981</option>");
	            out.println("<option value=\"1980\">1980</option>");
	            out.println("<option value=\"1979\">1979</option>");
	            out.println("<option value=\"1978\">1978</option>");
	            out.println("<option value=\"1977\">1977</option>");
	            out.println("<option value=\"1976\">1976</option>");
	            out.println("<option value=\"1975\">1975</option>");
	            out.println("<option value=\"1974\">1974</option>");
	            out.println("<option value=\"1973\">1973</option>");
	            out.println("<option value=\"1972\">1972</option>");
	            out.println("<option value=\"1971\">1971</option>");
	            out.println("<option value=\"1970\">1970</option>");
	            out.println("<option value=\"1969\">1969</option>");
	            out.println("<option value=\"1968\">1968</option>");
	            out.println("<option value=\"1967\">1967</option>");
	            out.println("<option value=\"1966\">1966</option>");
	            out.println("<option value=\"1965\">1965</option>");
	            out.println("<option value=\"1964\">1964</option>");
	            out.println("<option value=\"1963\">1963</option>");
	            out.println("<option value=\"1962\">1962</option>");
	            out.println("<option value=\"1961\">1961</option>");
	            out.println("<option value=\"1960\">1960</option>");
	            out.println("<option value=\"1959\">1959</option>");
	            out.println("<option value=\"1958\">1958</option>");
	            out.println("<option value=\"1957\">1957</option>");
	            out.println("<option value=\"1956\">1956</option>");
	            out.println("<option value=\"1955\">1955</option>");
	            out.println("<option value=\"1954\">1954</option>");
	            out.println("<option value=\"1953\">1953</option>");
	            out.println("<option value=\"1952\">1952</option>");
	            out.println("<option value=\"1951\">1951</option>");
	            out.println("<option value=\"1950\">1950</option>");
	            out.println("<option value=\"1949\">1949</option>");
	            out.println("<option value=\"1948\">1948</option>");
	            out.println("<option value=\"1947\">1947</option>");
	            out.println("<option value=\"1946\">1946</option>");
	            out.println("<option value=\"1945\">1945</option>");
	            out.println("<option value=\"1944\">1944</option>");
	            out.println("<option value=\"1943\">1943</option>");
	            out.println("<option value=\"1942\">1942</option>");
	            out.println("<option value=\"1941\">1941</option>");
	            out.println("<option value=\"1940\">1940</option>");
	            out.println("<option value=\"1939\">1939</option>");
	            out.println("<option value=\"1938\">1938</option>");
	            out.println("<option value=\"1937\">1937</option>");
	            out.println("<option value=\"1936\">1936</option>");
	            out.println("<option value=\"1935\">1935</option>");
	            out.println("<option value=\"1934\">1934</option>");
	            out.println("<option value=\"1933\">1933</option>");
	            out.println("<option value=\"1932\">1932</option>");
	            out.println("<option value=\"1931\">1931</option>");
	            out.println("<option value=\"1930\">1930</option>");
	            out.println("<option value=\"1929\">1929</option>");
	            out.println("<option value=\"1928\">1928</option>");
	            out.println("<option value=\"1927\">1927</option>");
	            out.println("<option value=\"1926\">1926</option>");
	            out.println("<option value=\"1925\">1925</option>");
	            out.println("<option value=\"1924\">1924</option>");
	            out.println("<option value=\"1923\">1923</option>");
	            out.println("<option value=\"1922\">1922</option>");
	            out.println("<option value=\"1921\">1921</option>");
	            out.println("<option value=\"1920\">1920</option>");
	            out.println("<option value=\"1919\">1919</option>");
	            out.println("<option value=\"1918\">1918</option>");
	            out.println("<option value=\"1917\">1917</option>");
	            out.println("<option value=\"1916\">1916</option>");
	            out.println("<option value=\"1915\">1915</option>");
	            out.println("<option value=\"1914\">1914</option>");
	            out.println("<option value=\"1913\">1913</option>");
	            out.println("<option value=\"1912\">1912</option>");
	            out.println("<option value=\"1911\">1911</option>");
	            out.println("<option value=\"1910\">1910</option>");
	            out.println("<option value=\"1909\">1909</option>");
	            out.println("<option value=\"1908\">1908</option>");
	            out.println("<option value=\"1907\">1907</option>");
	            out.println("<option value=\"1906\">1906</option>");
	            out.println("<option value=\"1905\">1905</option>");
	            out.println("<option value=\"1904\">1904</option>");
            out.println("</select>");
            out.println("</TD>");
            out.println("</TR>");
            */
            
            out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Email: </TD>");
            out.println("<TD class='tableAlignLeft'><input type='text' class='form-control' name='Email' value='" + Email + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Country:</TD>");
            out.println("<TD class='tableAlignLeft'><input type='text' class='form-control' name='Country' id='usr' value='" + Country + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>State:</TD>");
            out.println("<TD class='tableAlignLeft'><input type='text' class='form-control' name='State' value='" + State + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>City:</TD>");
            out.println("<TD class='tableAlignLeft'><input type='text' class='form-control' name='City' value='" + City + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Postal Code: </TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='PostalCode' value='" + PostalCode + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>What is the first thing you want people to know about you?</TD>");
            out.println("<TD ALIGN='left'><textarea name='AboutMe1' class='form-control' rows=4 cols=60 maxlength=2000>" + AboutMe1 + "</textarea></TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>Picture URL: </b></TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='FileLocation' value='" + FileLocation + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Studies Emphasis:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='StudiesEmphasis' value='" + StudiesEmphasis + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Willing to RelocateFlag for the right person:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='RelocateFlag' value='" + RelocateFlag + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Headline:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Headline' value='" + Headline + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Occupation: </TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Occupation' value='" + Occupation + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Occupation Description:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='OccupationDescription' value='" + OccupationDescription + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>Grew up in: </b></TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='GrewUpIn' value='" + GrewUpIn + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Zodiac Sign:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='ZodiacSign' value='" + ZodiacSign + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>Languages I speak: </b></TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Languages' value='" + Languages + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Type of RelationshipType seeking:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='RelationshipType' value='" + RelationshipType + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Marital status:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='MaritalStatus' value='" + MaritalStatus + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Hair Color:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='HairColor' value='" + HairColor + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Income Level:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='IncomeLevel' value='" + IncomeLevel + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Education Level:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='EducationLevel' value='" + EducationLevel + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Body Type:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='BodyType' value='" + BodyType + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Rate appearance:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='AppearanceImportance' value='" + AppearanceImportance + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Religion: </TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Religion' value='" + Religion + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Eye Color:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='EyeColor' value='" + EyeColor + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>Ethnicity: </b></TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Ethnicity' value='" + Ethnicity + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Political Orientation:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='PoliticalOrientation' value='" + PoliticalOrientation + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Rate Intelligence:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='IntelligenceImportance' value='" + IntelligenceImportance + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Smoking Habits:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='SmokingHabits' value='" + SmokingHabits + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Activity Level:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='ActivityLevel' value='" + ActivityLevel + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Custody:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Custody' value='" + Custody + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Drinking Habits:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='DrinkingHabits' value='" + DrinkingHabits + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>Want more children:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='MoreChildrenFlag' value='" + MoreChildrenFlag + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>About Me:</TD>");
            out.println("<TD ALIGN='left'><textarea name='AboutMe2' class='form-control' rows=4  maxlength=2000>" + AboutMe2 + "</textarea></TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My personality traits:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='PersonalityTrait' value='" + PersonalityTrait + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My favorite activities:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='LeisureActivity' value='" + LeisureActivity + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>About the one I'am looking for: </b></TD>");
            out.println("<TD ALIGN='left'><textarea name='PerfectMatchEssay' class='form-control' rows=4  maxlength=2000>" + PerfectMatchEssay + "</textarea></TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'><b>My favorite cuisine: </b></TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Cuisine' value='" + Cuisine + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My favorite music:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Music' value='" + Music + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>I like to read:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='Reading' value='" + Reading + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My idea of the perfect first date:</TD>");
            out.println("<TD ALIGN='left'><textarea name='PerfectFirstDateEssay' class='form-control' rows=4  maxlength=2000>" + PerfectFirstDateEssay + "</textarea></TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>I like going out to:</TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='EntertainmentLocation' value='" + EntertainmentLocation + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My favorite physical activities: </TD>");
            out.println("<TD ALIGN='left'><input type='text' class='form-control' name='PhysicalActivity' value='" + PhysicalActivity + "'</TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>My perception of an ideal relationship:</TD>");
            out.println("<TD ALIGN='left'><textarea name='IdealRelationshipEssay' class='form-control' rows=4  maxlength=2000>" + IdealRelationshipEssay + "</textarea></TD>");
			out.println("</TR>");
			
			out.println("<TR>");
            out.println("<TD class='tableAlignRight textColor'>What I've learned from my past relationships:</TD>");
            out.println("<TD ALIGN='left'><textarea name='LearnFromThePastEssay' class='form-control' rows=4  maxlength=2000>" + LearnFromThePastEssay + "</textarea></TD>");
			out.println("</TR>");
         }
         
         out.println("<TR>");
		 out.println("<TD ALIGN='center' colspan='2'><input class='btn buttonClass1' type='submit' name='updateButton' value='Update My Information'></TD>");
		 out.println("</TR>");
		
         out.println("</TABLE>");
         out.println("</FORM>");
      }
      catch (Exception e) {
         out.println("Could not connect to the users database.<P>");
         out.println("The error message was");
         out.println("<PRE>");
         out.println(e.getMessage());
         out.println("</PRE>");
      }
	  out.println("</div>");
	  out.println("<div class='col-md-3'>");
	  out.println("</div>");
		out.println("</div>");
		out.println("</div>");
	  out.println("</CENTER>");
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
			return;
		}
%>