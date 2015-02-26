<!-- CUSTOMER PRODUCT REVIEW MOD V0.4 - BY UNLEASHED666 -->
<!-- BEGIN: review -->

<div class="boxContent">
  <h1>{PROD_DESC}</h1>
  <div id="makeReview"> {REVIEW_DESC}
    {SUCCESS}
    {NEED_REG}
    {ERROR_MESS}
    {IP_ERROR} </div>
    
  <form action="index.php?act=review&amp;productId={PRODUCT_ID}" method="post" enctype="multipart/form-data" name="form1" target="_self">
    <input type="hidden" name="productId" value="{PRODUCT_ID}" />
    <input type="hidden" name="productname" value="{FORM_NAME}" />
    <fieldset id="reviewSet">
    
    <p>
    <label for="name">{CUSTOMER_NAME}</label>
    <input name="name" class="textbox"  type="text"  size="30" maxlength="30" style="width:300px;">
    </p>
    
    <p>
    <label for="message">{NEW_COMMENT}</label>
    <textarea name="message" value="{MESSAGE}" cols="40" rows="8" id="message" style="width:300px;"></textarea>
    </p>
    
    <p>
    <label for="stars">{STAR_RATING}</label>
    <select class="textbox" name="stars" style="width:300px;">
      <option selected>{STAR_CHOOSE}</option>
      <option value="0">{STAR_1}</option>
      <option value="1">{STAR_2}</option>
      <option value="2">{STAR_3}</option>
      <option value="3">{STAR_4}</option>
      <option value="4">{STAR_5}</option>
    </select>
    </p>
    
    <p>
    <input type="submit" name="submit" class="submit" value="{SUBMIT_REVIEW}">
    </p>
    </fieldset>
    </td>
  </form>
</div>
<!-- END: review -->
