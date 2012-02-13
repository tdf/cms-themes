<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
		<h1>$Title</h1>
	
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
