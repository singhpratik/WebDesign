<html>
<head>
	<title>CSE220 Final Project</title>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=windows-1252">
	<script language="JavaScript" src="javascript/matchnet.js"></script>
	<script language="JavaScript" src="javascript/region3.js"></script>
	<script language="JavaScript" src="im/im.js"></script>
	<link rel="stylesheet" type="text/css" href="lib/css/as.css">
	<link rel="stylesheet" type="text/css" href="lib/css/common.css">
</head>
<body marginheight=0 marginwidth=0 topmargin=0 leftmargin=0 text="#000000" bgcolor="#ffffff">
<%
   String userName = request.getParameter( "UserName" );
   String password = request.getParameter( "Password" );
   String dobMonth = request.getParameter( "BirthDate_month" );
   String dobDay = request.getParameter( "BirthDate_day" );
   String dobYear = request.getParameter( "BirthDate_year" );
   String email = request.getParameter( "Email" );
   String gender = request.getParameter( "GenderID" );
   String seekingGender = request.getParameter( "SeekingGenderID" );
   String country = request.getParameter( "CountryRegionID" );
   String state = request.getParameter( "State" );
   String city = request.getParameter( "City" );
   String zip = request.getParameter( "PostalCode" );
   String aboutMe1 = request.getParameter( "AboutMe1" );
   String picturePath = request.getParameter( "TFileID" );
   String height = request.getParameter( "Height" );
   String weight = request.getParameter( "Weight" );
   String study = request.getParameter( "StudiesEmphasis" );
   String relocate = request.getParameter( "RelocateFlag" );
   String headline = request.getParameter( "Headline" );
   String occupation = request.getParameter( "IndustryType" );
   String occupationDescription = request.getParameter( "OccupationDescription" );
   String grewUpIn = request.getParameter( "GrewUpIn" );
   String zodiacSign = request.getParameter( "Zodiac" );
   String languages = request.getParameter( "Languages" );
   String relationType = request.getParameter( "RelationshipType" );
   String maritalStatus = request.getParameter( "MaritalStatus" );
   String hairColor = request.getParameter( "HairColor" );
   String income = request.getParameter( "IncomeLevel" );
   String education = request.getParameter( "EducationLevel" );
   String bodyType = request.getParameter( "BodyType" );
   String appearanceImportance = request.getParameter( "AppearanceImportance" );
   String religion = request.getParameter( "Religion" );
   String eyes = request.getParameter( "EyeColor" );
   String ethnicity = request.getParameter( "Ethnicity" );
   String politics = request.getParameter( "PoliticalOrientation" );
   String intelligenceImportance = request.getParameter( "IntelligenceImportance" );
   String smoking = request.getParameter( "SmokingHabits" );
   String activity = request.getParameter( "ActivityLevel" );
   String hasChildren = request.getParameter( "Custody" );
   String drinking = request.getParameter( "DrinkingHabits" );
   String wantsChildren = request.getParameter( "MoreChildrenFlag" );
   String aboutMe2 = request.getParameter( "AboutMe2" );
   String personalityTrait = request.getParameter( "PersonalityTrait" );
   String leisure = request.getParameter( "LeisureActivity" );
   String aboutMatch = request.getParameter( "PerfectMatchEssay" );

   String[] cuisineTypesArray = request.getParameterValues("Cuisine");
   String cuisineTypes = "";

   for (int i=0; i < cuisineTypesArray.length; i++)
      cuisineTypes += cuisineTypesArray[i] + ", ";

   String[] musicTypesArray = request.getParameterValues("Music");
   String musicTypes = "";

   for (int i=0; i < musicTypesArray.length; i++)
      musicTypes += musicTypesArray[i] + ", ";

   String[] readingArray = request.getParameterValues("Reading");
   String readingWhat = "";

   for (int i=0; i < readingArray.length; i++)
      readingWhat += readingArray[i] + ", ";

   String firstDate = request.getParameter( "PerfectFirstDateEssay" );
