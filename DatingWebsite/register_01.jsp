<html>
<head>
	<title>CSE220 Final Project</title>
	<script language="JavaScript" src="javascript/matchnet.js"></script>
	<script language="JavaScript" src="javascript/region3.js"></script>
	<script language="JavaScript" src="im/im.js"></script>
	<link rel="stylesheet" type="text/css" href="lib/css/as.css">
	<link rel="stylesheet" type="text/css" href="lib/css/common.css">
	
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="jspStyleSheet.css">
	
</head>

<body class='mainContainer'>
<center>

<form name="frmStep1" method="post" action="register_02.jsp" onSubmit="return validateFormfrmStep1()">

<!--My code-->

<div class='container mainContainer' >
	</br>
	<div class='col-md-2'>
	</div>
	<div class='col-md-8 borderClass'>
	
		<div class='row'>
			<div class='col-md-12 mainDiv1'>
				<span class="headerForm">User Details Form</span>
			</div>
		</div><!--end of row 1-->
		</br>
		<div class='row'>
			<div class='col-md-6'>
				User Name:
			</div>
			<div class='col-md-3'>
							  
					<input type=text name="UserName" class="form-control" id="usr" placeholder="Username">
			
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 1-->
		<div class='row'>
			<div class='col-md-6'>
				Password:
			</div>
			<div class='col-md-3'>
						  
					<input type=password name="Password" class="form-control" id="pwd" placeholder="Password">
				
			</div>
			<div class='col-md-3'>
			(confidential)
			</div>
		</div><!--end of row 2-->
		<div class='row'>
			<div class='col-md-6'>
				Re-nter your Password:
			</div>
			<div class='col-md-3'>
							  
					<input type=text name="Password2" class="form-control" id="pwd" placeholder="password">
				
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 3-->
		<div class='row'>
			<div class='col-md-6'>
				Date of Birth:
			</div>
			<div class='col-md-3'>
							  
					
							<div class='input-group date' id='datetimepicker1'>
								<input type='text' class="form-control" />
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
				
				
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 4-->
		<div class='row'>
			<div class='col-md-6'>
				Email:
			</div>
			<div class='col-md-3'>	  
					<input type=email name="Email" class="form-control" id="usr" placeholder="Email">
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 5-->
		<div class='row'>
			<div class='col-md-6'>
				Gender:
			</div>
			<div class='col-md-3'>
					 <label><input type="radio" name="GenderID" value="Male">Male</label>
					 <label><input type="radio" name="GenderID" value="Female">Female</label>		
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 6-->
		<div class='row'>
			<div class='col-md-6'>
				Lookin for :
			</div>
			
			<div class='col-md-3'>
					 <label><input type="radio" name="SeekingGenderID" value="Male">Male</label>
					 <label><input type="radio" name="SeekingGenderID" value="Female">Female</label>		
			</div>
		
			<div class='col-md-3'>
			</div>
		</div><!--end of row 7-->
		<div class='row'>
			<div class='col-md-6'>
				Country:
			</div>
			<div class='col-md-3'>
				<select class="form-control" name="CountryRegionID" id="sel1">
					<option value="Afghanistan"         >Afghanistan</option>
					<option value="Albania"             >Albania</option>
					<option value="Algeria"             >Algeria</option>
					<option value="Andorra"             >Andorra</option>
					<option value="Angola"              >Angola</option>
					<option value="Anguilla"            >Anguilla</option>
					<option value="Antarctica"          >Antarctica</option>
					<option value="Antigua & Barbuda"   >Antigua & Barbuda</option>
					<option value="Argentina"           >Argentina</option>
					<option value="Armenia"             >Armenia</option>
					<option value="Aruba"               >Aruba</option>
					<option value="Australia"           >Australia</option>
					<option value="Austria"             >Austria</option>
					<option value="Azerbaijan"          >Azerbaijan</option>
					<option value="Bahamas"             >Bahamas</option>
					<option value="Bahrain"             >Bahrain</option>
					<option value="Bangladesh"          >Bangladesh</option>
					<option value="Barbados"            >Barbados</option>
					<option value="Belarus"             >Belarus</option>
					<option value="Belgium"             >Belgium</option>
					<option value="Belize"              >Belize</option>
					<option value="Benin"               >Benin</option>
					<option value="Bermuda"             >Bermuda</option>
					<option value="Bhutan"              >Bhutan</option>
					<option value="Bolivia"             >Bolivia</option>
					<option value="Bosnia-Herzgna"      >Bosnia-Herzgna</option>
					<option value="Botswana"            >Botswana</option>
					<option value="Brazil"              >Brazil</option>
					<option value="Brunei"              >Brunei</option>
					<option value="Bulgaria"            >Bulgaria</option>
					<option value="Burkina Faso"        >Burkina Faso</option>
					<option value="Burundi"             >Burundi</option>
					<option value="Cambodia"            >Cambodia</option>
					<option value="Cameroon"            >Cameroon</option>
					<option value="Canada"              >Canada</option>
					<option value="Cape Verde"          >Cape Verde</option>
					<option value="Cayman Islands"      >Cayman Islands</option>
					<option value="Central African Rep.">Central African Rep.</option>
					<option value="Chad"                >Chad</option>
					<option value="Chile"               >Chile</option>
					<option value="China"               >China</option>
					<option value="Christmas Island"    >Christmas Island</option>
					<option value="Cocos (Keeling) Is." >Cocos (Keeling) Is.</option>
					<option value="Colombia"            >Colombia</option>
					<option value="Comoros"             >Comoros</option>
					<option value="Congo"               >Congo</option>
					<option value="Congo (Zaire)"       >Congo (Zaire)</option>
					<option value="Cook Islands"        >Cook Islands</option>
					<option value="Costa Rica"          >Costa Rica</option>
					<option value="Cote DIvoire"        >Cote D'Ivoire</option>
					<option value="Croatia (Hrvatska)"  >Croatia (Hrvatska)</option>
					<option value="Cyprus"              >Cyprus</option>
					<option value="Czech Rep."          >Czech Rep.</option>
					<option value="Denmark"             >Denmark</option>
					<option value="Djibouti"            >Djibouti</option>
					<option value="Dominica"            >Dominica</option>
					<option value="Dominican Rep."      >Dominican Rep.</option>
					<option value="East Timor"          >East Timor</option>
					<option value="Ecuador"             >Ecuador</option>
					<option value="Egypt"               >Egypt</option>
					<option value="El Salvador"         >El Salvador</option>
					<option value="Equatorial Guinea"   >Equatorial Guinea</option>
					<option value="Eritrea"             >Eritrea</option>
					<option value="Estonia"             >Estonia</option>
					<option value="Ethiopia"            >Ethiopia</option>
					<option value="Falkland Is."        >Falkland Is.</option>
					<option value="Faroe Islands"       >Faroe Islands</option>
					<option value="Fiji Islands"        >Fiji Islands</option>
					<option value="Finland"             >Finland</option>
					<option value="France"              >France</option>
					<option value="French Guiana"       >French Guiana</option>
					<option value="French Polynesia"    >French Polynesia</option>
					<option value="French So. Terr."    >French So. Terr.</option>
					<option value="Gabon"               >Gabon</option>
					<option value="Gambia"              >Gambia</option>
					<option value="Georgia"             >Georgia</option>
					<option value="Germany"             >Germany</option>
					<option value="Ghana"               >Ghana</option>
					<option value="Gibraltar"           >Gibraltar</option>
					<option value="Greece"              >Greece</option>
					<option value="Greenland"           >Greenland</option>
					<option value="Grenada"             >Grenada</option>
					<option value="Guadeloupe"          >Guadeloupe</option>
					<option value="Guam"                >Guam</option>
					<option value="Guatemala"           >Guatemala</option>
					<option value="Guinea"              >Guinea</option>
					<option value="Guinea-Bissau"       >Guinea-Bissau</option>
					<option value="Guyana"              >Guyana</option>
					<option value="Haiti"               >Haiti</option>
					<option value="Honduras"            >Honduras</option>
					<option value="Hong Kong (China)"   >Hong Kong (China)</option>
					<option value="Hungary"             >Hungary</option>
					<option value="Iceland"             >Iceland</option>
					<option value="India"               >India</option>
					<option value="Indonesia"           >Indonesia</option>
					<option value="Ireland"             >Ireland</option>
					<option value="Israel"              >Israel</option>
					<option value="Italy"               >Italy</option>
					<option value="Jamaica"             >Jamaica</option>
					<option value="Japan"               >Japan</option>
					<option value="Jordan"              >Jordan</option>
					<option value="Kazakhstan"          >Kazakhstan</option>
					<option value="Kenya"               >Kenya</option>
					<option value="Kiribati"            >Kiribati</option>
					<option value="Korea, South"        >Korea, South</option>
					<option value="Kuwait"              >Kuwait</option>
					<option value="Kyrgyzstan"          >Kyrgyzstan</option>
					<option value="Laos"                >Laos</option>
					<option value="Latvia"              >Latvia</option>
					<option value="Lebanon"             >Lebanon</option>
					<option value="Lesotho"             >Lesotho</option>
					<option value="Liechtenstein"       >Liechtenstein</option>
					<option value="Lithuania"           >Lithuania</option>
					<option value="Luxembourg"          >Luxembourg</option>
					<option value="Macau (China)"       >Macau (China)</option>
					<option value="Macedonia"           >Macedonia</option>
					<option value="Madagascar"          >Madagascar</option>
					<option value="Malawi"              >Malawi</option>
					<option value="Malaysia"            >Malaysia</option>
					<option value="Maldives"            >Maldives</option>
					<option value="Mali"                >Mali</option>
					<option value="Malta"               >Malta</option>
					<option value="Martinique"          >Martinique</option>
					<option value="Mauritania"          >Mauritania</option>
					<option value="Mauritius"           >Mauritius</option>
					<option value="Mayotte"             >Mayotte</option>
					<option value="Mexico"              >Mexico</option>
					<option value="Moldova"             >Moldova</option>
					<option value="Monaco"              >Monaco</option>
					<option value="Mongolia"            >Mongolia</option>
					<option value="Montserrat"          >Montserrat</option>
					<option value="Morocco"             >Morocco</option>
					<option value="Mozambique"          >Mozambique</option>
					<option value="Myanmar"             >Myanmar</option>
					<option value="Namibia"             >Namibia</option>
					<option value="Nauru"               >Nauru</option>
					<option value="Nepal"               >Nepal</option>
					<option value="Netherlands"         >Netherlands</option>
					<option value="Netherlands Ant."    >Netherlands Ant.</option>
					<option value="New Caledonia"       >New Caledonia</option>
					<option value="New Zealand"         >New Zealand</option>
					<option value="Nicaragua"           >Nicaragua</option>
					<option value="Niger"               >Niger</option>
					<option value="Nigeria"             >Nigeria</option>
					<option value="Niue"                >Niue</option>
					<option value="No. Mariana Is."     >No. Mariana Is.</option>
					<option value="Norfolk Island"      >Norfolk Island</option>
					<option value="Norway"              >Norway</option>
					<option value="Oman"                >Oman</option>
					<option value="Pakistan"            >Pakistan</option>
					<option value="Palau"               >Palau</option>
					<option value="Panama"              >Panama</option>
					<option value="Papua new Guinea"    >Papua new Guinea</option>
					<option value="Paraguay"            >Paraguay</option>
					<option value="Peru"                >Peru</option>
					<option value="Philippines"         >Philippines</option>
					<option value="Pitcairn Is."        >Pitcairn Is.</option>
					<option value="Poland"              >Poland</option>
					<option value="Portugal"            >Portugal</option>
					<option value="Puerto Rico"         >Puerto Rico</option>
					<option value="Qatar"               >Qatar</option>
					<option value="Reunion"             >Reunion</option>
					<option value="Romania"             >Romania</option>
					<option value="Russia"              >Russia</option>
					<option value="Rwanda"              >Rwanda</option>
					<option value="Saint Helena"        >Saint Helena</option>
					<option value="Saint Kitts & Nevis" >Saint Kitts & Nevis</option>
					<option value="Saint Lucia"         >Saint Lucia</option>
					<option value="Samoa"               >Samoa</option>
					<option value="San Marino"          >San Marino</option>
					<option value="Sandwich Islands"    >Sandwich Islands</option>
					<option value="Sao Tome & Prin."    >Sao Tome & Prin.</option>
					<option value="Saudi Arabia"        >Saudi Arabia</option>
					<option value="Senegal"             >Senegal</option>
					<option value="Seychelles"          >Seychelles</option>
					<option value="Sierra Leone"        >Sierra Leone</option>
					<option value="Singapore"           >Singapore</option>
					<option value="Slovakia"            >Slovakia</option>
					<option value="Slovenia"            >Slovenia</option>
					<option value="Solomon Islands"     >Solomon Islands</option>
					<option value="Somalia"             >Somalia</option>
					<option value="South Africa"        >South Africa</option>
					<option value="Spain"               >Spain</option>
					<option value="Sri Lanka"           >Sri Lanka</option>
					<option value="St. Pierre & Miqn"   >St. Pierre & Miq'n</option>
					<option value="St. Vincent & Greds.">St. Vincent & Gred's.</option>
					<option value="Sudan"               >Sudan</option>
					<option value="Suriname"            >Suriname</option>
					<option value="Svalbard & J. Mayn"  >Svalbard & J. May'n</option>
					<option value="Swaziland"           >Swaziland</option>
					<option value="Sweden"              >Sweden</option>
					<option value="Switzerland"         >Switzerland</option>
					<option value="Syria"               >Syria</option>
					<option value="Taiwan"              >Taiwan</option>
					<option value="Tajikistan"          >Tajikistan</option>
					<option value="Tanzania"            >Tanzania</option>
					<option value="Thailand"            >Thailand</option>
					<option value="The Vatican"         >The Vatican</option>
					<option value="Togo"                >Togo</option>
					<option value="Tokelau"             >Tokelau</option>
					<option value="Tonga"               >Tonga</option>
					<option value="Trinidad & Tobago"   >Trinidad & Tobago</option>
					<option value="Tunisia"             >Tunisia</option>
					<option value="Turkey"              >Turkey</option>
					<option value="Turkmenistan"        >Turkmenistan</option>
					<option value="Turks & Caicos Is."  >Turks & Caicos Is.</option>
					<option value="Tuvalu"              >Tuvalu</option>
					<option value="UAE"                 >UAE</option>
					<option value="Uganda"              >Uganda</option>
					<option value="Ukraine"             >Ukraine</option>
					<option value="United Kingdom"      >United Kingdom</option>
					<option value="Uruguay"             >Uruguay</option>
					<option value="USA"  selected       >USA</option>
					<option value="Uzbekistan"          >Uzbekistan</option>
					<option value="Vanuatu"             >Vanuatu</option>
					<option value="Venezuela"           >Venezuela</option>
					<option value="Vietnam"             >Vietnam</option>
					<option value="Virgin Islands (UK)" >Virgin Islands (UK)</option>
					<option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
					<option value="Wallis & Futuna Is." >Wallis & Futuna Is.</option>
					<option value="Western Sahara"      >Western Sahara</option>
					<option value="Yemen"               >Yemen</option>
					<option value="Yugoslavia"          >Yugoslavia</option>
					<option value="Zambia"              >Zambia</option>
					<option value="Zimbabwe"            >Zimbabwe</option>
				</select>
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 8-->
			<div class='row'>
			<div class='col-md-6'>
				State:
			</div>
			
			<div class='col-md-3'>
				<input type=text name="State" class="form-control" id="usr" onChange="stripWhiteSpace(this);" placeholder="State">	
			</div>
		
			<div class='col-md-3'>
			</div>
		</div><!--end of row 9-->
		<div class='row'>
			<div class='col-md-6'>
				City:
			</div>
			
			<div class='col-md-3'>
			
				<input type=text name="City" class="form-control" id="usr" onChange="stripWhiteSpace(this);" placeholder="City">	
			</div>
		
			<div class='col-md-3'>
			</div>
		</div><!--end of row 10-->
		<div class='row'>
			<div class='col-md-6'>
				Zip Code:
			</div>
			
			<div class='col-md-3'>
			
				<input type=text name="PostalCode" class="form-control" id="usr" onChange="stripWhiteSpace(this);" placeholder="Zip Code">	
			</div>
		
			<div class='col-md-3'>
			</div>
		</div><!--end of row 11-->
			<div class='row'>
			<div class='col-md-12'>
				I confirm that I have read and agreed to the <a href="#" onClick="javascript:launchWindow('termsandconditions.html','TermsAndCond',700,550,'');" class="default">Terms and Conditions of Service</a> of membership at CSE220ServiceByYusufOzbek.com
	
			</div>
		</div><!--end of row 11-->
		<div class='row'>
			<div class='col-md-3'>
			</div>
			<div class='col-md-6'>
				<button type="Submit" name="btnContinue" src="images/btn_become_a_member.gif" class="btn buttonSubmitColor">Click to become a member</button>
				
			</div>
			<div class='col-md-3'>
			</div>
		</div><!--end of row 11-->
		<div class='row'>
			<div class='col-md-12 '>
			</br>
			</br>
			</div>
		</div><!--end of row 11-->
		</div>
		
		<div class='col-md-2'>
		</div>
		
