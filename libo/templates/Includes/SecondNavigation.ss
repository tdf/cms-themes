<% control Level(1) %><% if Children %>
 <ul id="SecondNavigation"><% control Children %>
  <li class="$LinkingMode"><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %>><span>$MenuTitle.XML</span></a></li><% end_control %>
 </ul>
<% end_if %><% end_control %>
