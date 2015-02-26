<!-- BEGIN: view_cat -->
<script language="javascript" type="text/javascript">
/* Identify pagination bar and remove if empty */
$(function(){
var pagination = $(".pagination").html();
if (pagination == '') {
	$(".pagination").hide();
}
});
</script>
<div class="boxContent">
  <h1>{TXT_CAT_TITLE}</h1>
  <!-- BEGIN: cat_desc -->
    <div class="docBody">{TXT_CAT_DESC}</div>
  <!-- END: cat_desc -->
  <!-- BEGIN: sub_cats -->
  <div id="subCats" class="clearfix">
    <!-- BEGIN: sub_cats_loop -->
    <div class="subCat">
        <table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="middle" align="center" style="text-align:center;">
                    <a href="index.php?_a=viewCat&amp;catId={TXT_LINK_CATID}" class="txtDefault">
                    	<img src="skins/Catalyst/php/getImg.php?src={IMG_CATEGORY}&amp;width=170&amp;height=130" alt="{TXT_CATEGORY}" border="0" title="{TXT_CATEGORY}" />
                    </a>
                </td>
            </tr>
        </table>
        <a href="index.php?_a=viewCat&amp;catId={TXT_LINK_CATID}" class="subCatName">{TXT_CATEGORY}</a>
    </div>
    <!-- END: sub_cats_loop -->
	<br clear="all" style="line-height:0px;" />
  </div>
  
  <!-- END: sub_cats -->
  <!-- BEGIN: cat_img -->
  <!-- END: cat_img -->
  <!-- BEGIN: pagination_bot -->
  <div class="pagination">{PAGINATION}</div>
  <!-- END: pagination_bot -->
  <!-- BEGIN: productTable -->
  
  <div id="sort">
  <a class="txtLink" onclick="goUrl('sortMethod');" href="#" style="display:block; float:right; height:14px; padding-left:7px; padding-right:7px;">{LANG_SORT}</a>
  <select id="sortMethod" class="dropDown" style="display:block; float:right; height:20px; background:#FFF url(../styleImages/backgrounds/page_gradient.jpg) repeat-x scroll center bottom; border:1px solid #D3D3D3; font-size:12px; color:#666666;" >
      <option value="{SORT_NAME}"{SORT_NAME_SELECTED}>{LANG_NAME}</option>
      <option value="{SORT_PRICE}"{SORT_PRICE_SELECTED}>{LANG_PRICE}</option>
  </select>
  <br clear="all" style="line-height:0px;" />
  <br clear="all" style="line-height:0px;" />
  </div>
  
  <!-- BEGIN: products -->
  <div class="viewCatProduct">
    <h2 class="txtViewCatProductName"><a href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}" target="_self" class="txtViewCatProductName">{TXT_TITLE}</a></h2>
    <div class="viewCatProductImage">
    	<table cellspacing="0" cellpadding="0" border="0" width="100%" style="height: 100%;">
            <tr>
                <td height="100%" align="center" valign="top">
                    <a href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}" target="_self" title="{PRODUCT_ID}">
                        <img src="skins/Catalyst/php/getImg.php?src={SRC_PROD_THUMB}&amp;height=120&amp;width=120" alt="{TXT_TITLE}" style="border:none;" />
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <div class="viewCatProductDetails">
      <div class="txtviewCatProductDescription">{TXT_DESC}</div>
      <div class="txtOutOfStock">{TXT_OUTOFSTOCK}</div>
      <div class="txtSale" style="text-align:left;">{TXT_SALE_PRICE}</div>
      <div><span class="txtPrice" style="float:none;">{TXT_PRICE}</span></div>
      <div class="viewCatProductButtons">
        <form action="skins/Catalyst/php/ajaxCart.php" method="post" name="prod{PRODUCT_ID}" id="myForm{PRODUCT_ID}">
          <!-- BEGIN: buy_btn -->
          <input type="hidden" name="add" value="{PRODUCT_ID}" />
          <input type="hidden" name="quan" value="1" />
          <input type="hidden" name="opt" value="1" />
          <input type="hidden" name="vShift" value="33" />
          <div class="addToCartWhiteBG" id="buy-{PRODUCT_ID}" title="{BTN_BUY}" onclick="doAddToCart({PRODUCT_ID})" style="float:left;"></div>
          <!-- END: buy_btn -->
          <div class="more" style="float:left;"><a href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}" target="_self" class="linkFill" title="{BTN_MORE}"></a></div>
        </form>
      </div>
      <br clear="all" style="line-height:0px;" />
    </div>
    <div class="AJAX-done" id="AJAX-confirm-{PRODUCT_ID}"></div>
    <div class="AJAX-process" id="AJAX-process-{PRODUCT_ID}"></div>
    <div class="AJAX-opt" id="AJAX-opt-{PRODUCT_ID}"></div>
    <br clear="all" />
  </div>
  <!-- END: products -->
  <!-- END: productTable -->
  <!-- BEGIN: noProducts -->
  <!-- END: noProducts -->
  <div class="pagination">{PAGINATION}</div>
</div>
<!-- END: view_cat -->