%>


<center>

<table cellspacing="0" cellpadding="0" border="0" >
	<tr>
		<td valign="top" width="645">
			<table width="100%" cellspacing="4" cellpadding="0" >
				<tr>
					<td></td>
					<td class="message">
						<table class="message" cellpadding="0" cellspacing="0" >
							<tr>
								<td>
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td>
												<table width="100%" cellpadding="5" cellspacing="0" >
													<tr>
														<td>
															<img src="images/page_message.gif" >
														</td>
														
														<td class="message" >Saved Step 4</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<a name="Activities"></a>
			<table width="640" cellpadding="0" cellspacing="0" >
				<form name="step5form" method="post" action="register_07.jsp" onSubmit="return validateFormstep5form()">
					<tr>
						<td colspan="3"><img src="images/topline.gif" width="369" height="26" border="0">
						</td>
					</tr>
					
					<tr>
						<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">I like going out to:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td nowrap>
										<input type="checkbox" name="EntertainmentLocation" value="Amusement Parks" > Amusement Parks<br>
										<input type="checkbox" name="EntertainmentLocation" value="Antique Stores/Flea Markets/Garage Sales" > Antique Stores/Flea Markets/Garage Sales<br>
										<input type="checkbox" name="EntertainmentLocation" value="Art Galleries" > Art Galleries<br>
										<input type="checkbox" name="EntertainmentLocation" value="In Bars/In Nightclubs" > In Bars/In Nightclubs<br>
										<input type="checkbox" name="EntertainmentLocation" value="Beach" > Beach<br>
										<input type="checkbox" name="EntertainmentLocation" value="Bookstores" > Bookstores<br>
										<input type="checkbox" name="EntertainmentLocation" value="Charity Events" > Charity Events<br>
										<input type="checkbox" name="EntertainmentLocation" value="Circuit Parties" > Circuit Parties<br>
										<input type="checkbox" name="EntertainmentLocation" value="Coffee Houses" > Coffee Houses<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<input type="checkbox" name="EntertainmentLocation" value="Comedy Clubs" > Comedy Clubs<br>
										<input type="checkbox" name="EntertainmentLocation" value="Concerts" > Concerts<br>
										<input type="checkbox" name="EntertainmentLocation" value="Dances - Line, Ballroom, Tango" > Dances - Line, Ballroom, Tango<br>
										<input type="checkbox" name="EntertainmentLocation" value="Karaoke/Sing-along" > Karaoke/Sing-along<br>
										<input type="checkbox" name="EntertainmentLocation" value="Libraries" > Libraries<br>
										<input type="checkbox" name="EntertainmentLocation" value="Live Theater" > Live Theater<br>
										<input type="checkbox" name="EntertainmentLocation" value="Movies" > Movies<br>
										<input type="checkbox" name="EntertainmentLocation" value="Museums" > Museums<br>
										<input type="checkbox" name="EntertainmentLocation" value="Opera" > Opera<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<input type="checkbox" name="EntertainmentLocation" value="Parks" > Parks<br>
										<input type="checkbox" name="EntertainmentLocation" value="Political Events" > Political Events<br>
										<input type="checkbox" name="EntertainmentLocation" value="Raves/Underground Parties" > Raves/Underground Parties<br>
										<input type="checkbox" name="EntertainmentLocation" value="Restaurants" > Restaurants<br>
										<input type="checkbox" name="EntertainmentLocation" value="Shopping Malls" > Shopping Malls<br>
										<input type="checkbox" name="EntertainmentLocation" value="Skate/Bike Parks" > Skate/Bike Parks<br>
										<input type="checkbox" name="EntertainmentLocation" value="Sporting Events" > Sporting Events<br>
										<input type="checkbox" name="EntertainmentLocation" value="Symphony" > Symphony<br>
										<input type="checkbox" name="EntertainmentLocation" value="Volunteer Events" > Volunteer Events<br>
									</td>
									
									<td class="default" nowrap valign="top"></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">My favorite physical activities:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td nowrap>
										<input type="checkbox" name="PhysicalActivity" value="Aerobics" > Aerobics<br>
										<input type="checkbox" name="PhysicalActivity" value="Baseball/Softball" > Baseball/Softball<br>
										<input type="checkbox" name="PhysicalActivity" value="Basketball" > Basketball<br>
										<input type="checkbox" name="PhysicalActivity" value="Biking" > Biking<br>
										<input type="checkbox" name="PhysicalActivity" value="Boating/Sailing/Rafting" > Boating/Sailing/Rafting<br>
										<input type="checkbox" name="PhysicalActivity" value="Working Out/Weightlifting" > Working Out/Weightlifting<br>
										<input type="checkbox" name="PhysicalActivity" value="Bowling" > Bowling<br>
										<input type="checkbox" name="PhysicalActivity" value="Cricket" > Cricket<br>
										<input type="checkbox" name="PhysicalActivity" value="Dancing" > Dancing<br>
										<input type="checkbox" name="PhysicalActivity" value="Football - American" > Football - American<br>
										<input type="checkbox" name="PhysicalActivity" value="Golf" > Golf<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<input type="checkbox" name="PhysicalActivity" value="Hiking/Walking" > Hiking/Walking<br>
										<input type="checkbox" name="PhysicalActivity" value="Hockey" > Hockey<br>
										<input type="checkbox" name="PhysicalActivity" value="Horseback Riding" > Horseback Riding<br>
										<input type="checkbox" name="PhysicalActivity" value="Hunting/Fishing" > Hunting/Fishing<br>
										<input type="checkbox" name="PhysicalActivity" value="Inline Skating/Roller Skating" > Inline Skating/Roller Skating<br>
										<input type="checkbox" name="PhysicalActivity" value="Ice Skating" > Ice Skating<br>
										<input type="checkbox" name="PhysicalActivity" value="Jet/Water Skiing" > Jet/Water Skiing<br>
										<input type="checkbox" name="PhysicalActivity" value="Jogging/Running" > Jogging/Running<br>
										<input type="checkbox" name="PhysicalActivity" value="Martial Arts" > Martial Arts<br>
										<input type="checkbox" name="PhysicalActivity" value="Rock Climbing" > Rock Climbing<br>
										<input type="checkbox" name="PhysicalActivity" value="Rugby" > Rugby<br>
									</td>
									
									<td class="default" nowrap valign="top">
										<input type="checkbox" name="PhysicalActivity" value="Skydiving/Hang Gliding/Flying" > Skydiving/Hang Gliding/Flying<br>
										<input type="checkbox" name="PhysicalActivity" value="Snorkeling/Scuba Diving" > Snorkeling/Scuba Diving<br>
										<input type="checkbox" name="PhysicalActivity" value="Snow Skiing" > Snow Skiing<br>
										<input type="checkbox" name="PhysicalActivity" value="Soccer" > Soccer<br>
										<input type="checkbox" name="PhysicalActivity" value="Surfing/Snowboarding/Skateboarding" > Surfing/Snowboarding/Skateboarding<br>
										<input type="checkbox" name="PhysicalActivity" value="Swimming/Diving/Water Polo" > Swimming/Diving/Water Polo<br>
										<input type="checkbox" name="PhysicalActivity" value="Tennis/Racquet Sports" > Tennis/Racquet Sports<br>
										<input type="checkbox" name="PhysicalActivity" value="Volleyball" > Volleyball<br>
										<input type="checkbox" name="PhysicalActivity" value="Yoga/Meditation" > Yoga/Meditation<br>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">My perception of an ideal relationship...</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td><textarea name="IdealRelationshipEssay" rows=4 cols=60 maxlength=2000></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">What I've learned from my past relationships...</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td><textarea name="LearnFromThePastEssay" rows=4 cols=60 maxlength=2000></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3>
							<input type="hidden" name="a" value="7540" >
							<input type="hidden" name="EditFlag" value="1" >
						</td>
					</tr>
					
					<tr>
						<td colspan=3></td>
					</tr>
					
					<tr>
						<td align=left colspan=3>
							<input type="submit" name="Go" value="Save">
						</td>
					</tr>

   <input type="hidden" name="UserName" value="<%= userName %>" >
   <input type="hidden" name="Password" value="<%= password %>" >
   <input type="hidden" name="BirthDate_month" value="<%= dobMonth %>" >
   <input type="hidden" name="BirthDate_day" value="<%= dobDay %>" >
   <input type="hidden" name="BirthDate_year" value="<%= dobYear %>" >
   <input type="hidden" name="Email" value="<%= email %>" >
   <input type="hidden" name="GenderID" value="<%= gender %>" >
   <input type="hidden" name="SeekingGenderID" value="<%= seekingGender %>" >
   <input type="hidden" name="CountryRegionID" value="<%= country %>" >
   <input type="hidden" name="State" value="<%= state %>" >
   <input type="hidden" name="City" value="<%= city %>" >
   <input type="hidden" name="PostalCode" value="<%= zip %>" >
   <input type="hidden" name="AboutMe1" value="<%= aboutMe1 %>" >
   <input type="hidden" name="TFileID" value="<%= picturePath %>" >
   <input type="hidden" name="Height" value="<%= height %>" >
   <input type="hidden" name="Weight" value="<%= weight %>" >
   <input type="hidden" name="StudiesEmphasis" value="<%= study %>" >
   <input type="hidden" name="RelocateFlag" value="<%= relocate %>" >
   <input type="hidden" name="Headline" value="<%= headline %>" >
   <input type="hidden" name="IndustryType" value="<%= occupation %>" >
   <input type="hidden" name="OccupationDescription" value="<%= occupationDescription %>" >
   <input type="hidden" name="GrewUpIn" value="<%= grewUpIn %>" >
   <input type="hidden" name="Zodiac" value="<%= zodiacSign %>" >
   <input type="hidden" name="Languages" value="<%= languages %>" >
   <input type="hidden" name="RelationshipType" value="<%= relationType %>" >
   <input type="hidden" name="MaritalStatus" value="<%= maritalStatus %>" >
   <input type="hidden" name="HairColor" value="<%= hairColor %>" >
   <input type="hidden" name="IncomeLevel" value="<%= income %>" >
   <input type="hidden" name="EducationLevel" value="<%= education %>" >
   <input type="hidden" name="BodyType" value="<%= bodyType %>" >
   <input type="hidden" name="AppearanceImportance" value="<%= appearanceImportance %>" >
   <input type="hidden" name="Religion" value="<%= religion %>" >
   <input type="hidden" name="EyeColor" value="<%= eyes %>" >
   <input type="hidden" name="Ethnicity" value="<%= ethnicity %>" >
   <input type="hidden" name="PoliticalOrientation" value="<%= politics %>" >
   <input type="hidden" name="IntelligenceImportance" value="<%= intelligenceImportance %>" >
   <input type="hidden" name="SmokingHabits" value="<%= smoking %>" >
   <input type="hidden" name="ActivityLevel" value="<%= activity %>" >
   <input type="hidden" name="Custody" value="<%= hasChildren %>" >
   <input type="hidden" name="DrinkingHabits" value="<%= drinking %>" >
   <input type="hidden" name="MoreChildrenFlag" value="<%= wantsChildren %>" >
   <input type="hidden" name="AboutMe2" value="<%= aboutMe2 %>" >
   <input type="hidden" name="PersonalityTrait" value="<%= personalityTrait %>" >
   <input type="hidden" name="LeisureActivity" value="<%= leisure %>" >
   <input type="hidden" name="PerfectMatchEssay" value="<%= aboutMatch %>" >
   <input type="hidden" name="Cuisine" value="<%= cuisineTypes %>" >
   <input type="hidden" name="Music" value="<%= musicTypes %>" >
   <input type="hidden" name="Reading" value="<%= readingWhat %>" >
   <input type="hidden" name="PerfectFirstDateEssay" value="<%= firstDate %>" >
   <input type="hidden" name="Cuisine" value="<%= cuisineTypes %>" >
   <input type="hidden" name="Music" value="<%= musicTypes %>" >
   <input type="hidden" name="Reading" value="<%= readingWhat %>" >
   <input type="hidden" name="PerfectFirstDateEssay" value="<%= firstDate %>" >

				</form>
			</table>
		</td>
	</tr>
