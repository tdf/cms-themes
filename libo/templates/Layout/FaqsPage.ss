<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div id="faqsContent" class="faqscontent typography">
    <div class="blogEntry">
        <h1>$Title</h1>
        <p>$Content</p>
	</div>
	<% if FaqsRelated %>
	   <h3><% _t('RELATEDFAQ', 'Related Faqs') %></h3>
	    <% control FaqsRelated %>
	        <p><a class="faqsTitle" href="$Link" title="<% _t('GOTOFAQ', 'Show Detail -') %> '$Title'">$Title</a></p>
	    <% end_control %>
    <% end_if %>
	$PageComments
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
