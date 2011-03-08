<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
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
