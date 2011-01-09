<% if Menu(3) %>
	<% include SideBar %>
<% end_if %>
<div <% if Menu(3) %>class="ThirdLevelPage FloatRight"<% end_if %>>
<% if Translations %>
<div id="translations">
 <p>Available translations of this page:</p>
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
		<h1>$Title</h1>
	
		$Content
		$Form
		$PageComments
</div>

