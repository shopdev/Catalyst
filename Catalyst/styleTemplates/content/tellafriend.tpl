<!-- BEGIN: tellafriend -->
<div class="boxContent">

	<h1>{TAF_TITLE}</h1>
	<!-- BEGIN: error -->
	<div class="errorStatus">{VAL_ERROR}</div>
	<!-- END: error -->
	<div class="loginStatus">{TAF_DESC}</div>
	
		<form action="index.php?_a=tellafriend&amp;productId={PRODUCT_ID}" target="_self" method="post">
			<table border="0" cellspacing="0" cellpadding="3" align="center">
				<tr>
					<td align="right" style="padding-bottom:10px;"><span class="fieldLabel" style="padding-right:20px;">{TXT_RECIP_NAME}</span></td>
					<td style="padding-bottom:10px;"><input type="text" name="recipName" class="textbox" /></td>
				</tr>
				<tr>
					<td align="right" style="padding-bottom:10px;"><span class="fieldLabel" style="padding-right:20px;">{TXT_RECIP_EMAIL}</span></td>
					<td style="padding-bottom:10px;"><input type="text" name="recipEmail" class="textbox" /></td>
				</tr>
				<tr>
					<td align="right" style="padding-bottom:10px;"><span class="fieldLabel" style="padding-right:20px;">{TXT_SENDER_NAME}</span></td>
					<td style="padding-bottom:10px;"><input type="text" name="senderName" class="textbox" value="{VAL_SENDER_NAME}" /></td>
				</tr>
				<tr>
					<td align="right" style="padding-bottom:10px;"><span class="fieldLabel" style="padding-right:20px;">{TXT_SENDER_EMAIL}</span></td>
					<td style="padding-bottom:10px;"><input type="text" name="senderEmail" class="textbox" value="{VAL_SENDER_EMAIL}" /></td>
				</tr>
				<!-- BEGIN: spambot -->
				<tr>
				  <td align="right" style="padding-bottom:10px;"></td>
				  <td style="padding-bottom:10px;">{IMG_SPAMBOT}</td>
                </tr>
                <tr>
				  <td align="right" style="padding-bottom:10px;"><span class="fieldLabel" style="padding-right:20px;">{TXT_SPAMBOT}</span></td>
				  <td style="padding-bottom:10px;"><input name="spamcode" type="text" class="textbox" value="" size="5" maxlength="5" /></td>
                </tr>
			  	<!-- END: spambot -->
				<tr>
					<td align="right" valign="top"><span class="fieldLabel" style="padding-right:20px;">{TXT_MESSAGE}</span></td>
					<td style="padding-bottom:10px;"><textarea name="message" cols="30" rows="5" class="textbox">{VAL_MESSAGE}</textarea></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input name="submit" type="submit" value="{TXT_SUBMIT}" class="submit" /></td>
				</tr>
		</table>
	<input name="ESC" type="hidden" value="{VAL_ESC}" />
	</form>
</div>
<!-- END: tellafriend -->