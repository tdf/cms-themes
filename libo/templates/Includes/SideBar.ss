<% if Level(3) %><% if Menu(3) %>
  <ul id="ThirdNavigation"><% control Menu(3) %>
   <li class="$LinkingMode"><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levela"><span>$MenuTitle.XML<% if LinkOrSection == section %> »<% end_if %></span></a><% if Children %>
    <ul class="sub"><% control Children %>
     <li><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levelb"><span>$MenuTitle.XML</span></a></li>
    <% end_control %></ul><% end_if %>
   </li><% end_control %>
  </ul><% end_if %><% else %>
 <% if Level(2) %><% if Menu(3) %>
   <ul id="ThirdNavigation"><% control Menu(3) %>
    <li class="$LinkingMode"><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levela"><span>$MenuTitle.XML<% if LinkOrSection == section %> »<% end_if %></span></a><% if Children %>
     <ul class="sub"><% control Children %>
      <li><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levelb"><span>$MenuTitle.XML</span></a></li>
     <% end_control %></ul><% end_if %>
    </li><% end_control %>
   </ul><% end_if %><% else %>
  <% if Level(1) %><% if Menu(2) %>
    <ul id="ThirdNavigation"><% control Menu(2) %>
     <li class="$LinkingMode"><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levela"><span>$MenuTitle.XML<% if LinkOrSection == section %> »<% end_if %></span></a><% if Children %>
      <ul class="sub"><% control Children %>
       <li><a href="$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %> class="$LinkingMode levelb"><span>$MenuTitle.XML</span></a></li>
      <% end_control %></ul><% end_if %>
     </li><% end_control %>
    </ul><% end_if %>
  <% end_if %>
 <% end_if %>
<% end_if %>
