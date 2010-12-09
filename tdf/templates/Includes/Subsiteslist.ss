<% if SubsitesListing %>
<ul class="subsitelist table">
<% control SubsitesListing %>
 <li class="$Lang"><a href="$absoluteBaseURL">$absoluteBaseURL</a> $Language $LangNative ($LangEnglish)</li><% end_control %>
</ul>
<% end_if %>
