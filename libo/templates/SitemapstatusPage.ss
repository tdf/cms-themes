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
			 @import url(themes/tdf/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	<div id="BgContainer">
		<div id="Container">
			<div id="Header">
				$SearchForm
		   		<h1>$SiteConfig.Title</h1>
		    	<p>$SiteConfig.Tagline</p>
			</div>
		
			<div id="Navigation">
				<% include Navigation %>
		  	</div>
	  	
		  	<div class="clear"><!-- --></div>
		
			<div id="Layout">
			  $Layout
<div class="typography">
<ul class="sitemap">
<% control SitemapStatus %>
<% if controllist == open %><ul><% else_if controllist == close %></li><% else_if controllist == closeul %></ul><% else %>
<%-- working  <li>$Title - $Link<ul><% control ControlTranslations %><li class="$locale">$locale $page.Title $page.Link</li><% end_control %></ul> --%>
<li style="margin-right: 0px;"><div style="width:100%"><a href="$Link">$Title</a><% control ControlTranslations %><div class="$Stage" style="margin-left:15px;text-align: center; width:70px; float:right">
<% if page.ExistsOnLive %><a href="$page.Link" title="$page.Title">$locale</a><% else %>$locale<% end_if %>

</div><% end_control %><div class="clear"></div></div>
<% end_if %>
<% end_control %>
</ul>
<p>Legend:</p>
<div class="live">published page</div><div class="changed">published, but changed on draft site</div><div class="unpublished">created, but not published</div><div class="missing">missing completely</div>
</div>
			</div>
		
		   <div class="clear"><!-- --></div>
		</div>
		<div id="Footer">
			<% include Footer %>
		</div> 
	</div>
</body>
</html>
