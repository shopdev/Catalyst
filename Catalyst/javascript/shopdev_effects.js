/* 
	All Source Code is Copyright (2008) ShopDev: http://www.shopdev.co.uk
	All Rights Reserved.
	You are prohibited from copying or making derivitive works from any code herein without prior written permission of ShopDev.
	This file is intened for use with the Catalyst Reloaded CubeCart Skin (for CubeCart V4).
	
	File Version: 1.3
	Released: 22nd November 2009	
*/

// START: Global Variables - change these if you wish
	var skinName = "Catalyst";				// Name of the directory containing the skin (you may only change this if you have purchased a rebranding license).
	var noAJAX = false;						// Disable the AJAX Add To Cart feature (will still use JavaScript, but not AJAX).
	var ssAnmSpd = "normal";				// Sale Item Slideshow animation speed (options: "fast", "normal", "slow").
	var timeOutVal = 6000;					// Number of milliseconds (i.e. 1000ms = 1s) to wait for an AJAX response before retrying
	var minLoadDelay = 1000;				// Minimum number of milliseconds (i.e. 1000ms = 1s) to display loading box before redirecting to either product description or product review pages
// END: Global Variables - don't change anything below this line

// START: document.ready
$(function() {

	// START: AJAX Add To Cart - Copyright ShopDev.co.uk 
		$("#ajaxCart").load(rootRel + 'skins/' + skinName + '/php/ajaxCart.php' + '?nocache=' + Math.random());
	// END: AJAX Add To Cart - Copyright ShopDev.co.uk 
	
	// START: viewProd Tabs
    var tabContainers = $('div.tabs > div');
    
    $('div.tabs ul.tabMenu a').click(function () {
        tabContainers.hide().filter(this.hash).show();
        
        $('div.tabs ul.tabMenu a').removeClass('selected');
        $(this).addClass('selected');
        
        return false;
    }).filter(':first').click();
	// END: viewProd Tabs
	
	
});
// END: document.ready
	
// START: AJAX Add To Cart - Copyright ShopDev.co.uk 
	var options = { 
		beforeSubmit: showRequest,
		success: showResponse,
		timeout: timeOutVal,
		error: timeoutError
	}; 
	
	function doAddToCart(productID, manual) { 
		if (manual == true) {
			// used for debugging mostly - no ajax
			$('#myForm'+productID).submit();
		}
		if (noAJAX == true) {
			// just submit the form
			$('#myForm'+productID).submit();
		} else {
			// use ajax. woohoo!
			errorProdID = productID;
			$('#myForm'+productID).ajaxSubmit(options);
			return false;
		}
	}; 
	
	function showRequest(formData, jqForm, options) { 
		// form data array
		var showReqData = jqForm[0];
		// product id
		var prodID = showReqData['add'].value;
		// number of pixels to shift background vertically
		var vShift = showReqData['vShift'].value;
		// hide loading icon
		$('#AJAX-confirm-'+prodID).hide();
		// show cart icon
		$('#AJAX-process-'+prodID).show();
		// shift the background of the button div
		$('#buy-'+prodID).css("background-position","0% " + ("-" + (vShift*2 + "px")));
		return true; 
	} 
					  
	function showResponse(response, jqForm, jQueryform, options) {
		// form data array
		var showResData = jQueryform[0];
		// product id
		var prodID = showResData['add'].value;
		// number of pixels to shift background vertically
		vShift = showResData['vShift'].value;
		// check to redirect
		if (response.indexOf('http://') == 0) {
			window.location = response;
			return false; // don't continue, just redirect
		}
		// run the usual confirmation routine
		doSuccess(prodID,response);
	}
	
	function doSuccess(prodID, response) {
		// update cart with response
		jQuery("#ajaxCart").html(response);
		// hide the loading icon
		$("#AJAX-process-" + prodID).hide();
		// show the cart icon
		$("#AJAX-confirm-" + prodID).show();
		// shift the background of the button div
		$("#buy-" + prodID).css("background-position","0% " + ("-" + (vShift*3 + "px")));
	}
	
	// if submission times out
	function timeoutError(options) {
		// count the number of errors
		if (jQuery.cookie(cookiePrefix + "ajax_errors") == 'NaN') {
			jQuery.cookie(cookiePrefix + "ajax_errors", 1, { expires: cookieExp, path:cookiePath });
		} else {
			jQuery.cookie(cookiePrefix + "ajax_errors", parseFloat(jQuery.cookie(cookiePrefix + "ajax_errors")) + 1, { expires: cookieExp, path:cookiePath });
		}
		// retry adding the item
		doAddToCart(errorProdID,false);
	}
// END: AJAX Add To Cart - Copyright ShopDev.co.uk

// START: Stars - Hover
function starsHover(rating, pathImg) {
	/* Positive Stars */
	for (var i = 0; i <= rating; i++) {
		if (i>0) findObj("star"+i).src = pathImg+'1.gif';
	}
	/* Negative Stars */
	for (var i = rating+1; i <= 5; i++) {
		findObj("star"+i).src = pathImg+'0.gif';
	}
}
// END: Stars - Hover

// START: Stars - Mouse Out
function starsOut(pathImg) {
	var val = $("#rating_val").val();
	if (val == "") { val = 0; }
	/* Show selected stars as per rating */
	for (var i = 0; i <= val; i++) {
		if (i>0) {
			$("#star"+i).attr({src: pathImg+"1.gif"});
		}
	}
	/* Hide stars higher than selected rating */
	for (var i = 0; (i <= 5); i++) {
		if (i>val) {
			$("#star"+i).attr({src: pathImg+"0.gif"});
		}
	}
}
// END: Stars - Mouse Out

// START: Read Review Redirect (with SEO URL) - Copyright ShopDev.co.uk
	function readReview() {
		var isIE = ($.browser.msie && parseInt($.browser.version.substr(0,1)) < 8);
		if (isIE) {
			$('embed, object, select').css('visibility', 'hidden');
		}
		$("#fancy_overlay").css('opacity', 0.3).show();
		$.fn.fancybox.showLoading("nohide");
		setTimeout("redirectReview()",minLoadDelay);
		return false;
	}
	function redirectReview() {
		var reviewLink = $("#readReviewLink").attr("href");
		window.location = reviewLink;
	}
	function readDescription() {
		var isIE = ($.browser.msie && parseInt($.browser.version.substr(0,1)) < 8);
		if (isIE) {
			$('embed, object, select').css('visibility', 'hidden');
		}
		$("#fancy_overlay").css('opacity', 0.3).show();
		$.fn.fancybox.showLoading("nohide");
		setTimeout("redirectDescription()",minLoadDelay);
		return false;
	}
	function redirectDescription() {
		var productLink = $('a#readDescriptionLink').attr("href");
		window.location = productLink;
	}
// END: Read Review Redirect (with SEO URL) - Copyright ShopDev.co.uk