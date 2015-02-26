<!-- BEGIN: view_prod -->
<script type="text/javascript" language="JavaScript" src="skins/Catalyst/php/compress.php?get=../javascript/jquery.fancybox-1.2.1.js"></script>
<script type="text/javascript" language="JavaScript">
	$(function(){
		$("a.useLightbox").fancybox({
			'hideOnContentClick': true,
			'zoomOpacity': true,
			'zoomSpeedIn': 400,
			'zoomSpeedOut': 400,
			'zoomSpeedChange': 400,
			'overlayShow': true,
			'overlayOpacity': 0.3,
			'centerOnScroll': true,
			'padding': 10
		});
	});
</script>
<div class="boxContent">
  <!-- BEGIN: prod_true -->
  <form action="skins/Catalyst/php/ajaxCart.php" method="post" name="prod{PRODUCT_ID}" id="myForm{PRODUCT_ID}" target="_self">
    <input type="hidden" name="add" value="{PRODUCT_ID}" />
    <input type="hidden" name="opt" value="0" />
    <input type="hidden" name="vShift" value="33" />
    <h1>{TXT_PRODTITLE}</h1>
    <!-- BEGIN: opts_notice -->
    <div class="errorStatus" style="margin-top:15px;">{LANG_OPTS_NOTICE}</div>
    <!-- END: opts_notice -->
    <div class="viewProdContainer">
      <div style="text-align: center; width:325px; height:325px; margin:10px; overflow:hidden; float:left; display:inline; position:relative;">
        <table cellspacing="0" cellpadding="0" border="0" width="100%" style="height: 100%;">
            <tr>
                <td height="100%" align="center" valign="middle">
                    <a rel="gallery" href="skins/Catalyst/php/getImg.php?src={IMG_SRC}" class="useLightbox" target="_self">
                        <img src="skins/Catalyst/php/getImg.php?src={IMG_SRC}&amp;height=300&amp;width=300" alt="{TXT_PRODTITLE}" style="border:none;" />
                    </a>
                </td>
            </tr>
        </table>
      </div>
      <div class="viewProdDetails">
        <div class="txtDetailName">Product Details:</div>
        <div class="stockLevel">{TXT_INSTOCK}<span class="txtOutOfStock">{TXT_OUTOFSTOCK}</span></div>
        <div class="productCode">{LANG_PRODCODE} {TXT_PRODCODE} </div>
        <div class="tellAFriend"><a href="index.php?_a=tellafriend&amp;productId={PRODUCT_ID}" target="_self" class="txtDefault">{LANG_TELLFRIEND}</a></div>
        <div class="bookmark">
          <!-- AddThis Bookmark Button BEGIN -->
          <script type="text/javascript">
                  addthis_url    = location.href;   
                  addthis_title  = document.title;  
                  addthis_pub    = '';     
                </script>
          <script type="text/javascript" src="http://s7.addthis.com/js/addthis_widget.php?v=12" ></script>
          <!-- AddThis Bookmark Button END -->
        </div>
        <br clear="all" />
        <!-- BEGIN: prod_opts -->
        <div class="txtDetailName">{TXT_PROD_OPTIONS}</div>
        <table id="prodOptions">
          <!-- BEGIN: repeat_options -->
          <tr class="prodOptionsTR">
            <td valign="top" style="padding-top:3px;"><div class="optionName">{VAL_OPTS_NAME}</div></td>
            <td style="background-color:#F9F9F9; padding-top:3px;"><select name="productOptions[{VAL_OPTION_ID}]">
                <!-- BEGIN: repeat_values -->
                <option value="{VAL_ASSIGN_ID}"> {VAL_VALUE_NAME}
                <!-- BEGIN: repeat_price -->
                ({VAL_OPT_SIGN}{VAL_OPT_PRICE})
                <!-- END: repeat_price -->
                </option>
                <!-- END: repeat_values -->
              </select>
            </td>
          </tr>
          <!-- END: repeat_options -->
          <!-- BEGIN: text_opts -->
            <tr class="prodOptionsTR">
              <td valign="top" style="padding-top:3px;"><div class="optionName">{VAL_OPTS_NAME} <!-- BEGIN: repeat_price -->({VAL_OPT_SIGN}{VAL_OPT_PRICE})<!-- END: repeat_price --></div></td>
              <td style="background-color:#F9F9F9; padding-top:3px;">
                <!-- BEGIN: textbox -->
                <input type="text" name="productOptions[{VAL_OPTION_ID}]" />
                <!-- END: textbox -->
                <!-- BEGIN: textarea -->
                <textarea name="productOptions[{VAL_OPTION_ID}]" rows="2" cols="22"></textarea>
                <!-- END: textarea -->
              </td>
            </tr>
        <!-- END: text_opts -->
        </table>
        <!-- END: prod_opts -->
        <br clear="all" />
        <div style="float:left;">
          <div class="prodPrice">{TXT_SALE_PRICE_VIEW}</div>
          <div class="txtPrice">{TXT_PRICE_VIEW}</div>
          <br />
        </div>
        <div style="float:left">
          <div style="font-size:12px; color:#999999; margin-left:10px; margin-right:10px; margin-top:7px;">X</div>
        </div>
        <div style="float:left">
          <input name="quan" type="text" value="1" size="2" style="text-align:center; height:20px; width:34px; padding-top:5px; border:1px solid #e1e1e1; color:#4F4F4F;" title="{LANG_QUAN}" />
        </div>
        <br clear="all" style="line-height:0px;" />
        <!-- BEGIN: buy_btn -->
        <br clear="all" style="line-height:0px;" />
        <div class="addToCart" style="margin-left:-4px;" id="buy-{PRODUCT_ID}" title="{BTN_ADDBASKET}" onclick="doAddToCart({PRODUCT_ID})"></div>
        <div class="AJAX-done" id="AJAX-confirm-{PRODUCT_ID}"></div>
        <div class="AJAX-process" id="AJAX-process-{PRODUCT_ID}"></div>
        <!-- END: buy_btn -->
        <br clear="all" />
      </div>
      <br clear="all" style="line-height:0px;" />
      <br clear="all" style="line-height:0px;" />
    </div>
    <br clear="all" />
  </form>
  <div id="tabs" class="usual">
    <!-- START - Tabs -->
    <div class="tabs">
      <ul class="tabMenu">
        <li><a id="descriptionTab" href="#productDescription" onmousedown="javascript:readDescription();">{LANG_PRODINFO}</a><a id="readDescriptionLink" href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}" style="display:none;"></a></li>
        <li id="moreImagesTab" style="display:none;"><a href="#moreImages">More Images</a></li>
        <li><a href="#reviews" id="reviewsTab" onmousedown="javascript:readReview();">Reviews</a><a id="readReviewLink" href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}&amp;review=read" style="display:none;"></a></li>
      </ul>
      <br clear="all" style="line-height:0px;" />
      <!-- END - Tabs -->
      <!-- START - Tab Content -->
      <div id="productDescription" class="tabContent">{TXT_DESCRIPTION}</div>
      <div id="moreImages" class="tabContent" style="padding-left:11px; padding-right:5px; display:none;"> <br style="line-height:10px;" />
        <!-- BEGIN: popup_gallery -->
        <script type="text/javascript">
            $(document).ready(function() {
            	$(".images").css("display","block");
            });
        </script>
        <div style="text-align: left;"><a href="java script:openPopUp('index.php?_g=ex&amp;_a=prodImages&amp;productId={PRODUCT_ID}', 'images', 548, 455, 0);" class="txtDefault">{LANG_MORE_IMAGES}</a></div>
        <!-- END: popup_gallery -->
        <!-- BEGIN: image_gallery -->
        <script type="text/javascript" language="javascript">
			$(function() {
				$("li#moreImagesTab").css("display","block");
			});
	    </script>
        <!-- BEGIN: img_repeat -->
        <div style="width:120px; height:120px; float:left; display:inline; clear:none; margin-right:5px; margin-left:5px; margin-bottom:15px; border:1px solid #E1E1E1;">
        	<a rel="gallery" href="skins/Catalyst/php/getImg.php?src={VALUE_IMG_SRC}" class="useLightbox">
            	<img src="skins/Catalyst/php/getImg.php?src={VALUE_IMG_SRC}&amp;width=120&amp;height=120&amp;fill=1" alt="{TXT_PRODTITLE}" style="border:none;" />
            </a>
        </div>
        <!-- END: img_repeat -->
        <br clear="all" style="line-height:0px;" />
        <!-- END: image_gallery -->
        <br clear="all" style="line-height:0px;" />
      </div>
      <div id="reviews" class="tabContent" style="display:none;">
        <!-- BEGIN: write_review -->
        <script type="text/javascript">
		$(function() {
			// switch to review tab
			$('a#reviewsTab').click();
		});
		</script>
        <form action="index.php?_a=viewProd&amp;review=write&amp;productId={PRODUCT_ID}#write_review" method="post" id="write_review" class="boxContent">
          <!-- BEGIN: error -->
          <div class="errorStatus">{VAL_ERROR}</div>
          <!-- END: error -->
          <!-- BEGIN: success -->
          <div class="successStatus">{VAL_SUCCESS}</div>
          <!-- END: success -->
          <!-- BEGIN: form -->
          <div class="infoStatus">{LANG_SUBMIT_REVIEW_COMPLETE}</div>
          <fieldset id="reviewSet" style="width:auto; margin-bottom:0;">
          <legend>{LANG_SUBMIT_REVIEW}</legend>
            <p>
            <label for="type">{LANG_REVIEW_TYPE}</label>
              <select name="review[type]" style="width: 152px;" class="textbox">
                <option value="0" onclick="findObj('rating_p').style.display = '';" {VAL_REV_TYPE_R_SELECTED}>{LANG_REVIEW}</option>
                <option value="1" onclick="findObj('rating_p').style.display = 'none';" {VAL_REV_TYPE_C_SELECTED}>{LANG_COMMENT}</option>
              </select>
              <br clear="all" />
            </p>
            
            <p id="rating_p">
            <label for="star0">{LANG_RATING}</label>
            <img src="images/general/px.gif" alt="0" name="star0" width="15" height="15" id="star0" onclick="stars(0,'{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" onmouseover="starsHover(0,'{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" onmouseout="starsOut('{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" style="cursor: pointer; cursor: hand; margin-left:-18px;" />
              <!-- BEGIN: review_stars --><img src="skins/{VAL_SKIN}/styleImages/icons/rating/{VAL_STAR}.gif" alt="{VAL_STAR_I}" name="star{VAL_STAR_I}" width="15" height="15" id="star{VAL_STAR_I}" onclick="stars({VAL_STAR_I},'{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" onmouseover="starsHover({VAL_STAR_I},'{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" onmouseout="starsOut('{VAL_ROOT_REL}skins/{VAL_SKIN}/styleImages/icons/rating/');" style="cursor: pointer; cursor: hand; padding-left:2px; padding-right:2px;" /><!-- END: review_stars -->
            </p>
            
            <!-- BEGIN: spambot -->
            <p>
            <label for="spambot">{LANG_SPAMBOT}</label>
            {IMG_SPAMBOT}<br />
            <input name="review[spambot]" type="text" class="textbox" style="width: 118px; margin-left:160px; margin-top:10px;" maxlength="5" />
            </p>
            <!-- END: spambot -->
            
            <p>
            <label for="name">{LANG_NAME}</label>
            <input name="review[name]" type="text" style="width: 150px;" class="textbox" value="{VAL_REV_NAME}" onclick="this.value = ''" />
            </p>
            
            <p>
            <label for="email">{LANG_EMAIL} {LANG_NOT_DISPLAYED}</label>
            <input name="review[email]" type="text" style="width: 150px;" class="textbox" value="{VAL_REV_EMAIL}" />
            </p>
            
            <p>
            <label for="title">{LANG_TITLE}</label>
            <input name="review[title]" type="text" style="width: 150px;" class="textbox" value="{VAL_REV_TITLE}" />
            </p>
            
            <p>
            <label for="review">{LANG_DETAILS}</label>
            <textarea name="review[review]" style="width:455px;" rows="7" cols="57" wrap="hard" class="textbox">{VAL_REVIEW}</textarea>
            </p>
            
            <p>
              <input name="ESC" type="hidden" value="{VAL_ESC}" />
              <input type="hidden" name="review[rating]" id="rating_val" value="{VAL_RATING}" />
              <input name="submit" type="submit" value="{LANG_SUBMIT_REVIEW}" class="submit" />
            </p>
        </fieldset>
        </form>
        <!-- END: form -->
        <!-- END: write_review -->
        <!-- BEGIN: read_review -->
		<script type="text/javascript">
	    $(function() {
			// switch to review tab
	        $('a#reviewsTab').click();
	    });
	    </script>
        <div style="text-align:right">{VAL_REVIEW_PAGINATION}</div>
        <!-- BEGIN: reviews_true -->
        <br style="line-height:10px;" />
        <div class="review">
            <div class="reviewTitleBar clearfix">
            	<span class="reviewer">{VAL_REVIEW_TITLE}</span>
                <span class="reviewDate">{VAL_REVIEW_DATE}</span>
            </div>
            <div class="reviewDetails">
            <div class="reviewStars">
                <!-- BEGIN: review_stars -->
                	<img src="skins/{VAL_SKIN}/styleImages/icons/rating/{VAL_REVIEW_STAR}.gif" width="15" alt="" height="15" />
                <!-- END: review_stars -->
            </div>
            <div class="reviewComments"><strong style="color:#666666;">Reviewed By:</strong>&nbsp;&nbsp;{VAL_REVIEW_NAME}</div>
            <div class="reviewComments">&quot;{VAL_REVIEW}&quot;</div>
            </div>
        </div>
        <!-- END: reviews_true -->
        <div style="text-align:right">{VAL_REVIEW_PAGINATION}</div>
        <br clear="all" style="line-height:0px;" />
        <!-- BEGIN: reviews_false -->
        <span class="noReviews">{LANG_NO_REVIEWS_MADE}</span>
        <!-- END: reviews_false -->
        <br clear="all" style="line-height:0px;" />
        <span class="addReview"><a href="index.php?_a=viewProd&amp;productId={PRODUCT_ID}&amp;review=write#write_review" target="_self" class="txtDefault">Add Product Review</a></span>
        <br clear="all" style="line-height:0px;" />
        <br clear="all" style="line-height:0px;" />
        <!-- END: read_review -->
      </div>
    </div>
  </div>
  <!-- END - Tabs -->
  <!-- BEGIN: related_products -->
	<h1 style="margin-top:15px; margin-bottom:15px;">{LANG_RELATED_PRODUCTS}</h1>
	<div class="boxContent" style="padding:0px;">
	  <div class="latestProdsContainer clearfix" style="width: 709px;">
	    <!-- BEGIN: repeat_prods -->
	      <div class="latestProds">
	      	<div class="AJAX-process AJAX-process-{VAL_PRODUCT_ID}"></div>
	      	<div class="AJAX-confirm AJAX-confirm-{VAL_PRODUCT_ID}"><a href="index.php?_g=co&amp;_a=cart" title="Checkout"></a></div>
			<div class="latestProdsImage">
	        <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" style="height:100%;">
	          <tr>
	            <td valign="middle" align="center" height="100%" style="text-align:center;">
					<a href="index.php?_a=viewProd&amp;productId={VAL_PRODUCT_ID}">
						<img src="skins/Catalyst/php/getImg.php?src={VAL_IMG_SRC}&amp;width=120&amp;height=120" alt="{VAL_PRODUCT_NAME}" border="0" title="{VAL_PRODUCT_NAME}" />
					</a>
				</td>
	          </tr>
	        </table>
			</div>
	        <div class="latestProdsName"><a href="index.php?_a=viewProd&amp;productId={VAL_PRODUCT_ID}" class="txtlatestProdsName">{VAL_PRODUCT_NAME}</a> <br />
		        <div class="latestProdsPrice">
		          	<div class="txtSale">{TXT_SALE_PRICE}</div>
					<div class="txtPrice" style="float: none;">{TXT_PRICE}</div>
				</div>
	        </div>
		  </div>
	    <!-- END: repeat_prods -->
	  </div>
	</div>
  <!-- END: related_products -->
  <br />
  <!-- END: prod_true -->
  <!-- BEGIN: prod_false -->
  <p>{LANG_PRODUCT_EXPIRED}</p>
  <!-- END: prod_false -->
</div>
<!-- END: view_prod -->
