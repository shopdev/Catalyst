<!-- BEGIN: forgot_pass -->
<div class="boxContent">

	<h1>{LANG_FORGOT_PASS_TITLE}</h1>
    
    <!-- BEGIN: error -->
    <div class="errorStatus">{VAL_ERROR}</div>
    <!-- END: error -->
    
	<div class="loginStatus">{FORGOT_PASS_STATUS}</div>
	
	<!-- BEGIN: form -->
	<form action="index.php?_a=forgotPass" target="_self" method="post">
	<span class="fieldLabel">{LANG_EMAIL}</span><br />
    <input type="text" name="email" class="textbox" />
    <br />
    <!-- BEGIN: spambot -->
    <br />
	<span class="fieldLabel">{TXT_SPAMBOT}</span>
    <br />
    {IMG_SPAMBOT}
    <br />
    <input name="spamcode" type="text" class="textbox" value="" size="5" maxlength="5" />
    <br />
    <!-- END: spambot --> 
    <br />
    <input name="ESC" type="hidden" value="{VAL_ESC}" />
    <input name="submit" type="submit" value="{TXT_SUBMIT}" class="submit" />
	</form>
	<!-- END: form -->
</div>
<!-- END: forgot_pass -->