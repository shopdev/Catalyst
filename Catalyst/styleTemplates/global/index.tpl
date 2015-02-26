<!-- BEGIN: body -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={VAL_ISO}" />
<title>{META_TITLE}</title>
<meta name="description" content="{META_DESC}" />
<meta name="keywords" content="{META_KEYWORDS}" />
<link href="skins/{VAL_SKIN}/php/compress.php?get=../styleSheets/layout.css||../styleSheets/fancy.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
	var rootRel = "{VAL_ROOTREL}";
</script>
<script type="text/javascript" language="javascript" src="skins/{VAL_SKIN}/php/compress.php?get=../javascript/jslibrary.js||../javascript/jquery.js||../javascript/jquery.cookie.js||../javascript/form.js||../javascript/jquery.cycle.js||../javascript/shopdev_effects.js"></script>
<!--[if lte IE 6]>
<link href="skins/{VAL_SKIN}/php/compress.php?get=../styleSheets/ie6.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="skins/{VAL_SKIN}/php/compress.php?get=../javascript/jquery.pngFix.js"></script>
<script defer language="javascript" type="text/javascript"> 
    $(function(){ 
        $(document).pngFix(); 
    }); 
</script> 
<![endif]-->
<!--[if IE 7]>
<style type="text/css">
.boxContentLeft ol li {
	margin-left:4px;
}
</style>
<![endif]-->
</head>
<body onload="initialiseMenu();{EXTRA_EVENTS}">
<div id="pageSurround">
  <div id="subSurround">
    <div id="topHeader">
      <a href="index.php" title="Home">
      	<img src="images/getLogo.php?skin=Catalyst" alt="Home" style="position:absolute; left:38px; top:38px; border:none;" width="230" height="67" />
      </a>
      {SEARCH_FORM}
      <div id="yourAccount">
      <a href="index.php?_a=account" title="Your Account">Your Account</a>
      </div>
      <div id="shoppingCart">
      	<a href="index.php?_g=co&amp;_a=cart" title="Shopping Cart">
        	<img src="skins/{VAL_SKIN}/styleImages/backgrounds/itemsInCart.gif" alt="Shopping Cart" style="border:none; float:right; padding-top:9px; padding-left:6px;" width="66" height="32" />
      	</a>
      	<span id="ajaxCart" style="display:block;">{SHOPPING_CART}</span>
        <a href="index.php?_g=co&amp;_a=cart" title="Shopping Cart">
        	<img src="skins/{VAL_SKIN}/styleImages/backgrounds/cartIcon.gif" alt="Shopping Cart" style="border:none; float:right; padding-right:10px; padding-top:4px;" width="36" height="44" />
        </a>
      </div>
      <div id="checkoutNotice"></div>
    </div>
    
    <div style="margin:0 auto; width:887px;">
        <a href="index.php" title="Summer Collection">
            <img id="banner" src="skins/{VAL_SKIN}/styleImages/backgrounds/banner.gif" alt="Summer Collection" width="887" height="116" />
        </a>
    </div>
    
    <div class="colLeft">
      {CATEGORIES}
      {POPULAR_PRODUCTS}
      {SITE_DOCS}
      {MAIL_LIST}
    </div>
    <div class="colMid">
        {PAGE_CONTENT}
    </div>
    <br clear="all" />
    
    <div class="footer">
    Business Name - Business Address - Road - Town - City - Postal Code - Country
    <br clear="all" />
    This web page is Copyright &copy; 2008 Business Name and protected under UK and international law. All rights reserved. 
    <br clear="all" />
    Website Design by <a href="http://www.shopdev.co.uk">ShopDev</a>
    </div>
  </div>
  
</div>
<div id="pageBottom"></div>
{DEBUG_INFO}
</body>
</html>
<!-- END: body -->
