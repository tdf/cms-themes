<% if SubsitesListing %>
<ul class="subsitelist table">
<% control SubsitesListing %>
 <li class="$Lang"><a href="$absoluteBaseURL">$absoluteBaseURL</a><div>$LangNative</div>$LangEnglish</li><% end_control %>
</ul>
<% end_if %>
