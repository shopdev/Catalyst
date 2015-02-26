<!-- BEGIN: mail_list -->
<div class="boxTitleLeft"><img src="skins/Catalyst/styleImages/backgrounds/mailingList.gif" class="boxTitleImg" width="156" height="15" alt="{LANG_MAIL_LIST_TITLE}" /></div>
<div class="boxContentLeft">
	<div style="margin-bottom:10px;">{LANG_MAIL_LIST_DESC}</div>
    <br clear="all" style="line-height:0;" />
	<!-- BEGIN: form -->
	<form action="{FORM_METHOD}" method="post" name="mailList">
	<input name="email" type="text" size="14" maxlength="255" class="mailBox" onfocus="if(this.value=='email address...') this.value='';" onblur="if(this.value=='') this.value='email address...';" value="email address..."  /><div class="btnMail" title="{LANG_GO}" onclick="document.mailList.submit();"></div>
	<input type="hidden" name="act" value="mailList" />
	</form>
	<!-- END: form -->
    <br clear="all" style="line-height:0;" />
</div>
<!-- END: mail_list -->{LANG_EMAIL}