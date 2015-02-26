<!-- BEGIN: session -->
<!-- BEGIN: session_false -->
<div id="sessionFalse">
	<a href="index.php?act=login&amp;redir={VAL_SELF}" class="btnLogin">{LANG_LOGIN}</a>
    <a href="cart.php?act=reg&amp;redir={VAL_SELF}" class="btnRegister">{LANG_REGISTER}</a>
</div>
<!-- END: session_false -->

<!-- BEGIN: session_true -->
<div id="sessionFalse">
	<a href="index.php?act=logout" class="btnLogin">{LANG_LOGOUT}</a> 
    <a href="index.php?act=account" class="btnRegister">{LANG_YOUR_ACCOUNT}</a>
</div>
<!-- END: session_true -->
<!-- END: session -->