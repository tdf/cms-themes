	<h1>Twitter</h1>
	<ul id="Twitter"><% control Tweets %>
		<li>
			<a class="TweetAuthor" href="$AuthorURL">$Author</a>: <span>$Text</span>
			<small><a href="$DateURL">$TimeAgo</a> &bull; <a href="$ReplyURL" title="Reply to this Tweet">Reply</a></small>
		</li><% end_control %>
	</ul>
