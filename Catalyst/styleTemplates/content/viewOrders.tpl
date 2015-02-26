<!-- BEGIN: view_orders -->
<div class="boxContent">
	
	<h1>{LANG_YOUR_VIEW_ORDERS}</h1>
	<!-- BEGIN: session_true -->
	<div>	
		<!-- BEGIN: orders_true -->
		<div class="loginStatus">{LANG_ORDER_LIST}</div>
		<table width="100%" border="0" cellpadding="3" cellspacing="0" style="margin-bottom: 25px;">
		  <tr>
		    <td align="left" class="tdcartTitle"><span style="padding-left:10px;">{LANG_ORDER_NO}</span></td>
			<td align="left" class="tdcartTitle"><span style="padding-left:10px;">{LANG_STATUS}</span></td>
			<td align="left" class="tdcartTitle"><span style="padding-left:10px;">{LANG_DATE_TIME}</span></td>
			<td align="left" class="tdcartTitle"><span style="padding-left:10px;">{LANG_ACTION}</span></td>
		  </tr>
		  <!-- BEGIN: repeat_orders -->
		  <tr height="50">
		    <td align="left" valign="middle" class="{TD_CART_CLASS}"><span style="padding-left:6px;"><a href="index.php?_g=co&amp;_a=viewOrder&amp;cart_order_id={DATA.cart_order_id}" class="txtLink txtOrder">{DATA.cart_order_id}</a></span></td>
			<td align="left" valign="middle" class="{TD_CART_CLASS}"><span style="padding-left:10px;">{VAL_STATE}</span></td>
			<td align="left" valign="middle" class="{TD_CART_CLASS}"><span style="padding-left:10px;">{VAL_DATE_TIME}</span></td>
			<td align="left" valign="middle" class="{TD_CART_CLASS}"><span style="padding-left:6px; display:block;"><a href="index.php?_g=co&amp;_a=viewOrder&amp;cart_order_id={DATA.cart_order_id}" class="txtLink txtOrder">{LANG_VIEW_ORDER}</a></span>
           	<!-- BEGIN: make_payment -->
                <br />
                <span style="padding-left:6px; display:block;"><a href="index.php?_g=co&amp;_a=step3&amp;cart_order_id={DATA.cart_order_id}" class="txtLink txtOrder">{LANG_COMPLETE_PAYMENT}</a></span>
            <!-- END: make_payment -->
            <!-- BEGIN: courier_tracking -->
                <br />
                <span style="padding-left:6px; display:block;"><a href="{TRACKING_URL}" class="txtLink txtOrder" target="_blank"><span style="padding-left:10px;">{LANG_COURIER_TRACKING}</span></a></span>
            <!-- END: courier_tracking -->
            </td>  
            </td>
		  </tr>
		  <!-- END: repeat_orders -->
    </table>
    <ol style="margin-right: 20px; padding-left:28px;">
    <!-- BEGIN: repeat_status -->
    <li style="list-style-position:outside; margin-bottom:5px;">
    <strong>{LANG_ORDER_STATUS}</strong> - {LANG_ORDER_STATUS_DESC}
    </li>
    <!-- END: repeat_status -->
    </ol>

  <!-- END: orders_true -->
		
		<!-- BEGIN: orders_false -->
		<div class="errorStatus">{LANG_NO_ORDERS}</div>
		<!-- END: orders_false -->
	</div>
	<!-- END: session_true -->
	
	<!-- BEGIN: session_false -->
	<div class="errorStatus">{LANG_LOGIN_REQUIRED}</div>
	<!-- END: session_false -->	
</div>
<!-- END: view_orders -->