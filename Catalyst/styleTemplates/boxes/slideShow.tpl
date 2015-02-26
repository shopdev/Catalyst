<!-- BEGIN: slide_show -->
	<ul class="showCase" style="position:relative;">
		<!-- BEGIN: li -->
			<li class="showCaseProduct">
				<div class="showCaseSaleImage" style="background:#FDFDFD;">
					<table cellspacing="0" cellpadding="0" border="0" width="100%" style="height: 100%;">
						<tr>
							<td height="100%" align="center" valign="middle">
								<a href="index.php?_a=viewProd&amp;productId={DATA.productId}" title="{DATA.name}">
									<img src="skins/{SKIN}/php/getImg.php?src={DATA.image}&amp;width=120&amp;height=120" alt="{DATA.name}" style="border:none;" />
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div class="showCaseDetails">
					<div class="showCaseTitle">
						<a href="index.php?_a=viewProd&amp;productId={DATA.productId}">
							{DATA.name}
						</a>
					</div>
					<div class="saleDesc">
						{DATA.description}
					</div>
					<div class="saleTag">
						{DATA.saving}
					</div>
					<div class="paused"></div>
				</div>
			</li>
		<!-- END: li -->
	</ul>
<!-- END: slide_show -->