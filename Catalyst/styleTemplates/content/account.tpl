<!-- BEGIN: account -->
<div class="boxContent">
	
	<h1>{LANG_YOUR_ACCOUNT}</h1>
	<!-- BEGIN: session_true -->
	<div class="accountPersonalInfo">
    	<a href="index.php?_a=profile" class="txtDefault account">{TXT_PERSONAL_INFO}</a>
    </div>
	<div class="accountOrderHistory">
		<a href="index.php?_g=co&amp;_a=viewOrders" class="txtDefault account">{TXT_ORDER_HISTORY}</a>
    </div>
    <div class="accountChangePassword">
		<a href="index.php?_a=changePass" class="txtDefault account">{TXT_CHANGE_PASSWORD}</a>
    </div>
    <div class="accountNewsletter">
	<a href="index.php?_a=newsletter" class="txtDefault account">{TXT_NEWSLETTER}</a>
    </div>
    <div class="accountLogout">
	<a href="index.php?_a=logout" class="txtDefault account">Logout</a>
    </div>
	<!-- END: session_true -->
	
	<!-- BEGIN: session_false -->
	<div class="infoStatus" style="width:641px; margin-top:10px;"><a href="index.php?_a=login" title="Login">{LANG_LOGIN_REQUIRED}</a></div>
	<!-- END: session_false -->
</div>
<!-- END: account -->