<!-- BEGIN: profile -->
{JS_COUNTY_OPTIONS}
<div class="boxContent">

	<h1>{LANG_PERSONAL_INFO_TITLE}</h1>
	<!-- BEGIN: session_true -->
	<!-- BEGIN: no_error -->
	<div class="loginStatus">{LANG_PROFILE_DESC}</div>
	<!-- END: no_error -->
	<!-- BEGIN: error -->
	<div class="errorStatus">{VAL_ERROR}</div>
	<!-- END: error -->
	
		<form action="index.php?_a=profile{VAL_EXTRA_GET}" target="_self" method="post">
			<table border="0" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_TITLE}</span></td>
					<td style="padding-bottom:10px;"><input style="float:left;" name="title" type="text" class="textbox" id="title" value="{VAL_TITLE}" size="7" maxlength="30" tabindex="1" /><span class="mandatory"></span></td>
				</tr>
				<tr>
					<td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_FIRST_NAME}</span></td>
					<td style="padding-bottom:10px;"><input style="float:left;" name="firstName" type="text" class="textbox" id="firstName" value="{VAL_FIRST_NAME}" maxlength="100" tabindex="2" /><span class="mandatory"></span></td>
				</tr>
				<tr>
					<td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_LAST_NAME}</span></td>
					<td style="padding-bottom:10px;"><input style="float:left;" name="lastName" type="text" class="textbox" id="lastName" value="{VAL_LAST_NAME}" maxlength="100" tabindex="3" /><span class="mandatory"></span></td>
				</tr>
				<tr>
					<td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_EMAIL}</span></td>
					<td style="padding-bottom:10px;"><input style="float:left;" name="email" type="text" class="textbox" id="email" value="{VAL_EMAIL}" maxlength="100" tabindex="4" /><span class="mandatory"></span></td>
				</tr>
                <tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_COMPANY_NAME}</span></td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="companyName" type="text" class="textbox" id="companyName" value="{VAL_COMPANY_NAME}" maxlength="150" /></td>
			  	</tr>
				<tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_ADD_1}</span></td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="add_1" type="text" class="textbox" id="add_1" value="{VAL_ADD_1}" maxlength="100" tabindex="5" /><span class="mandatory"></span></td>
			  	</tr>
				<tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_ADD_2}</span></td>
				  <td style="padding-bottom:10px;"><input name="add_2" type="text" class="textbox" id="add_2" value="{VAL_ADD_2}" maxlength="100" style="margin-left:0; float:left;" tabindex="6" /></td>
			  	</tr>
				<tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_TOWN}</span></td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="town" type="text" class="textbox" id="town" value="{VAL_TOWN}" maxlength="100" tabindex="7" /><span class="mandatory"></span></td>
			  	</tr>
				<tr>
                  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_COUNTY}</span></td>
                  <td style="padding-bottom:10px;">
                      <div id="divCountyText" {VAL_COUNTY_TXT_STYLE}>
                      	  <input name="county" style="float:left;" type="text" class="textbox" id="county" value="{VAL_DEL_COUNTY}" maxlength="50" tabindex="8" /><span class="mandatory"></span>
                      </div>
                      <div id="divCountySelect" {VAL_COUNTY_SEL_STYLE}>
                          <select name="county_sel" style="float:left; width:213px;" id="county_sel" class="textbox" tabindex="8">
                              <!-- BEGIN: county_opts -->
                              <option value="{VAL_DEL_COUNTY_ID}" {COUNTY_SELECTED}>{VAL_DEL_COUNTY_NAME}</option>
                              <!-- END: county_opts -->
                          </select>
                      </div>
                  	  <input name="which_field" type="hidden" id="which_field" value="{VAL_COUNTY_WHICH_FIELD}" />
                  </td>
			  	</tr>
				<tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_POSTCODE}</span></td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="postcode" type="text" class="textbox" id="postcode" value="{VAL_POSTCODE}" maxlength="100" tabindex="9" /><span class="mandatory"></span></td>
			  	</tr>
				<tr>
				  <td align="right" valign="top" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_COUNTRY}</span></td>
				  <td style="padding-bottom:10px;">
				  	<select name="country" id="country" class="textbox" style="width:213px;" onchange="updateCounty(this.form);" tabindex="10">
				  		<!-- BEGIN: country_opts -->
						<option value="{VAL_COUNTRY_ID}" {COUNTRY_SELECTED}>{VAL_COUNTRY_NAME}</option>
						<!-- END: country_opts -->
					</select>
				  </td>
			  	</tr>
				<tr>
					<td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_PHONE}</span></td>
					<td style="padding-bottom:10px;"><input style="float:left;" name="phone" type="text" class="textbox" id="phone" value="{VAL_PHONE}" maxlength="100" tabindex="11" /><span class="mandatory"></span></td>
				</tr>
				<tr>
				  <td align="right" style="padding-right:20px; padding-bottom:10px;"><span class="cartAdd">{TXT_MOBILE}</span></td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="mobile" type="text" class="textbox" id="mobile" value="{VAL_MOBILE}" maxlength="100" tabindex="12" /></td>
			  	</tr>
				<tr>
				  <td style="padding-bottom:10px;">&nbsp;</td>
				  <td style="padding-bottom:10px;"><input style="float:left;" name="submit" type="submit" value="{TXT_SUBMIT}" class="submit" tabindex="13" /></td>
			  </tr>
		</table>
	</form>
	<!-- END: session_true -->
	
	<!-- BEGIN: session_false -->
	<p>{LANG_LOGIN_REQUIRED}</p>
	<!-- END: session_false -->
</div>
<!-- END: profile -->