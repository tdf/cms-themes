<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% if Translations %>
<div id="translations">
 <p>Available translations of this page:</p>
<ul class="translations">
<% control Translations %>
  <li class="$Locale.RFC1766">
    <a href="$Link" hreflang="$Locale.RFC1766" 
title="$Title">
	$Locale.Nice
    <%-- sprintf(_t('SHOWINPAGE','Show page in %s'),$Locale.Nice) --%>
   </a>
  </li>
<% end_control %>
</ul>
</div>
<% end_if %>
	
<div id="faqsContent" class="faqscontent typography">
    $Content
    <% if Results %>
        <% control Results %>
            <% include FaqsSummary %>
        <% end_control %>
    <% else %>
        <h2><% _t('NOFAQSENTRIES', 'There are no Faqs entries') %></h2>
    <% end_if %>    
    
    <% include FaqsPagination %>
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
