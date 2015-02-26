<!-- BEGIN: search_form -->
<script type="text/javascript" language="javascript">
	$(function() {
		$("#advancedSearch").hover(function() {
			$("#advancedSearch").css("display","block");
		},function(){
			$("#advancedSearch").css("display","none");
		});
		$("#btnSearch").hover(function() {
			$("#advancedSearch").css("display","block");

		},function(){
			$("#advancedSearch").css("display","none");
		});
	});
</script>
<div id="searchBar">
<div id="advancedSearch">
	<a href="index.php?_a=search" class="advancedSearch">{LANG_ADVANCED_SEARCH}</a>
</div>
<div id="searchBar-Left"></div>
<form action="index.php" method="get" name="searchForm">
<input name="searchStr" type="text" class="searchForm" id="searchStr" onfocus="if(this.value=='search...') this.value='';" onblur="if(this.value=='') this.value='search...';" value="search..." size="20" />
<input type="hidden" name="_a" value="viewCat" />
<div id="btnSearch" onclick="document.searchForm.submit();"></div>
</form>
<div id="searchBar-Right"></div>
</div>
<!-- END: search_form -->