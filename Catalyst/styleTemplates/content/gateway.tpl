<!-- BEGIN: gateway -->
<div class="boxContent">
			<h1>{LANG_PAYMENT}</h1>
			<div style="text-align: center; height: 25px;">
				<div class="cartProgress">
                  <div id="step3" title="{LANG_ADDRESS}" class="txtcartProgressCurrent"></div>
                </div>
			</div>
			<br clear="all" />
			<!-- BEGIN: cart_false -->
            	<div class="noItems">{LANG_CART_EMPTY}</div>
			<!-- END: cart_false -->
			<!-- BEGIN: cart_true -->
			<div style="text-align: center">
			<form action="{VAL_FORM_ACTION}" method="{VAL_FORM_METHOD}" name="gateway" target="{VAL_TARGET}">
				
				<!-- BEGIN: choose_gate -->
                <div class="loginStatus" style="text-align:left">{LANG_PAYMENT_SUMMARY}</div>
				<div class="loginStatus" style="text-align:left">{LANG_CHOOSE_GATEWAY}</div>
                <br clear="all" />
				<table width="150" border="0" align="left" cellspacing="0" cellpadding="3">
					<!-- BEGIN: gateways_true -->
					<tr>
						<td class="{TD_CART_CLASS}" style="border-top:1px solid #E1E1E1; border-left:1px solid #E1E1E1;">{VAL_GATEWAY_DESC}</td>
					  	<td width="50" align="center" class="{TD_CART_CLASS}" style="border-top:1px solid #E1E1E1; border-right:1px solid #E1E1E1;">
						<input name="gateway" type="radio" value="{VAL_GATEWAY_FOLDER}" {VAL_CHECKED} />
						</td>
					</tr>
					<!-- END: gateways_true -->
					<tr>
						<td colspan="2" align="left" style="padding-top:20px;">{LANG_COMMENTS}</td>
				  	</tr>
					<tr align="right">
					  <td colspan="2"><textarea name="customer_comments" cols="35" rows="3" class="textbox" style="margin:0px;">{VAL_CUSTOMER_COMMENTS}</textarea></td>
				  	</tr>
					<!-- BEGIN: gateways_flase -->
					<tr>
						<td><div class="errorStatus">{LANG_GATEWAYS_FALSE}</div></td>
					</tr>
					<!-- END: gateways_false -->
				</table>
				<!-- END: choose_gate -->
				
				<!-- BEGIN: transfer -->
                {FORM_PARAMETERS}
					<!-- BEGIN: auto_submit-->
					<p>{LANG_TRANSFERRING}</p>
					<p><img src="skins/{VAL_SKIN}/styleImages/progress.gif"  alt="" title="" onload="submitDoc('gateway');" /></p>
					<!-- END: auto_submit-->
					<!-- BEGIN: manual_submit-->
					<p align="left">{LANG_FORM_TITLE}</p>
					{FORM_TEMPLATE}
					<!-- END: manual_submit-->
				<!-- END: transfer -->
                <br clear="all" />
                <br clear="all" />
				<span class="gateway"><a href="javascript:submitDoc('gateway');" class="txtDefault" style="color:#636363;" title="Proceed To Payment">{LANG_CHECKOUT}</a></span>
				<br clear="all" />
                <br clear="all" />
                <br clear="all" />
			</form>
			</div>
			<!-- BEGIN: affiliate_code -->
				{VAL_AFFILIATE_TRACK_HTML}
			<!-- END: affiliate_code -->
			<!-- END: cart_true -->
</div>
<!-- END: gateway -->