<% require javascript(sapphire/thirdparty/jquery/jquery-packed.js) %>
<% require javascript(mysite/javascript/download.js) %>
<% if IsFullWidth %>
<% else %>
 <% include SideBar %>
 <div class="ThirdLevelPage FloatRight">
<% end_if %>
<% include Translations %>
<div class="typography">
		<h1>$Title</h1>
	
		$Content
		$Form
		$PageComments
<% cached ID,Aggregate(Download).Max(LastEdited) %>
<% if LiboDB %>
<div>
 <select id="platform"><% control LiboDB.GroupedBy(Platform) %><% control Children.GroupedBy(Arch) %><option value="{$Platform}$Arch">$NicePlatform</option><% end_control %><% end_control %></select>
 $LangDropdown
 <label class="right"><input type="checkbox" id="BT" /> <% _t('Downloadpage.BITTORRENT','Download using BitTorrent') %></label>
 <label class="right"><input type="checkbox" id="Details" /> <% _t('Downloadpage.DETAILLINK','Get details (md5sum,…)') %></label>
</div>
<% else %><%-- no builds available is only assumed for testing-page --%>
<p class="yellowbox">There are no testing builds available at the moment</p>
<% end_if %>
<div id="filtered"><%-- output of the javascript goes here --%></div>
<ul id="uldown">
 <% if SourcesDB %><li id="sourcedl"><a href="#" class="action"><% _t('Downloadpage.DLSOURCE','Download the source code to build your own installer') %></a>
  <ul><% control SourcesDB.GroupedBy(Version) %>
   <li><a href="#" class="action">$Version</a>
    <ul><% control Children %>
     <li><a href="http://download.documentfoundation.org/$Fullpath">$Filename</a> $Size.Nice</li><% end_control %>
    </ul>
   </li><!-- Version --><% end_control %>
  </ul>
 </li><!-- Sources --><% end_if %>
 <% if SdkDB %><li id="sdkdl"><a href="#" class="action"><% _t('Downloadpage.DLSDK','Download the SDK for developing extensions and external tools') %></a>
  <ul><% control SdkDB.GroupedBy(Version) %>
   <li><a href="#" class="action">$Version</a>
    <ul><% control Children %>
     <li>$NicePlatform <a href="http://download.documentfoundation.org/$Fullpath">$Filename</a> $Size.Nice</li><% end_control %>
    </ul>
   </li><!-- Version --><% end_control %>
  </ul>
 </li><!-- Sdk --><% end_if %>
 <% if LiboDB %><li id="libodl"><a href="#" class="action"><% _t('Downloadpage.DLSUITE','Other way to download LibreOffice, the productivity suite') %></a>
  <ul><% control LiboDB.GroupedBy(Version) %>
   <li><a href="#" class="action">$Version</a>
    <ul><% control Children.GroupedBy(Platform) %><% control Children.GroupedBy(Arch) %>
     <li><a href="#" class="action">$NicePlatform</a>
      <ul class="{$Platform}$Arch"><% control Children %>
       <li class="install $Lang"><a href="http://download.documentfoundation.org/$Fullpath">$Filename</a> $Size.Nice</li><% if Last %><% if Langpacks %>
       <li><a href="#" class="action">Languagepacks</a>
        <ul><% control Langpacks %>
         <li class="lang $Lang"><a href="http://download.documentfoundation.org/$Fullpath">$Filename</a> $Size.Nice ($Lang - <% if NiceLang %>$NiceLang<% else %>fixme - add nice lang<% end_if %>)</li><% end_control %>
        </ul>
       </li><!-- Langpacks --><% end_if %><% if Helppacks %>
       <li><a href="#" class="action">Helppacks</a>
        <ul><% control Helppacks %>
         <li class="help $Lang"><a href="http://download.documentfoundation.org/$Fullpath">$Filename</a> $Size.Nice ($Lang - <% if NiceLang %>$NiceLang<% else %>fixme - add nice lang<% end_if %>)</li><% end_control %>
        </ul>
       </li><!-- Helppacks --><% end_if %><% end_if %><% end_control %>
      </ul>
     </li><!-- platform/arch --><% end_control %><% end_control %>
    </ul>
   </li><!-- Version --><% end_control %>
  </ul>
 </li><!-- LibreOffice --><% end_if %>
</ul>
<% end_cached %>
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
