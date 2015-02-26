<!-- BEGIN: confirmation -->
<div class="boxContent">
	
	<h1>{LANG_CONFIRMATION_SCREEN}</h1>
		<div style="text-align: center; height: 25px;">
            <div class="cartProgress">
                  <div id="step4" class="txtcartProgressCurrent" title="{LANG_ADDRESS}"></div>
            </div>
		</div>
        
		<!-- BEGIN: order_success -->
		<div class="loginStatus">{LANG_ORDER_SUCCESSFUL}</div>
        <!-- END: order_success -->
        
        <!-- BEGIN: order_processing -->
        <div class="docBody">{LANG_ORDER_PROCESSING}</div>
        <!-- END: order_processing --> 
        
        <!-- BEGIN: order_failed -->
		<div class="errorStatus">{LANG_ORDER_FAILED}</div>
		<p>{LANG_ORDER_RETRY}</p>
        <br clear="all" />
        <br clear="all" />
		<span class="gateway"><a href="index.php?_g=co&amp;_a=step3" class="txtCheckout"  class="txtDefault" style="color:#636363;">{LANG_RETRY_BUTTON}</a></span>
        <br clear="all" />
        <br clear="all" />
		<!-- END: order_failed -->
        
</div>
<!-- END: confirmation -->