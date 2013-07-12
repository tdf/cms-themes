<% uncached %>
<!-- donatelayout -->
<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
		<h1>$Title</h1>
<% include DonateDownload %>
		$Content
		$Form
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
<% end_cached %>
