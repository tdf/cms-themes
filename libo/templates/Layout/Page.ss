<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
		<h1>$Title</h1>
	
		$Content
		$Form
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
