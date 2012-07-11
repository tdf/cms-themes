	<h1>$RSSHeader</h1>
	<ul id="Blog"><% control Feed %>
		<li>
			<h2><a href="$Link">$Title</a></h2>
			<small>$Date</small>
			<p>$Description.FirstParagraph(html)</p>
			<small><a href="$Link">Continue Reading &raquo;</a></small>
		</li><% end_control %>
	</ul>

	<ul>
		<li><a href="$RSSLink">$RSSLink</a></li>
	</ul>
