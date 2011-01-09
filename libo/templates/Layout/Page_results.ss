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
	
<div class="typography">
	<% if Results %>
		<h2>$Title - $Results.Totalitems hits <% if Results.MoreThanOnePage %>(page $Results.CurrentPage of $Results.TotalPages)<% end_if %></h2> 
	    <ul id="SearchResults">
	      <% control Results %>
	        <li><%-- <small>$RelativeLink</small> --%>
	            <% if MenuTitle %>
	              <h3><a class="searchResultHeader" href="$Link">$MenuTitle</a></h3>
	            <% else %>
	              <h3><a class="searchResultHeader" href="$Link">$Title</a></h3>
	            <% end_if %>
			  <% if Content %>
	       <%--   	$Content.FirstParagraph(html) --%>
			$Content.ContextSummary(300)<%-- 300 characters of context, if possible highlight match, if not close enough, start of page is included --%>
			  <% end_if %>
	          <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
	        </li>
	      <% end_control %>
	    </ul>
	  <% else %>
	    <p>
				<%-- Example of a translatable string (see http://doc.silverstripe.org/i18n) --%>
				<% _t("Page_results.ss.NORESULTS", "Sorry, your search query did not return any results.") %>
				<%-- By the way, template comments marked like this will be excluded from the HTML output --%>
			</p>
	  <% end_if %>

	  <% if Results.MoreThanOnePage %>
	    <div id="PageNumbers">
	      <% if Results.NotLastPage %>
	        <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
	      <% end_if %>
	      <% if Results.NotFirstPage %>
	        <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
	      <% end_if %>
	      <span>
	        <% control Results.SummaryPagination(5) %>
	          <% if CurrentBool %>
	            $PageNum
	          <% else %>
	            <a href="$Link" title="View page number $PageNum">$PageNum</a>
	          <% end_if %>
	        <% end_control %>
	      </span>
      
	    </div>
	 <% end_if %>
<%-- <% control get_existing_content_languages %> --%>
<%-- <p>language : $locale - davor $name() nachvalue </p> --%>
<%-- <% end_control %> --%>
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
