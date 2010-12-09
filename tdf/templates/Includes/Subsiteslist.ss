<% if SubsitesListing %>
<ul class="subsitelist">
<% control SubsitesListing %>
 <li class="$Lang"><a href="$absoluteBaseURL">$absoluteBaseURL</a><div style="float:right; margin-left:1em;">$Language $LangNative ($LangEnglish)</div></li><% end_control %>
</ul>
<% end_if %>
