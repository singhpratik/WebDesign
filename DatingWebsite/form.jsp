<HTML>
<HEAD>
<TITLE>File Upload</TITLE>
</HEAD>
<BODY>
<FORM ACTION=bean_test.jsp ENCTYPE="MULTIPART/FORM-DATA" METHOD=POST>
Author: <INPUT TYPE=TEXT Name=Author><BR>
Company: <INPUT TYPE=TEXT Name=Company><BR>
Comment: <TEXTAREA NAME=Comment></TEXTAREA><BR>
Select file to upload <INPUT TYPE=FILE Name=Filename><BR>
Description: <INPUT TYPE=TEXT Name=Description><BR>
<INPUT TYPE=SUBMIT VALUE="Upload">
</FORM>
</BODY>
</HTML>
