<!-- BEGIN: index -->
<script type="text/javascript" language="javascript">
	// load the sale item slideshow
	$(function() {
		var path = rootRel + 'skins/' + skinName + '/php/slideShow.php';
		$("#slideShowContainer").load(path, function() {
			// when loaded, display slideshow
			// START: Sale Items Showcase
				$('.showCase').cycle({ 
					fx:    'fade', 
					pause:  1,
					timeout:  4000
				});
				$('.showCase').hover(function() {
					$('.showCase').cycle('pause');
					$('.paused').fadeIn(ssAnmSpd);
				},function(){
					$('.showCase').cycle('resume');
					$('.paused').fadeOut(ssAnmSpd);
					return false;
				});
			// END: Sale Items Showcase
			$("#slideShowContainer").fadeIn();
		});
	});
</script>
<div id="slideShowContainer" style="display:none;"></div>
<div class="boxContent">
<br />
{HOME_CONTENT}
</div>
<!-- BEGIN: latest_prods -->
	<div class="boxContent">
	<h1>{LANG_LATEST_PRODUCTS}</h1>
		<div style="margin-top: 20px; width:709px;">
		<!-- BEGIN: repeat_prods -->
			<div class="latestProds">
            	<div class="latestProdsImage">
                    <table cellspacing="0" cellpadding="0" border="0" width="100%" style="height: 100%;">
                        <tr>
                            <td height="100%" align="center" valign="middle">
                           		<a href="index.php?_a=viewProd&amp;productId={VAL_PRODUCT_ID}" target="_self" title="{VAL_PRODUCT_NAME}">
                            		<img src="skins/Catalyst/php/getImg.php?src={VAL_IMG_SRC}&amp;height=120&amp;width=120" alt="{VAL_PRODUCT_NAME}" style="border:none;" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="latestProdsName">
				<a href="index.php?_a=viewProd&amp;productId={VAL_PRODUCT_ID}" class="txtlatestProdsName">{VAL_PRODUCT_NAME}</a>
                </div>
				<div class="latestProdsPrice"><div class="txtSale">{TXT_SALE_PRICE}</div><div class="txtPrice" style="float:none;">{TXT_PRICE}</div></div>
			</div>
		<!-- END: repeat_prods -->
		<br clear="all" />
		</div>
		<br clear="all" />
		
		
	</div>
<!-- END: latest_prods -->
<!-- END: index -->