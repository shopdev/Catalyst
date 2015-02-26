<!-- BEGIN: view_cart -->
{JS_COUNTY_OPTIONS}
<script type="text/javascript">
$(function() {
	$("#shipping-select").removeClass("textbox");
	$("#shipping-select").css("width", "");
});
</script>
<div class="boxContent">
  <h1>{LANG_VIEW_CART}</h1>
  <div style="text-align: center; height: 25px;">
    <div class="cartProgress">
      <div id="step1" {CLASS_CART} title="{LANG_CART}"></div>
      <div id="step2" {CLASS_STEP2} title="{LANG_ADDRESS}"></div>
    </div>
  </div>
  <br />
  <br />
  <!-- BEGIN: cart_false -->
   <div style="padding-left:3px;">
	<div class="noItems">{LANG_CART_EMPTY}</div>
   </div>
  <!-- END: cart_false -->
  <!-- BEGIN: cart_true -->
  <form name="cart" method="post" id="cart" action="{VAL_FORM_ACTION}">
    <!-- BEGIN: edit_delivery -->
    <table width="100%"  border="0" cellspacing="0" cellpadding="3" style="margin-bottom: 10px;" id="invAddrTable">
      <tr>
        <td width="50%" class="tdcartTitle">{LANG_INVOICE_ADDRESS}</td>
        <td colspan="2" class="tdcartTitle">{LANG_DELIVERY_ADDRESS}</td>
      </tr>
      <tr>
        <td width="50%" style="padding-top:10px;"><span class="cartAdd">{VAL_TITLE} {VAL_FIRST_NAME} {VAL_LAST_NAME}</span></td>
        <td width="30%" style="padding-top:10px;"><strong>{TXT_TITLE}</strong></td>
        <td style="padding-top:10px;"><input name="delInf[title]" type="text" class="textbox" id="title" value="{VAL_DEL_TITLE}" style="float: left; width:80px;" size="7" maxlength="30" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td><span class="cartAdd">{VAL_COMPANY_NAME}</span></td>
        <td><strong>{TXT_FIRST_NAME}</strong></td>
        <td><input name="delInf[firstName]" type="text" class="textbox" id="firstName" value="{VAL_DEL_FIRST_NAME}" style="float: left;" maxlength="100" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td><span class="cartAdd">{VAL_ADD_1}</span></td>
        <td><strong>{TXT_LAST_NAME}</strong></td>
        <td><input name="delInf[lastName]" type="text" class="textbox" id="lastName" value="{VAL_DEL_LAST_NAME}" style="float: left;" maxlength="100" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td><span class="cartAdd">{VAL_ADD_2}</span></td>
        <td><strong>{TXT_COMPANY_NAME}</strong></td>
        <td><input name="delInf[companyName]" type="text" class="textbox" id="companyName" value="{VAL_DEL_COMPANY_NAME}" style="float: left;" maxlength="100" /></td>
      </tr>
      <tr>
        <td width="50%"><span class="cartAdd">{VAL_TOWN}</span></td>
        <td><strong>{TXT_ADD_1}</strong></td>
        <td><input name="delInf[add_1]" type="text" class="textbox" id="add_1" value="{VAL_DEL_ADD_1}" style="float: left;" maxlength="100" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td width="50%"><span class="cartAdd">{VAL_COUNTY}, {VAL_POSTCODE}</span></td>
        <td><strong>{TXT_ADD_2}</strong></td>
        <td><input name="delInf[add_2]" type="text" class="textbox" id="add_2" style="margin-left:0px; float: left;" value="{VAL_DEL_ADD_2}" maxlength="100" /></td>
      </tr>
      <tr>
        <td width="50%"><span class="cartAdd">{VAL_COUNTRY}</span></td>
        <td><strong>{TXT_TOWN}</strong></td>
        <td><input name="delInf[town]" type="text" class="textbox" id="town" value="{VAL_DEL_TOWN}" style="float: left;" maxlength="100" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td width="50%" rowspan="3" align="left" valign="top">
        <br clear="all" />
        <span class="editAddress" style="display: block; float: left;">
        <a href="index.php?_a=profile&amp;f={VAL_BACK_TO}" class="txtDefault">{LANG_CHANGE_INV_ADD}</a>
        </span>
        </td>
        <td><strong>{TXT_COUNTY}</strong></td>
        <td><div id="divCountyText" {VAL_COUNTY_TXT_STYLE}>
            <input name="delInf[county]" type="text" class="textbox" id="county" value="{VAL_DEL_COUNTY}" style="float: left;" maxlength="100" /><span class="mandatory"></span>
          </div>
          <div id="divCountySelect" {VAL_COUNTY_SEL_STYLE}>
            <select name="delInf[county_sel]" id="county_sel" class="textbox" style="width: 214px; float:left;">
              <!-- BEGIN: county_opts -->
              <option value="{VAL_DEL_COUNTY_NAME}" {COUNTY_SELECTED}>{VAL_DEL_COUNTY_NAME}</option>
              <!-- END: county_opts -->
            </select>
          </div>
          <input name="which_field" type="hidden" id="which_field" value="{VAL_COUNTY_WHICH_FIELD}" />
        </td>
      </tr>
      <tr>
        <td><strong>{TXT_POSTCODE}</strong></td>
        <td><input name="delInf[postcode]" type="text" class="textbox" style="float: left;" id="postcode" value="{VAL_DEL_POSTCODE}" maxlength="100" /><span class="mandatory"></span></td>
      </tr>
      <tr>
        <td><strong>{TXT_COUNTRY}</strong></td>
        <td><select name="delInf[country]" id="country" class="textbox" style="width: 214px; float: left;" onchange="updateCounty(this.form);">
            <!-- BEGIN: country_opts -->
            <option value="{VAL_DEL_COUNTRY_ID}" {COUNTRY_SELECTED}>{VAL_DEL_COUNTRY_NAME}</option>
            <!-- END: country_opts -->
          </select>
        </td>
      </tr>
    </table>
    <br clear="all" />
    <br clear="all" />
    <!-- END: edit_delivery -->
    <!-- BEGIN: step_4 -->
    <table width="100%"  border="0" cellspacing="0" cellpadding="3" style="margin-bottom: 10px;">
      <tr>
        <td width="50%" class="tdcartTitle"><span style="padding-left:10px;">{LANG_INVOICE_ADDRESS}</span></td>
        <td class="tdcartTitle"><span style="padding-left:10px;">{LANG_DELIVERY_ADDRESS}</span></td>
      </tr>
      <tr>
        <td width="50%" style="padding-top:10px;"><span style="padding-left:10px;" class="cartAdd">{VAL_TITLE} {VAL_FIRST_NAME} {VAL_LAST_NAME}</span></td>
        <td style="padding-top:10px;"><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_TITLE} {VAL_DEL_FIRST_NAME} {VAL_DEL_LAST_NAME}</span></td>
      </tr>
      <tr>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_ADD_1}</span></td>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_ADD_1}</span></td>
      </tr>
      <tr>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_ADD_2}</span></td>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_ADD_2}</span></td>
      </tr>
      <tr>
        <td width="50%"><span style="padding-left:10px;" class="cartAdd">{VAL_TOWN}</span></td>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_TOWN}</span></td>
      </tr>
      <tr>
        <td width="50%"><span style="padding-left:10px;" class="cartAdd">{VAL_COUNTY}, {VAL_POSTCODE}</span></td>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_COUNTY}, {VAL_DEL_POSTCODE}</span></td>
      </tr>
      <tr>
        <td width="50%"><span style="padding-left:10px;" class="cartAdd">{VAL_COUNTRY}</span></td>
        <td><span style="padding-left:10px;" class="cartAdd">{VAL_DEL_COUNTRY}</span></td>
      </tr>
      <tr>
        <td width="50%" style="height:60px;">
        <br clear="all" />
        <span class="editAddress" style="display:block; float:left; margin-left:10px;"><a href="index.php?act=profile&amp;f={VAL_BACK_TO}" class="txtDefault" style=" color:#636363;">{LANG_CHANGE_INV_ADD}</a></span></td>
        <td style="height:60px;"><!-- BEGIN: edit_btn -->
        <br clear="all" />
          <span class="editAddress" style="display:block; float:left; margin-left:10px;"><a href="cart.php?act=step3" class="txtDefault" style=" color:#636363;">{LANG_CHANGE_DEL_ADD}</a></span>
          <!-- END: edit_btn -->        </td>
      </tr>
    </table>
    <!-- END: step_4 -->
    <table width="100%" border="0" cellpadding="3" cellspacing="0">
      <tr>
        <td class="tdcartTitle"><span style="padding-left:10px;">{LANG_PRODUCT}</span></td>
        <td align="center" class="tdcartTitle">{LANG_CODE}</td>
        <td align="center" class="tdcartTitle">{LANG_STOCK}</td>
        <td class="tdcartTitle" align="right">{LANG_PRICE}</td>
        <td align="center" class="tdcartTitle">{LANG_QTY}</td>
        <td width="80" align="right" nowrap='nowrap' class="tdcartTitle">{LANG_LINE_PRICE}</td>
        <td class="tdcartTitle">&nbsp;</td>
      </tr>
      <!-- BEGIN: repeat_cart_contents -->
      <tr class="cartRow">
        <td align="left" valign="middle" class="{TD_CART_CLASS}">
        <table border="0" align="left" cellpadding="0" cellspacing="0">
          <tr><td>
        <span style="display:none; padding:2px; border:1px solid #E1E1E1; position:absolute; z-index:9999; margin-left:30px; background-color:#FFF;" id="img-{VAL_PRODUCT_ID}"> <img src="{VAL_IMG_SRC}" title="{VAL_PRODUCT_NAME}" style="padding:10px; border:1px solid #E1E1E1; background-color:#FFF;" /> </span>
          <div style="position:relative; height:100%; width:100%;"><img src="skins/{VAL_SKIN}/styleImages/image.gif" title="" alt="" height="16" width="16" style="position:absolute; left:10px; z-index:999;" onmouseover="displayThumb{VAL_PRODUCT_ID}()" onmouseout="hideThumb{VAL_PRODUCT_ID}()" /> 
          <script type="text/javascript" language="javascript">
							function displayThumb{VAL_PRODUCT_ID}() {
								$("#img-{VAL_PRODUCT_ID}").css("display","block");
							}
							function hideThumb{VAL_PRODUCT_ID}() {
								$("#img-{VAL_PRODUCT_ID}").css("display","none");
							}
						</script>
          <div class="cartProdTitle"> {VAL_PRODUCT_NAME}
            <!-- BEGIN: options -->
            <div class="cartOption"><strong>{VAL_OPT_NAME}</strong>: {VAL_OPT_VALUE} </div>
            <!-- END: options -->
          </div></div>
          </td></tr></table>        </td>
        <td align="center" valign="middle" class="{TD_CART_CLASS}">{VAL_PRODUCT_CODE}</td>
        <td align="center" valign="middle" class="{TD_CART_CLASS}">{VAL_INSTOCK}</td>
        <td align="right" valign="middle" class="{TD_CART_CLASS}">{VAL_IND_PRICE}</td>
        <td align="center" valign="middle" class="{TD_CART_CLASS}"><input name="quan[{VAL_PRODUCT_KEY}]" type="text" value="{VAL_QUANTITY}" size="2" class="textbox" style="text-align:center; width:20px;" {QUAN_DISABLED} /></td>
        <td width="80" align="right" valign="middle" class="{TD_CART_CLASS}">{VAL_LINE_PRICE}</td>
        <td width="30" align="center" valign="middle" class="{TD_CART_CLASS}"><a href="index.php?_g=co&amp;_a={VAL_CURRENT_STEP}&amp;remove={VAL_PRODUCT_KEY}"><img src="skins/{VAL_SKIN}/styleImages/cart_delete.gif" alt="{LANG_DELETE}" width="16" height="16" border="0" title="{LANG_DELETE}" /></a></td>
      </tr>
      <!-- BEGIN: stock_warn -->
      <tr>
        <td colspan="8" align="right" class="txtStockWarn"><div class="cartStock">{VAL_STOCK_WARN}</div></td>
      </tr>
      <!-- END: stock_warn -->
      <!-- END: repeat_cart_contents -->
      <tr>
        <td colspan="5" align="right" class="tdCartSubTotal">{LANG_SUBTOTAL}</td>
        <td width="80" align="right" class="tdCartSubTotal">{VAL_SUBTOTAL}</td>
      </tr>
      <!-- BEGIN: enter_coupon_code -->
      <tr>
        <td colspan="5" align="right"><span class="promoCode" onmouseover="tooltip.show('{LANG_GOT_CODE}', 200);" onmouseout="tooltip.hide();">{LANG_ENTER_CODE}</span></td>
        <td width="80" align="right"><input name="coupon" type="text" style="width: 70%" maxlength="25" /></td>
      </tr>
      <!-- END: enter_coupon_code -->
      <!-- BEGIN: coupon_code_result -->
      <tr>
        <td colspan="5" align="right"><strong>{LANG_CODE_RESULT}</strong></td>
        <td width="80" align="right"><a href="{VAL_CURRENT_PAGE}&amp;remCode={VAL_OLD_CODE}" class="txtLink">&raquo; remove</a></td>
      </tr>
      <!-- END: coupon_code_result -->
      <tr>
        <td colspan="5" align="right">{LANG_TAX}</td>
        <td width="80" align="right">{VAL_TAX}</td>
      </tr>
      <!-- BEGIN: repeat_more_taxes -->
      <tr>
        <td colspan="5" align="right">{LANG_TAX}</td>
        <td width="80" align="right">{VAL_TAX}</td>
      </tr>
      <!-- END: repeat_more_taxes -->
      <tr>
        <td colspan="5" align="right">{LANG_SHIPPING}</td>
        <td align="right">{VAL_SHIPPING}</td>
      </tr>
      <tr>
        <td colspan="5" align="right"><strong>{LANG_CART_TOTAL}</strong></td>
        <td align="right"><strong>{VAL_CART_TOTAL}</strong></td>
      </tr>
    </table>
    <br clear="all" />
    <br clear="all" />
    
    <div style="text-align: right; margin-top: 4px; margin-bottom: 3px;">
    <span class="update" style="height:17px;">
    	<a href="javascript:submitDoc('cart');" style="display:block; float:left;">
    		<img src="skins/{VAL_SKIN}/styleImages/arrow_refresh.gif" width="16" height="16" title="{LANG_UPDATE_CART}" border="0" />
    	</a>
    	<a href="javascript:submitDoc('cart');" class="txtDefault" style="color:#636363; margin-left:10px; display:block; float:left;">{LANG_UPDATE_CART_DESC}</a>
    </span>
      <span class="continue"><a href="{CONT_VAL}" class="txtDefault" style="color:#636363;">{LANG_CHECKOUT}</a></span>
      <br/>
    </div>
  </form>
  <!-- BEGIN: alt_checkout -->
  <br clear="all" />
  <br clear="all" />
  <!-- BEGIN: custom_warn -->
<div class="errorStatus">{LANG_CUSTOM_WARN}</div>
  <!-- END: custom_warn -->
  <div style="text-align:right">
  <!-- BEGIN: loop_button -->
  {IMG_CHECKOUT_ALT}<br />
  <!-- END: loop_button -->
  </div>
  <!-- END: alt_checkout -->
  <br clear="all" />
  <!-- END: cart_true -->
</div>
<!-- END: view_cart -->
