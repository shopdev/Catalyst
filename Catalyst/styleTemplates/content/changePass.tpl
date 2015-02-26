<!-- BEGIN: change_pass -->
<div class="boxContent">

	<h1>{LANG_CHANGE_PASS_TITLE}</h1>
	
	<!-- BEGIN: session_true -->
	
	<!-- BEGIN: no_error -->
	<div class="loginStatus">{LANG_PASS_DESC}</div>
	<!-- END: no_error -->
	
	<!-- BEGIN: error -->
	<div class="errorStatus">{VAL_ERROR}</div>
	<!-- END: error -->
	
		<!-- BEGIN: form -->
		<form action="index.php?_a=changePass" target="_self" method="post">
			<table border="0" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td align="right" style="padding-right:20px;"><span class="fieldLabel">{TXT_OLD_PASS}</span></td>
					<td><input name="oldPass" type="password" class="textbox" id="oldPass" maxlength="30" /></td>
				</tr>
				<tr>
					<td align="right" style="padding-right:20px;"><span class="fieldLabel">{TXT_NEW_PASS}</span></td>
					<td><input name="newPass" type="password" class="textbox" id="newPass" maxlength="100" /></td>
				</tr>
				<tr>
					<td align="right" style="padding-right:20px;"><span class="fieldLabel">{TXT_NEW_PASS_CONF}</span></td>
					<td><input name="newPassConf" type="password" class="textbox" id="newPassConf" maxlength="100" /></td>
				</tr>
				<tr>
				  <td>&nbsp;</td>
				  <td><br /><input name="submit" type="submit" value="{TXT_SUBMIT}" class="submit" /></td>
			  </tr>
		</table>
	</form>
	<!-- END: form -->
	<!-- END: session_true -->
	
	<!-- BEGIN: session_false -->
	<div class="errorStatus">You must login to change your password.</div>
	<!-- END: session_false -->

</div>
<!-- END: change_pass -->