</table><br>

<script language=JavaScript>
var blnAbortValidation = false;
function validateFormstep4form() {
 if (blnAbortValidation == true) {
  blnAbortValidation = false;
  return true;
 }
	var vstep4formchkCuisine = document.step4form.Cuisine;
	var vstep4formchkMusic = document.step4form.Music;
	var vstep4formchkReading = document.step4form.Reading;
	var vstep4formtxaPerfectFirstDateEssay = document.step4form.PerfectFirstDateEssay;
	if(IsEmpty(vstep4formchkCuisine, 'checkbox')) {
		ModalBox(false,"Your Favorite Cuisines: is required");
		return false;
	}
	if(IsEmpty(vstep4formchkMusic, 'checkbox')) {
		ModalBox(false,"Your Favorite Music: is required");
		return false;
	}
	if(IsEmpty(vstep4formchkReading, 'checkbox')) {
		ModalBox(false,"You like to read: is required");
		return false;
	}
	if(IsEmpty(vstep4formtxaPerfectFirstDateEssay, 'textarea')) {
		ModalBox(false,"My idea of the perfect first date... is required");
		return false;
	}
	if ( InLengthRange(vstep4formtxaPerfectFirstDateEssay.value, 10, 2000) == false) {
		ModalBox(false,"My idea of the perfect first date... must be between 10 and 2000 characters");
		vstep4formtxaPerfectFirstDateEssay.focus();
		return false;
	}
}
</script>



