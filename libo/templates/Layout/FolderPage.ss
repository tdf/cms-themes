<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
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
