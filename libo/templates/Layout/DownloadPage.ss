<% require javascript(sapphire/thirdparty/jquery/jquery-packed.js) %>
<% require javascript(mysite/javascript/download.js) %>
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
		<h1>$Title</h1>
	
		$Content
		$Form
		$PageComments

<% cached "rsync", RsyncRefresh %>
<!-- Last updated: $GetDownloads.Timestamp -->
<div>
 <select id="platform"><% control GetDownloads.Platforms %><option value="$PlatformTemplate">$PlatformNice</option><% end_control %></select>
 <select id="lang"><% control GetDownloads.Languages %>
  <option value="$Language">$Language - <% if LanguageNiceLocal %>$LanguageNiceLocal<% else %>fixme - add nice lang<% end_if %></option><% end_control %>
 </select>
 <label class="right"><input type="checkbox" id="BT" /> Download using BitTorrent</label>
</div>
<div id="filtered"><%-- output of the javascript goes here --%></div>
<ul id="uldown">
 <% if GetDownloads.Sources %><li id="sourcedl"><a href="#" class="action">Download the source code to build your own installer</a>
  <ul><% control GetDownloads.Sources %>
   <li><a href="#" class="action">$Version</a>
    <ul><% control Files %>
     <li><a href="http://download.documentfoundation.org/libreoffice/src/$Filename">$Filename</a> $Filesize</li><% end_control %>
    </ul>
   </li><% end_control %>
  </ul>
 </li><% end_if %>
 <% if GetDownloads.SDK %><li id="sdkdl"><a href="#" class="action">Download the SDK for developing extensions and external tools</a>
  <ul><% control GetDownloads.SDK %>
   <li>$PlatformNice <a href="http://download.documentfoundation.org/$File">$Filename</a> $Filesize</li><% end_control %>
  </ul>
 </li><% end_if %>
 <% if GetDownloads.LibreOffice %><li id="libodl"><a href="#" class="action">LibreOffice, the productivity suite</a>
  <ul><% control GetDownloads.LibreOffice %>
   <li><a href="#" class="action">Version $Version</a>
    <ul><% control Data %>
     <li><a href="#" class="action">$PlatformNice</a>
      <ul class="$Platformname"><% if Platformname == winx86 %><% control Links %>
       <li><a href="http://download.documentfoundation.org/$File">$Filename</a> $Filesize</li><% end_control %>
       <% else %><li class="lang en-US"><a href="http://download.documentfoundation.org/$Fullinstall">$FilenameFull</a> $Filesize (installer)</li>
       <li><a href="#" class="action">Language packs</a>
        <ul><% control Langpacks %>
         <li class="lang $Language"><a href="http://download.documentfoundation.org/$Langpack">$FilenameLangpack</a> $Filesize ($Language - <% if LanguageNiceLocal %>$LanguageNiceLocal<% else %>fixme - add nice lang<% end_if %>)</li><% end_control %>
        </ul><!-- langpacks -->
       </li><% end_if %>
      </ul><!-- $Platformname -->
     </li><% end_control %>
    </ul><!-- $Version -->
   </li><% end_control %>
  </ul><!-- LibreOffice -->
 </li><% end_if %>
</ul>
<% end_cached %>
</div>
<% if IsFullWidth %><% else %></div><% end_if %>
