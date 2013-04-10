<% if Translations %>
<div id="translations"<% if isRTL %> dir="ltr"<% end_if %>><%-- force to ltr on rtl-pages --%>
 <p>Available translations of this page: <input id="langfilter" type="text" placeholder="filter by iso-code or name"/></p>
 <ul class="translations"><% control Translations %>
  <li class="$Locale.RFC1766"><a href="$Link" hreflang="$Locale.RFC1766" title="$Title"><% if Locale == "en_US" %>English<% else %>$Locale.Nice(true)<% end_if %></a></li>
 <% end_control %></ul>
</div>
<% end_if %>
