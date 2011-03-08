<% if Translations %>
<div id="translations">
 <p>Available translations of this page:</p>
 <ul class="translations"><% control Translations %>
  <li class="$Locale.RFC1766"><a href="$Link" hreflang="$Locale.RFC1766" title="$Title">$Locale.Nice(true)</a></li>
 <% end_control %></ul>
</div>
<% end_if %>