</div>

<!--My code-->

</form>

<script language=JavaScript>

var blnAbortValidation = false;

function validateFormfrmStep1()
{
alert("hello");
	if (blnAbortValidation == true) {
		blnAbortValidation = false;
		return true;
 	}
	
	var vfrmStep1txtUserName = document.frmStep1.UserName;
	var vfrmStep1pasPassword = document.frmStep1.Password;
	var vfrmStep1pasPassword2 = document.frmStep1.Password2;
	var vfrmStep1dteBirthDate_month = document.frmStep1.BirthDate_month[document.frmStep1.BirthDate_month.selectedIndex].value;
	var vfrmStep1dteBirthDate_day = document.frmStep1.BirthDate_day[document.frmStep1.BirthDate_day.selectedIndex].value;
	var vfrmStep1dteBirthDate_year = document.frmStep1.BirthDate_year[document.frmStep1.BirthDate_year.selectedIndex].value;
	var vfrmStep1txtEmail = document.frmStep1.Email;
	var vfrmStep1radGenderID = document.frmStep1.GenderID;
	var vfrmStep1radSeekingGenderID = document.frmStep1.SeekingGenderID;
	var vfrmStep1selCountryRegionID = document.frmStep1.CountryRegionID;
	var vfrmStep1txtPostalCode = document.frmStep1.PostalCode;
	var vfrmStep1chkNewsLetterMask = document.frmStep1.NewsLetterMask;
	
	if(IsEmpty(vfrmStep1txtUserName, 'text')) {
		ModalBox(false,"User Name: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1txtUserName.value, 2, 25) == false) {
		ModalBox(false,"User Name: must be between 2 and 25 characters");
		vfrmStep1txtUserName.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword, 'password')) {
		ModalBox(false,"Password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword.value, 4, 16) == false) {
		ModalBox(false,"Password: must be between 4 and 16 characters");
		vfrmStep1pasPassword.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword2, 'password')) {
		ModalBox(false,"Re-enter your password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword2.value, 4, 16) == false) {
		ModalBox(false,"Re-enter your password: must be between 4 and 16 characters");
		vfrmStep1pasPassword2.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_month == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_month.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_day == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_year == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_year.focus();
		return false;
	}
	if (!IsValidDate(vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day, vfrmStep1dteBirthDate_year) ){
		ModalBox(false,"The Date of Birth: field is not a valid date");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1txtEmail, 'text')) {
		ModalBox(false,"Email address: is required");
		return false;
	}
	if ( IsEmail(vfrmStep1txtEmail.value, 3) == false) {
		ModalBox(false,"Email address: is not a valid email address");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtEmail.value, null , 255) == false) {
		ModalBox(false,"Email address: cannot have more than 255 characters");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1radGenderID, 'radio')) {
		ModalBox(false,"Your Gender is required");
		return false;
	}
	if(IsEmpty(vfrmStep1radSeekingGenderID, 'radio')) {
		ModalBox(false,"Looking for a: is required");
		return false;
	}
	if(IsEmpty(vfrmStep1selCountryRegionID, 'select')) {
		ModalBox(false,"Country is required");
		return false;
	}
	if(IsEmpty(vfrmStep1txtPostalCode, 'text')) {
		ModalBox(false,"Zip Code is required");
		return false;
	}
	if ( IsAlphaNumeric(vfrmStep1txtPostalCode.value) == false) {
		ModalBox(false,"Zip Code must be alphanumeric (i.e. jsmith33)");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtPostalCode.value, 5, 6) == false) {
		ModalBox(false,"Zip Code must be between 5 and 6 characters");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if(vfrmStep1pasPassword2.value != vfrmStep1pasPassword.value) {
	   ModalBox(false,"Passwords do not match.  Please re-enter your password.");
	   return false;
	}		var dateTarget = new Date(1985, 12, 6, 0, 0, 0)
	var dateEntered = new Date(vfrmStep1dteBirthDate_year, vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day , 0, 0, 0)
	if ((dateTarget - dateEntered) < 0) {
		alert('You must be at least 18 years old to register.');
	   document.frmStep1.BirthDate_year.focus();
		return false;
	}
}
</script>

</center>
</body>
</html>