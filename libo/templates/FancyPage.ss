<% require javascript(mysite/javascript/fp/jquery-1.8.0.min.js) %>
<% require javascript(mysite/javascript/fp/jquery.animate-enhanced.min.js) %>
<% require javascript(mysite/javascript/fp/jquery.ascensor.js) %>
<% require javascript(mysite/javascript/fp/jquery.easing.1.3.js) %>
<% require javascript(mysite/javascript/fp/jquery.superslides.js) %>
<% require javascript(mysite/javascript/fp/plugins.js) %>
<% require javascript(mysite/javascript/fp/script.js) %>

<% require css(themes/libo/css/fp/superslides.css) %>
<% require css(themes/libo/css/fp/style.css) %>
<% require css(themes/libo/css/fp/no-js.css) %>
<% cached %>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<head>
  <meta charset="utf-8">
  <title>LibreOffice 4 is here!</title>
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
  <meta name="description" content="LibreOffice is the free power-packed open source personal productivity suite for Windows, Macintosh and Linux, that gives you six feature-rich applications for all your document production and data processing needs." />

  <!-- get the FOUC out ! http://paulirish.com/2009/avoiding-the-fouc-v3/ -->
<script type="text/javascript">(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script>

  <meta name="viewport" content="user-scalable=0,width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="shortcut icon" href="favicon.ico" />
  <link href='//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
</head>
<body class="home">
<noscript>
	<div class="t_center"><p class="badge-warning ">Javascript is disabled in your web browser.</p></div>
</noscript>
<div id="ascensorBuilding">
  <section>
    <article id="index">
      <h1><img src="/themes/libo/images/fp/logo_libre_office.png" width="474" height="93" alt="LibreOffice - The Document Foundation"/></h1>
      <div id="btn_nav">MENU</div>
      <nav class="navigation" role="navigation">
        <ul>
          <li><a href="#" class="active">LibreOffice 4</a></li>
          <li><a href="/home/Discover" class="ascensorLink ascensorLink2">Discover it</a></li>
          <li><a href="http://donate.libreoffice.org" title="Donate">Donate</a></li>
          <li><a href="http://www.libreoffice.org/default">Main website</a></li>
        </ul>
      </nav>

       <div class="btn_dll">
      <a href="http://www.libreoffice.org/download">Download<br/><strong>Libre</strong>Office<br/>now&nbsp;!</a>
      </div>

      <div id="slides">
        <ul class="slides-container">
          <li class="slide_1">
            <img src="/themes/libo/images/fp/bg_slider_1.jpg" width="1024" height="768" alt="">
             <div class="container">
              <div class="picture"></div>
              <div class="txt">
                <h2>Free Office Suite</h2>
                <p>LibreOffice 4: The free office suite the community has been dreaming of for twelve years.</p>
              </div>
            </div>
          </li>
          <li class="slide_2">
            <img src="/themes/libo/images/fp/bg_slider_2.jpg" width="1064" height="650" alt="">
            <div class="container slider2">
              <div class="picture"></div>
              <div class="txt">
                  <h2>Fun project</h2>
                  <p>LibreOffice is one of the friendliest and fastest growing projects in the free and open source software world. We commit ourselves to produce truly great and free software.</p>
                  <a href="https://www.documentfoundation.org/foundation/">Discover more about us and our values</a>
              </div>
              <div class="clear"></div>
            </div>
          </li>
          <li class="slide_3">
            <img src="/themes/libo/images/fp/bg_slider_3.jpg" width="947" height="647" alt="Slider">
            <div class="container">
              <div class="txt">
                <h2>Fantastic people</h2>
                  <p>LibreOffice is about more than software. It's about people, it's about culture, it's about creation, sharing and collaboration.<br>We can only exist and grow thanks to the volunteers of the LibreOffice project. We have many roles for you, from engineering tasks to community support and creative work.</p>
                  <a href="https://www.libreoffice.org/get-involved/">Join us today !</a>
              </div>
              <div class="picture"></div>
              <div class="clear"></div>
            </div>
          </li>
        </ul>
        <nav class="slides-navigation">
          <a href="#" class="next">Next</a>
          <a href="#" class="prev">Previous</a>
        </nav>
      </div>
      </article>
      <footer class="legal">
            <a href="http://www.documentfoundation.org/privacy">Privacy Policy</a><br>
            <a href="http://www.documentfoundation.org/imprint">Impressum (Legal Info)</a>
      </footer>
    </section>
    <section>
        <article id="libre_office">
        </article>
    </section>
</div>

</body>
</html>
<% end_cached %>
