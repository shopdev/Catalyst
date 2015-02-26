<!-- BEGIN: reg -->
<script type="text/javascript" language="javascript">
function validatePWD() {
	if ($('#password').val() == $('#passwordConf').val()) {
		$('#password').css("border-color","#009933");
		$('#passwordConf').css("border-color","#009933");
		$('#confirmPWD').css("background-image","url('http://www.shopdev.co.uk/img/tick.gif')");
	}
	if ($('#password').val() != $('#passwordConf').val()) {
		$('#password').css("border-color","#FF0000");
		$('#passwordConf').css("border-color","#FF0000");
		$('#confirmPWD').css("background-image","url('http://www.shopdev.co.uk/img/cross.gif')");
	}
	if ($('#password').val() == '' || $('#passwordConf').val() == '') {
		$('#password').css("border-color","#CBB945");
		$('#passwordConf').css("border-color","#CBB945");
		$('#confirmPWD').css("background-image","url('http://www.shopdev.co.uk/img/asterisk_orange.gif')");
	}
};
function toggleReg() {
	$("#securityDetails").slideToggle('slow');
	$("#password").attr("value","");
	$("#passwordConf").attr("value","");
	$('#password').css("border-color","#CBB945");
	$('#passwordConf').css("border-color","#CBB945");
	$('#confirmPWD').css("background-image","url('http://www.shopdev.co.uk/img/asterisk_orange.gif')");
}
</script>
{JS_COUNTY_OPTIONS}
<div class="boxContent">
	<div style="padding-bottom: 3px;">
    <h1>{LANG_REGISTER}</h1>
    <!-- BEGIN: checkout_progress -->
    <div style="text-align: center; height: 25px;">
        <div class="cartProgress">
        <div id="step1" class="txtcartProgressCurrent" title="{LANG_CART}"></div>
        </div>
    </div>
    <!-- END: checkout_progress -->
	<!-- BEGIN: no_error -->
	<div class="loginStatus">{LANG_REGISTER_DESC}</div>
	<!-- END: no_error -->
	<!-- BEGIN: error -->
	<div class="errorStatus">{VAL_ERROR}</div>
	<!-- END: error -->
	<form name="registerForm" method="post" action="{VAL_ACTION}" id="regForm">
    <fieldset id="personalSet">
        <legend>{LANG_PERSONAL_DETAILS}</legend>
        <p><label for="title">{LANG_TITLE}</label><input name="title" type="text" class="regbox" id="title" size="5" value="{VAL_TITLE}" tabindex="1" style="width:60px;" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="firstName">{LANG_FIRST_NAME}</label><input name="firstName" type="text" class="regbox" id="firstName" size="16" value="{VAL_FIRST_NAME}" tabindex="2" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="lastName">{LANG_LAST_NAME}</label><input name="lastName" type="text" class="regbox" id="lastName" size="16" value="{VAL_LAST_NAME}" tabindex="3" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="email">{LANG_EMAIL_ADDRESS}</label><input name="email" type="text" class="regbox" id="email" size="16" value="{VAL_EMAIL}" tabindex="4" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="telephone">{LANG_TELEPHONE}</label><input name="phone" type="text" class="regbox" id="phone" size="16" value="{VAL_PHONE}" tabindex="5" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="mobile">{LANG_MOBILE}</label><input name="mobile" type="text" class="regbox" id="mobile" size="16" value="{VAL_MOBILE}" tabindex="6" /><br clear="all" /></p>
    </fieldset>
    
    <fieldset id="addressSet">
    	<legend>{LANG_ADDRESS}</legend>
        <p><label for="companyName">{LANG_COMPANY_NAME}</label><input name="companyName" type="text" class="regbox" id="companyName" size="16" value="{VAL_COMPANY_NAME}" tabindex="7" /><br clear="all" /></p>
        <p style="border-bottom:none;"><label for="add_1">{LANG_ADDRESS_FORM}</label><input name="add_1" type="text" class="regbox" id="add_1" size="16" value="{VAL_ADD_1}" tabindex="7" /><span class="mandatory"></span><br clear="all" /></p>
        <p><input name="add_2" type="text" class="regbox" id="add_2" size="16" value="{VAL_ADD_2}" tabindex="8" style="float:none;" /></p>
        <p><label for="town">{LANG_TOWN}</label><input name="town" type="text" class="regbox" id="town" size="16" value="{VAL_TOWN}" tabindex="9" /><span class="mandatory"></span><br clear="all" /></p>
        <p><label for="county">{LANG_COUNTY}</label>
        <span id="divCountyText" {VAL_COUNTY_TXT_STYLE}>
        	<input name="county" type="text" class="textbox" id="county" value="{VAL_DEL_COUNTY}" maxlength="50" tabindex="10" style="float:left;" /><span class="mandatory" style="float:left;"></span><br clear="all" />
        </span>
        <span id="divCountySelect" {VAL_COUNTY_SEL_STYLE}>
            <select name="county_sel" id="county_sel" class="regbox" style="width:213px; float:none; padding-right:5px;" tabindex="11">
            <!-- BEGIN: county_opts -->
            <option value="{VAL_DEL_COUNTY_ID}" {COUNTY_SELECTED}>{VAL_DEL_COUNTY_NAME}</option>
            <!-- END: county_opts -->
            </select>
        </span>
        <input name="which_field" type="hidden" id="which_field" value="{VAL_COUNTY_WHICH_FIELD}" />
        </p>
        <p><label for="country">{LANG_COUNTRY}</label><select name="country" class="regbox" tabindex="11" onchange="updateCounty(this.form);" style="width:213px; float:none; padding-right:5px;"><!-- BEGIN: repeat_countries --><option value="{VAL_COUNTRY_ID}" {VAL_COUNTRY_SELECTED}>{VAL_COUNTRY_NAME}</option><!-- END: repeat_countries --></select></p>
        <p><label for="postcode">{LANG_POSTCODE}</label><input name="postcode" type="text" class="regbox" id="postcode" size="16" value="{VAL_POSTCODE}" tabindex="12" /><span class="mandatory"></span><br clear="all" /></p>
    </fieldset>
    
    <fieldset>
    	<legend>Security Details</legend>
        <!-- BEGIN: account_opt -->
        <p><label for="skipReg">{LANG_NO_ACCOUNT_WANTED}</label><input name="skipReg" type="checkbox" style="margin-top:13px; margin-left:0px;" onclick="toggleReg();" value="1" {VAL_SKIP_REG_CHECKED} /><br clear="all" /></p>
        <!-- END: account_opt -->
        <!-- BEGIN: spambot -->
		<p><label for="spamcode">{TXT_SPAMBOT}</label>{IMG_SPAMBOT}<br clear="all" />
		<input name="spamcode" type="text" class="regbox" style="margin-left:160px; margin-top:10px;" value="" tabindex="15" size="5" maxlength="5" /><span class="mandatory" style="margin-top:15px;"></span><br clear="all" /></p>
        <!-- END: spambot -->
        <div id="securityDetails">
            <p><label for="password">{LANG_CHOOSE_PASSWORD}</label><input name="password" type="password" class="regbox" id="password" size="16" onkeyup="validatePWD();" value="{VAL_PASSWORD}" tabindex="13" /><span class="mandatory"></span><br clear="all" /></p>
            <p><label for="passwordConf">{LANG_CONFIRM_PASSWORD}</label><input name="passwordConf" type="password" class="regbox" id="passwordConf" size="16" value="{VAL_PASSWORD_CONF}" onkeyup="validatePWD();" tabindex="14" /><span class="mandatory" id="confirmPWD"></span><br clear="all" /></p>
        </div>
    </fieldset>
    
    <fieldset>
    	<legend>{LANG_PRIVACY_SETTINGS}</legend>
        <p style="height:40px; padding-right:10px;"><label for="optIn1st">{LANG_RECIEVE_EMAILS}</label><input type="checkbox" name="optIn1st" value="1" style="margin:0; margin-top:13px;" tabindex="15" {VAL_OPTIN1ST_CHECKED}/></p>
        <p><label for="optIn1st">{LANG_EMAIL_FORMAT}</label><select name="htmlEmail" class="regbox" tabindex="16" style="float:none; width:213px; padding-right:5px;"><option value="1">{LANG_HTML_FORMAT}</option><option value="0" {VAL_HTMLEMAIL_SELECTED}>{LANG_PLAIN_TEXT}</option></select></p>
    </fieldset>
    <br />
    {LANG_PLEASE_READ} <a href="{LINK_TANDCS}" target="_blank" class="txtDefault">{LANG_TANDCS}</a> <input type="checkbox" name="tandc"
value="checkbox" />
    <br />
    <br />
    <input name="register" type="button" onclick="submitDoc('registerForm');" tabindex="17"  value="{LANG_REGISTER_SUBMIT}" class="submit" />
    <input name="ESC" type="hidden" value="{VAL_ESC}" />
	</form>
	</div>
</div>
<!-- END: reg -->