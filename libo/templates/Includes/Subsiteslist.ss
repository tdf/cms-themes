<% if SubsitesListing %>
<ul class="subsitelist table"><% control SubsitesListing %>
 <li class="$Lang"><% if Homepagetitle %><a href="$Domainlink" title="$Homepagetitle">$Domainlink</a><% else %><div title="Project exists, but didn't define a homepage yet">$Domainlink</div><% end_if %><div>$LangNative</div>$LangEnglish</li><% end_control %>
</ul>
<% end_if %>
