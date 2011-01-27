<!DOCTYPE html>

<html lang="$ContentLocale">
	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/david/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	<div id="BgContainer">
		<div id="Container">

			<div id="TopHeader">
				<a id="Logo" href="<% control Page(/) %>$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %><% end_control %>></a>
			    	<p id="HeaderTagLine">$SiteConfig.Tagline</p>
			</div>

			<div id="BottomHeader"<% if Menu(2) %><% else %> class="SingleMenu"<% end_if %>>
				<% include Navigation %>
				<% include SecondNavigation %>
				<hr />
			</div>
		
			<div id="Layout">
				$Layout
				<hr />
			</div>

			<div id="Footer">
				<% include Footer %>
			</div>

		</div> 
	</div>
</body>
</html>
