<!-- BEGIN: adv_search -->
<div class="boxContent">
 <h1>{LANG_SEARCH_TITLE}</h1>
 <fieldset id="reviewSet" style="margin-top:15px;">
  <form method="get" action="index.php" enctype="multipart/form-data">
  <p>
	<label for="searchStr">{LANG_SEARCH_KEYWORD}</label>
	<input type="text" class="textbox" name="searchStr" />
  </p>
  <p>
  	<label for="priceMin">{LANG_SEARCH_PRICE}</label>
	<input type="text" class="textbox" style="width: 50px;" name="priceMin" /> <img src="skins/Catalyst/styleImages/backgrounds/bullet_arrow.gif" alt="to" />
	<input type="text" class="textbox" style="width: 50px;" name="priceMax" />
  </p>
  <p>
  <label for="inStock">{LANG_SEARCH_INSTOCK}</label><input type="checkbox" name="inStock" value="true" style="margin-left:0px;" />
  </p>
  <p>
  <label for="category[]">{LANG_SEARCH_CATEGORY}</label>
  <select name="category[]" class="textbox" multiple="multiple" size="10">
  <!-- BEGIN: adv_search_category -->
	<option value="{OPTION_VALUE}">{OPTION_TITLE}</option>
  <!-- END: adv_search_category -->
  </select><br />
  <span style="margin-left:160px;">{LANG_SEARCH_CATEGORY_HELP}</span>
  </p>
  <p>
  <input type='hidden' name='_a' value='viewCat' />
  <input type="submit" class="submit" name="search" value="{LANG_SEARCH_SUBMIT}" /> <input type="reset" class="submit" value="{LANG_SEARCH_RESET}" />
  </p>
  </form>
  </fieldset>
 </div>
<!-- END: adv_search -->