<script language=JavaScript>
var blnAbortValidation = false;
function validateFormstep5form() {
 if (blnAbortValidation == true) {
  blnAbortValidation = false;
  return true;
 }
	var vstep5formchkEntertainmentLocation = document.step5form.EntertainmentLocation;
	var vstep5formchkPhysicalActivity = document.step5form.PhysicalActivity;
	var vstep5formtxaIdealRelationshipEssay = document.step5form.IdealRelationshipEssay;
	var vstep5formtxaLearnFromThePastEssay = document.step5form.LearnFromThePastEssay;
	if(IsEmpty(vstep5formchkEntertainmentLocation, 'checkbox')) {
		ModalBox(false,"I like going out to: is required");
		return false;
	}
	if(IsEmpty(vstep5formchkPhysicalActivity, 'checkbox')) {
		ModalBox(false,"My favorite physical activities: is required");
		return false;
	}
	if(IsEmpty(vstep5formtxaIdealRelationshipEssay, 'textarea')) {
		ModalBox(false,"My perception of an ideal relationship... is required");
		return false;
	}
	if ( InLengthRange(vstep5formtxaIdealRelationshipEssay.value, 10, 2000) == false) {
		ModalBox(false,"My perception of an ideal relationship... must be between 10 and 2000 characters");
		vstep5formtxaIdealRelationshipEssay.focus();
		return false;
	}
	if(IsEmpty(vstep5formtxaLearnFromThePastEssay, 'textarea')) {
		ModalBox(false,"What I've learned from my past relationships... is required");
		return false;
	}
	if ( InLengthRange(vstep5formtxaLearnFromThePastEssay.value, 10, 2000) == false) {
		ModalBox(false,"What I've learned from my past relationships... must be between 10 and 2000 characters");
		vstep5formtxaLearnFromThePastEssay.focus();
		return false;
	}
}
</script>

</center>
</body>
</html>