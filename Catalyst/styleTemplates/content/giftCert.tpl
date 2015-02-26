<!-- BEGIN: gift_cert -->
<div class="boxContent">
	<h1>{LANG_TITLE}</h1>
	<!-- BEGIN: error -->
	<div class="errorStatus">{VAL_ERROR}</div>
	<!-- END: error -->
	<div class="docBody">{LANG_DESC}</div>
    <br />
    <fieldset id="reviewSet">
    <legend>{LANG_BUY_CERT}</legend>
	<form action="index.php?_a=giftCert" method="post">
    <p>
	<label for="gc[amount]">{LANG_AMOUNT}</label>
	<input name="gc[amount]" class="regbox" type="text" id="amount" size="6" maxlength="10" value="{VALUE_AMOUNT}" /><span class="mandatory"></span>&nbsp;&nbsp;{LANG_MIN_MAX}<br clear="all" />
    </p>
    <p>
	<label for="gc[recipName]">{LANG_RECIP_NAME}</label>
	<input name="gc[recipName]" class="regbox" type="text" id="name" value="{VALUE_RECIPNAME}" /><span class="mandatory"></span><br clear="all" />
    </p>
    <p>
    <label for="gc[recipEmail]">{LANG_RECIP_EMAIL}</label>
	<input name="gc[recipEmail]" class="regbox" type="text" id="email" value="{VALUE_EMAIL}" /><span class="mandatory"></span><br clear="all" />
    </p>
    <p>
    <label for="gc[message]">{LANG_MESSAGE}</label>
    <textarea name="gc[message]" class="regbox" cols="35" rows="5" id="message">{VALUE_MESSAGE}</textarea><br clear="all" />
    </p>
    <p>
    <label for="gc[delivery]">{LANG_METHOD}</label>
    <select name="gc[delivery]" class="regbox" style="width: 213px;">
		<!-- BEGIN: email_opts -->
		<option value='e' {VAL_DELIVERY_E}>{LANG_EMAIL}</option>
		<!-- END: email_opts -->
		<!-- BEGIN: mail_opts -->
		<option value='m' {VAL_DELIVERY_M}>{LANG_MAIL}</option>
		<!-- END: mail_opts -->
	</select><br clear="all" />
    </p>
	<p>
    <input type="hidden" name="gc[cert]" value="1" />
	<input type="submit" class="submit" name="Submit" value="{LANG_ADD_TO_BASKET}" />
    </p>
	</form>
    </fieldset>
</div>
<!-- END: gift_cert -->