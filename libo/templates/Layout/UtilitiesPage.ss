<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
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
		<h2>$Title</h2>
	
		$Content
<div id="formresponse"></div>
<% if Result %>
<p>result: $Result</p>
<% end_if %>
		$ModerateTranslateForm
		$Form
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
