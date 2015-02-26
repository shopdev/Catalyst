<!-- BEGIN: categories -->
<div class="catTitleLeft"><img src="skins/Catalyst/styleImages/backgrounds/products.gif" width="181" height="33" alt="{LANG_CATEGORY_TITLE}" /></div>
<div class="catContentLeft">
<!-- #:convict:# Advanced DHTML Menu, (c)2007-2008 http://cubecart-mods-skins.com >> -->
<div class="catTree">
        <!-- Advanced Expanding Category Links by convict (c)2006 http://cubecartmods.eu -->
        <div class="catTree">
            <ul class="catTreeTop" style="padding-left:0">
                <li><a href="index.php" class="txtDefault">{LANG_HOME}</a></li>
                <!-- BEGIN: cats --><!-- BEGIN: cats_father_start -->
                <li><a href="index.php?_a=viewCat&amp;catId={DATA.cat_id}" class="txtDefault">{DATA.cat_name}</a>
                <ul id="cat{DATA.cat_id}" style="display: none;">
                <!-- END: cats_father_start --><!-- BEGIN: cats_father_start_open -->
                <li class="currentCat"><a href="index.php?_a=viewCat&amp;catId={DATA.cat_id}" class="txtDefault">{DATA.cat_name}</a>
                <ul id="cat{DATA.cat_id}" style="display: block;">
                <!-- END: cats_father_start_open --><!-- BEGIN: cats_father_start_open_current -->
                <li class="currentCat"><a href="index.php?_a=viewCat&amp;catId={DATA.cat_id}" class="txtDefault">{DATA.cat_name}</a>
                <ul id="cat{DATA.cat_id}" style="display: block;">
                <!-- END: cats_father_start_open_current --><!-- BEGIN: cats_simple -->
                <li><a href="index.php?_a=viewCat&amp;catId={DATA.cat_id}" class="txtDefault">{DATA.cat_name}</a></li>
                <!-- END: cats_simple --><!-- BEGIN: cats_simple_current -->
                <li><a href="index.php?_a=viewCat&amp;catId={DATA.cat_id}" class="txtDefault"><strong>{DATA.cat_name}</strong></a></li>
                <!-- END: cats_simple_current --><!-- BEGIN: cats_father_end -->
                </ul></li>
                <!-- END: cats_father_end --><!-- END: cats -->
                <!-- BEGIN: gift_certificates -->
                <li><a href="index.php?_a=giftCert" class="txtDefault">{LANG_GIFT_CERTS}</a></li>
                <!-- END: gift_certificates -->
                <!-- BEGIN: sale -->
                <li><a href="index.php?_a=viewCat&amp;catId=saleItems" class="txtDefault">{LANG_SALE_ITEMS}</a></li>
                <!-- END: sale -->
            </ul>
        </div>
        <!-- Advanced Expanding Category Links by convict (c)2006 http://cubecartmods.eu -->
    </div>
<!-- #:convict:# Advanced DHTML Menu << -->
</div>
<!-- END: categories -->
