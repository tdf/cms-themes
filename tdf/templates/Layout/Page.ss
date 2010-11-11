<% if Menu(2) %>
	<% include SideBar %>
<% end_if %>
<% if Level(2) %>
  	<% include BreadCrumbs %>
<% end_if %>
<% if Translations %>
<div id="translations">
 <p>Available tranlations of this page:</p>
<ul class="translations">
<% control Translations %>
  <li class="$Locale.RFC1766">
    <a href="$Link" hreflang="$Locale.RFC1766" 
title="$Title">
	$Locale.Nice
    <%-- sprintf(_t('SHOWINPAGE','Show page in %s'),$Locale.Nice) --%>
   </a>
  </li>
<% end_control %>
</ul>
</div>
<% end_if %>
	
<div class="typography">
		<h2>$Title</h2>
	
		$Content
		$Form
		$PageComments
</div>
