<!-- BEGIN: login -->
<div class="boxContent">
	
    <h1>{LANG_LOGIN_TITLE}</h1>
    
    <div class="loginStatus">{LOGIN_STATUS}</div>
	<div style="float:left">
	<!-- BEGIN: form -->
	<form action="index.php?_a=login&amp;redir={VAL_SELF}" target="_self" method="post">
    <span class="fieldLabel">{LANG_USERNAME}</span><br />
    <input type="text" name="username" class="textbox" value="{VAL_USERNAME}" />
    <br  />
    <br  />
	<span class="fieldLabel">{LANG_PASSWORD}</span><br />
    <input type="password" name="password" class="textbox" />
    <br />
    <br />
    <span class="fieldLabel" style="float:left; padding-right:5px;">{LANG_REMEMBER}</span>
    <div><input name="remember" type="checkbox" value="1" {CHECKBOX_STATUS} /></div>
    <br />
<input name="submit" type="submit" value="{TXT_LOGIN}" class="submit" />
	</form>
	<!-- END: form -->
    </div>
    <div style="float:left; margin-left:60px; margin-top:18px;">
    <div class="forgotPassword"><a href="index.php?_a=forgotPass" class="txtDefault">{LANG_FORGOT_PASS}</a></div>
    <div class="newUser"><a href="index.php?_g=co&amp;_a=reg" class="txtDefault">New Customer?</a></div>
    </div>
</div>
<!-- END: login -->