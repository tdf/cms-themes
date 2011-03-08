<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
		<h1>$Title</h1>
		$Content
<a id="nabblelink"
href="http://nabble.documentfoundation.org/Users-f<% if NabbleForum %>$NabbleForum<% else %>1639498<% end_if %>.html">Users</a>
<script>
{
	var nabble_id="a.f<% if NabbleForum %>$NabbleForum<% else %>1639498<% end_if %>";
	var link=document.getElementById("nabblelink");
	if (window.nabble_id && link != null) {
		link.style.display="none";
		document.write("<div id='nabbleforum' style='width:100%'><div style='height:700px'><img src='http://n3.nabble.com/images/loading.png' width=94 height=33 alt='Loading...'></div></div>");
		var e = document.createElement("script");
		e.src = 'http://n3.nabble.com/embed/JsEmbed.jtp?id=' + window.nabble_id + '&node=<% if NabbleForum %>$NabbleForum<% else %>1639498<% end_if %>&url=' + encodeURIComponent(location.href);
		e.type="text/javascript";
		document.getElementsByTagName("head")[0].appendChild(e);
	}
}
</script>
		$Form
		$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
