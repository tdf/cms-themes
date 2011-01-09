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
		$Form
	
<% if FolderListing %>
<ul class="dirlist">
<% control FolderListing %> 
<% if isFolder %>
<li class="folder">$Title
<ul>
<% else %>
<li><a href="$URL">$Title</a> - $Size</li>
<% end_if %>
<% if lastItem %>
</ul></li>
<% end_if %>
<% end_control %> 
</ul>
<% end_if %>
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
