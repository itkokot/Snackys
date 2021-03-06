<header class="hidden-print {if isset($snackyConfig.pagelayout) && $snackyConfig.pagelayout === 'fluid'}container-block{/if}{if $snackyConfig.static_header === 'Y'} fixed-navbar{/if}" id="evo-nav-wrapper">
	<div class="container">
		{block name="header-container-inner"}
			{block name="header-branding"}
				{block name="header-branding-content"}
					<div id="shop-nav">
						<div class="inside">
						<div class="col-xs-4 col-sm-4 sidebar-menu-wrapper">
							<div id="mobile-nav-toggle" class="pr">
								<div class="menu-toggle">
									<div class="hamburger">
										<span></span>
										<span></span>
										<span></span>
									</div>
									<div class="cross">
										<span></span>
										<span></span>
									</div>
								</div>
							</div>
							<div id="sr-tg-m" class="pr visible-xs">
								<span class="img-ct icon">
									<svg class="icon-darkmode">
									  <use xlink:href="{if empty($parentTemplateDir)}{$currentTemplateDir}{else}{$parentTemplateDir}{/if}img/icons/icons.svg#icon-search"></use>
									</svg>
								</span>
								<span class="close"></span>
							</div>
						</div>
						<div id="search" class="col-xs-12 col-sm-4">
							<form action="navi.php" method="GET">
								<div class="input-group">
									<input name="qs" type="text" class="form-control ac_input" placeholder="{lang key='search'}" autocomplete="off" aria-label="{lang key='search'}"/>
									<span class="input-group-addon pr">
										<button type="submit" name="search" id="search-submit-button" aria-label="{lang key='search'}">
											<span class="img-ct icon">
												<svg class="{if $darkHead == 'true' || $darkMode == 'true'}icon-darkmode{/if}">
												  <use xlink:href="{if empty($parentTemplateDir)}{$currentTemplateDir}{else}{$parentTemplateDir}{/if}img/icons/icons.svg#icon-search"></use>
												</svg>
											</span>
										</button>
									</span>
								</div>
							</form>
						</div>
						<div class="col-xs-4" id="logo" itemprop="publisher" itemscope itemtype="http://schema.org/Organization" itemid="">
							{include file='layout/shoplogo.tpl'}
						</div>
						{block name="header-branding-shop-nav"}
							<div class="col-xs-4">
								{include file='layout/header_shop_nav.tpl'}
							</div>
						{/block}
						</div>
					</div>
				{/block}
			{/block}{* /header-branding *}
		{/block}
	</div>{* /container *}
	{if isset($snackyConfig.pagelayout) && $snackyConfig.pagelayout !== 'fluid'}
		<div class="container">
	{/if}

	{block name="header-category-nav"}
	{/block}


	{if isset($snackyConfig.pagelayout) && $snackyConfig.pagelayout !== 'fluid'}
		</div>{* /container-block *}
	{/if}
	{if $nSeitenTyp !== 11}
		<div class="category-nav navbar-wrapper hidden-xs" id="cat-w">
			{include file="layout/header_category_nav_fullscreen.tpl"}
		</div>{* /category-nav *}
	{/if}
</header>
{if $nSeitenTyp !== 11}

	{include file='layout/breadcrumb.tpl'}
{/if}