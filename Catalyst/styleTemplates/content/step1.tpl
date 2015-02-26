<!-- BEGIN: session_page -->

<div class="boxContent">
  <!-- BEGIN: cart_false -->
  <div class="noItems">{LANG_CART_EMPTY}</div>
  <!-- END: cart_false -->
  <!-- BEGIN: cart_true -->
  <h1>{LANG_LOGIN_TITLE}</h1>
  
  <div style="text-align: center; height: 25px;">
        <div class="cartProgress">
        <div id="step1" class="txtcartProgressCurrent" title="{LANG_CART}"></div>
        </div>
  </div>

    <div class="loginStatus">{LANG_LOGIN_BELOW}</div>
    <div style="float:left">
      <form action="index.php?_a=login&amp;redir={VAL_SELF}" target="_self" method="post">
        <span class="fieldLabel">{LANG_USERNAME}</span><br />
        <input type="text" name="username" class="textbox" value="{VAL_USERNAME}" />
        <br />
        <br />
        <span class="fieldLabel">{LANG_PASSWORD}</span><br />
        <input type="password" name="password" class="textbox" />
        <br />
        <br />
        <span class="fieldLabel" style="float:left; padding-right:5px;">{LANG_REMEMBER}</span>
        <input name="remember" type="checkbox" value="1" {CHECKBOX_STATUS} />
        <br />
        <br />
        <input name="submit" type="submit" value="{TXT_LOGIN}" class="submit" />
      </form>
    </div>
    <div style="float:left; margin-left:60px; margin-top:18px;">
      <div class="forgotPassword"><a href="index.php?_a=forgotPass" class="txtDefault">{LANG_FORGOT_PASS}</a></div>
      <div class="newUser"><a href="index.php?_g=co&amp;_a=reg&amp;co=1" class="txtDefault">New Customer?</a></div>
    </div>
    <br clear="all" />
  <br clear="all" />
  <br clear="all" />
  <!-- END: cart_true -->
</div>
<!-- END: session_page -->
