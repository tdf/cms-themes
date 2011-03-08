<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
	
		$Content
<% cached %>
		<% include Widgets %>
<% end_cached %>
		$ContentBelow
		$Form
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
