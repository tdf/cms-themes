<ul id="ThirdNavigation"><% control Menu(3) %>
	<% if Children %>
	<li class="$LinkingMode"><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levela"><span>$MenuTitle.XML<% if LinkingMode = current %> &raquo;<% end_if %></span></a>
	<% else %>
	<li><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levela"><span>$MenuTitle.XML</span></a>
	<% end_if %>

	<% if LinkOrSection = section %>
		<% if Children %>
		<ul class="sub">
			<%-- <li><ul class="roundWhite"> --%><% control Children %>
				<li><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levelb"><span>$MenuTitle.LimitCharacters(13,…)</span></a></li>
					<% end_control %>
			<%--	</ul></li> --%>
		</ul>
		<% end_if %>
	<% end_if %>
	</li><% end_control %> 
</ul>
