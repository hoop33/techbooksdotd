require File.dirname(__FILE__) + "/../techbooksdotd.rb"
require 'test/unit'
require 'rack/test'

set :environment, :test

class ApressTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_parses_apress
    content = <<EODOC

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Apress</title>
<!--<link href='https://fonts.googleapis.com/css?family=Droid+Sans:regular,bold' rel='stylesheet' type='text/css' />-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Apress" />
<meta name="keywords" content="&quot;Apress.com, Apress, NET, Mac OS X, iPhone, Microsoft, database, books, php, java, cornell, web, open source, sql, c, csharp, c++, publisher, lego, mindstorms, development, technology, visual basic, vb, wireless, publishers, tech, msoft, ms, code, programmer, professional, knowledge&quot;" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="icon" href="http://www.apress.com/skin/frontend/enterprise/soho/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.apress.com/skin/frontend/enterprise/soho/favicon.ico" type="image/x-icon" />
<script type="text/javascript">
//<![CDATA[
    var BLANK_URL = 'http://www.apress.com/js/blank.html';
    var BLANK_IMG = 'http://www.apress.com/js/spacer.gif';
    var SKIN_URL = 'http://www.apress.com/skin/frontend/enterprise/soho/';
//]]>
</script>
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/default/css/widgets.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/styles.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/aw_blog/css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/dailydeals/countdown.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/dailydealsspringer/countdown.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/mag_reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/apress.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/carousel.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/prototip.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/clears.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/print.css" media="print" />
<script type="text/javascript" src="http://www.apress.com/media/js/f8e5820c03eadc32392f5094f21b3a6b.js"></script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/styles-ie.css" media="all" />
<![endif]-->
<!--[if lt IE 7]>
<script type="text/javascript" src="http://www.apress.com/media/js/4fa4a226b4d677db65edc87c138b2b43.js"></script>
<![endif]-->

<script type="text/javascript">
//<![CDATA[
Mage.Cookies.path     = '/';
Mage.Cookies.domain   = '.www.apress.com';
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
optionalZipCountries = [];
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
	window.HDUSeed='8bd004f092522da87e2c349106eb9549';
	window.HDUSeedIntId = setInterval(function(){
		if (document.observe) {
			document.observe('dom:loaded', function(){
				for (var i = 0; i < document.forms.length; i++) {
					if (document.forms[i].getAttribute('action') && document.forms[i].getAttribute('action').match('contacts/index/post')) {
						var el = document.createElement('input');
						el.type = ('hidden');
						el.name = 'hdu_seed';
						el.value = window.HDUSeed;
						document.forms[i].appendChild(el);
						
					}
				}
			});
			clearInterval(window.HDUSeedIntId)
		}
	}, 100)
//]]>
</script>
<script type="text/javascript">var Translator = new Translate([]);</script><!-- SoHo miscellaneous scripts -->
</head>
<body class=" cms-index-index cms-home">

<!-- BEGIN GOOGLE ANALYTICS CODE -->
<script type="text/javascript">
//<![CDATA[
    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
    })();


/**
*  Google Analytics Fix - PA, April 2011
*
*/

     var _gaq = _gaq || [];
    _gaq.push(["_setAccount", "UA-952005-1"]);
    _gaq.push(["_trackPageview", "/"]);
//]]>
</script>
<!-- END GOOGLE ANALYTICS CODE -->
        <div class="wrapper">
    <div class="page">
        
<div class="header-container">
  <div class="header">
    <h1 id="logo" class="logo"><a href="/"><span>Apress</span></a></h1>
    <ul class="links">
            <li class="first" ><a href="https://www.apress.com/customer/account/" title="Your Account" >Your Account</a></li>
            <li ><a href="http://www.apress.com/checkout/cart/" title="Your Cart" class="top-link-cart">Your Cart</a></li>
            <li class=" last" ><a href="https://www.apress.com/customer/account/login/referer/aHR0cDovL3d3dy5hcHJlc3MuY29tL2Ntcy9pbmRleC9pbmRleC8,/" title="Sign In" >Sign In</a></li>
    </ul>
          
    <div class="booknav"><h2>Hot Topics : </h2>
      <ul>
        <li><a href="/microsoft/net-framework">.NET</a></li><li><a href="/mobile/iphone-ipad">iPhone</a></li><li><a href="/mobile/android">Android</a></li><li class="last"><a href="/web-development">Web Development</a></li>        <li class="show-all"><a href="/catalog"  onclick="$('show').toggle();$('hide').toggle();Effect.toggle('l1-cat', 'blind', { duration: 0.6 }); return false;"><span id="show">Show</span><span id="hide" style="display:none">Hide</span> All Categories</a></li>
      </ul>
      <ul class="break">
               </ul>
     </div>
     <form id="search_mini_form" action="http://www.apress.com/catalogsearch/result/" method="get">
<fieldset class="form-search">
    <legend>Search Site</legend>
    <input id="search" type="text" class="input-text" name="q" value="" />

  <!--  <button type="submit" class="button"><span></span></button> -->
	<input id="submit" class="small button gray" name="submit" type="submit" value="Go" />
    <div id="search_autocomplete" class="search-autocomplete"></div>
    <script type="text/javascript">
    //<![CDATA[
        var searchForm = new Varien.searchForm('search_mini_form', 'search', 'Search apress.com…');
        searchForm.initAutocomplete('http://www.apress.com/catalogsearch/ajax/suggest/', 'search_autocomplete');
    //]]>
    </script>
</fieldset>
</form>
		
     	<div id="l1-cat" style="background-color: #333;background-color: rgba(0, 0, 0, 0.8);display:none;">
    <div>
    <ul id="nav">
                    <li class="level0 nav-1">
<a href="http://www.apress.com/apple-mac"><span>Apple/Mac</span></a>
</li>
                    <li class="level0 nav-2">
<a href="http://www.apress.com/business"><span>Business</span></a>
</li>
                    <li class="level0 nav-3">
<a href="http://www.apress.com/databases"><span>Databases</span></a>
</li>
                    <li class="level0 nav-4">
<a href="http://www.apress.com/game-programming"><span>Game Programming</span></a>
</li>
                    <li class="level0 nav-5">
<a href="http://www.apress.com/google"><span>Google</span></a>
</li>
                    <li class="level0 nav-6">
<a href="http://www.apress.com/graphics"><span>Graphics</span></a>
</li>
                    <li class="level0 nav-7">
<a href="http://www.apress.com/it"><span>IT</span></a>
</li>
                    <li class="level0 nav-8">
<a href="http://www.apress.com/java"><span>Java</span></a>
</li>
                    <li class="level0 nav-9">
<a href="http://www.apress.com/media-books"><span>Media</span></a>
</li>
                    <li class="level0 nav-10">
<a href="http://www.apress.com/microsoft"><span>Microsoft</span></a>
</li>
                    <li class="level0 nav-11">
<a href="http://www.apress.com/mobile"><span>Mobile</span></a>
</li>
                    <li class="level0 nav-12">
<a href="http://www.apress.com/networking"><span>Networking</span></a>
</li>
                    <li class="level0 nav-13">
<a href="http://www.apress.com/office"><span>Office</span></a>
</li>
                    <li class="level0 nav-14">
<a href="http://www.apress.com/open-source"><span>Open Source</span></a>
</li>
                    <li class="level0 nav-15">
<a href="http://www.apress.com/oracle"><span>Oracle</span></a>
</li>
                    <li class="level0 nav-16">
<a href="http://www.apress.com/programming"><span>Programming</span></a>
</li>
                    <li class="level0 nav-17">
<a href="http://www.apress.com/robots-and-electronics"><span>Robots and Electronics</span></a>
</li>
                    <li class="level0 nav-18">
<a href="http://www.apress.com/servers"><span>Servers</span></a>
</li>
                    <li class="level0 nav-19">
<a href="http://www.apress.com/user-guides"><span>User Guides</span></a>
</li>
                    <li class="level0 nav-20">
<a href="http://www.apress.com/web-development"><span>Web Development</span></a>
</li>
                    <li class="level0 nav-21">
<a href="http://www.apress.com/other-topics"><span>Other Topics</span></a>
</li>
                    <li class="level0 nav-22">
<a href="http://www.apress.com/ca-press"><span>CA Press</span></a>
</li>
                    <li class="level0 nav-23">
<a href="http://www.apress.com/at-work"><span>At Work</span></a>
</li>
                    <li class="level0 nav-24">
<a href="http://www.apress.com/springer"><span>Springer</span></a>
</li>
                    <li class="level0 nav-25">
<a href="http://www.apress.com/html5"><span>HTML5</span></a>
</li>
                    <li class="level0 nav-26">
<a href="http://www.apress.com/windows-8"><span>Windows 8</span></a>
</li>
                    <li class="level0 nav-27">
<a href="http://www.apress.com/xaml"><span>XAML</span></a>
</li>
                    <li class="level0 nav-28">
<a href="http://www.apress.com/winrt"><span>WinRT</span></a>
</li>
                    <li class="level0 nav-29">
<a href="http://www.apress.com/security"><span>Security</span></a>
</li>
                    <li class="level0 nav-30">
<a href="http://www.apress.com/apressopen"><span>ApressOpen</span></a>
</li>
        </ul>
    </div>
    </div>
  </div>
  <ul id="toplevelnav">
	<li><a href="/">Home</a></li>
	<li><a href="/alpha-products">Alpha Program</a></li>
	<li><a href="/springer/">Springer</a></li>
	<li><a href="/source-code/">Source Code</a></li>
	<li><a href="/about/">About Apress</a></li>
	<li><a href="/customer-support/">Support</a></li>
	<li><a href="/interact/">Interact with Apress</a></li>
	<li style="float: right"><a href="http://www.twitter.com/apress" target="_blank"><img src="http://www.apress.com/skin/frontend/enterprise/soho/images/twitter_icon.png" alt="twitter" /></a> <a href="http://www.facebook.com/ApressMedia" target="_blank"><img src="http://www.apress.com/skin/frontend/enterprise/soho/images/facebook_icon.png" alt="facebook" /></a></li>
</ul>
</div>
		                <div class="main col3-layout">

            <div class="col-wrapper">
				<div class="straddle-1-2">
										 
<h2>Featured Titles</h2>
<div id="horizontal_carousel">
  <div class="previous_button previous_button_disabled"></div>
    <div class="container">
      <ul style="left: 0px;">
        <li id="A9781430265177"><a href="/9781430265177"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430265177-small_1.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430265177', 
                        '<p><em>By Joseph Ottinger , Jeff Linwood, Dave Minter</em></p><p>Beginning Hibernate, Third Edition is ideal if you\'re experienced in Java with databases (the traditional, or \"connected,\" approach), but new to open-source, lightweight Hibernate&#151;the de facto object-relational mapping and database-oriented application development framework. </p><p class="pubdate">Published 2014-04-06</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning Hibernate',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430261452"><a href="/9781430261452"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430261452-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430261452', 
                        '<p><em>By Raghuram Yeluri, Enrique Castro-Leon</em></p><p>This book provides a comprehensive look at the various facets of cloud security &#150; infrastructure, network, services, Compliance and users.  It will provide real world case studies to articulate the real and perceived risks and challenges in deploying and managing services in a cloud infrastructure from a security perspective.  </p><p class="pubdate">Published 2014-04-02</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Building the Infrastructure for Cloud Security',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430264484"><a href="/9781430264484"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430264484-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430264484', 
                        '<p><em>By Adam Freeman</em></p><p>Pro AngularJS gives you the knowledge you need to create smaller, faster, lighter, web applications quickly and easily.<br /></p><p class="pubdate">Published 2014-04-01</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Pro AngularJS',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430261575"><a href="/9781430261575"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430261575-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430261575', 
                        '<p><em>By Anwar  Ludin</em></p><p>Learn how to leverage the BlackBerry 10 Cascades framework to create rich native applications. <em>Learn BlackBerry 10 App Development</em> gives you a solid foundation for creating BlackBerry 10 apps efficiently. </p><p class="pubdate">Published 2014-03-29</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Learn BlackBerry 10 App Development',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430260226"><a href="/9781430260226"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430260226-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430260226', 
                        '<p><em>By Jack Nutting, Fredrik Olsson, David Mark, Jeff LaMarche</em></p><p>The team that brought you the bestselling <em>Beginning iPhone Development</em> is back again for <em>Beginning iOS�7 Development</em>, bringing this definitive guide up-to-date with Apple\'s latest and greatest new 64-bit iOS, iOS�7 and its SDK, as well as with the latest version of Xcode. </p><p class="pubdate">Published 2014-03-25</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning iOS 7 Development',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430263401"><a href="/9781430263401"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430263401-small_1.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430263401', 
                        '<p><em>By Brad  Manderscheid</em></p><p><em>Beginning HTML5 Games with CreateJS</em> is a hands-on approach to get you up and running with building professional games for HTML5 Canvas.</p><p class="pubdate">Published 2014-03-25</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning HTML5 Games with CreateJS',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430262534"><a href="/9781430262534"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430262534-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430262534', 
                        '<p><em>By Michael  Coughlan</em></p><p>In time for the looming COBOL crisis,<em><strong>�</strong>Beginning COBOL for Programmers</em> is a comprehensive, sophisticated tutorial, and modular skills reference on the COBOL programming language for established programmers who are involved in enterprise application development, programming and support.  </p><p class="pubdate">Published 2014-03-24</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning COBOL for Programmers',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430264309"><a href="/9781430264309"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430264309-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430264309', 
                        '<p><em>By Kenneth Barrett, Stephen Norris</em></p><p><p class=\"MsoNormal\"><em>Running Mainframe z on Distributed Platforms</em> reveals alternative techniques for creatively adapting and enhancing multi-user zPDT environments so that they are more friendly, stable, and reusable than those envisaged or taught by IBM.</p></p><p class="pubdate">Published 2014-03-20</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Running Mainframe z on Distributed Platforms',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430264217"><a href="/9781430264217"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430264217-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430264217', 
                        '<p><em>By Chris Lewis</em></p><p>When you create an app, a website, or a game, how do you get users, and perhaps more importantly, how do you keep them? <em>Irresistible Apps </em>explains exactly how to do this using a library of 27 motivational design patterns and real-world examples of how they work.  </p><p class="pubdate">Published 2014-03-17</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Irresistible Apps',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430257431"><a href="/9781430257431"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430257431-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430257431', 
                        '<p><em>By Matthew  Knott</em></p><p><p><em>Beginning Xcode</em> aims to get you up and running with Apple\'s exciting new version of Xcode 5. This book focuses on the new technologies, tools and features that Apple has bundled in to compliment the latest iOS 7 SDK.</p></p><p class="pubdate">Published 2014-03-11</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning Xcode',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430265566"><a href="/9781430265566"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430265566-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430265566', 
                        '<p><em>By Lex deHaan, Tim Gorman, Inger Jørgensen, Melanie Caffrey</em></p><p><em>Beginning Oracle SQL</em> introduces one of the most valuable dialects of SQL for any developer or database administrator to know.  </p><p class="pubdate">Published 2014-03-11</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning Oracle SQL',
            className: 'soho'
          });
          </script>
        </li>
        <li id="A9781430265474"><a href="/9781430265474"><img src="/media/catalog/product/cache/9/small_image/125x159/040ec09b1e35df139433887a97daa66f/A/9/A9781430265474-small.png" /></a>
          <script type="text/javascript" language="javascript">
            new Tip('A9781430265474', 
                        '<p><em>By Robert  Chin</em></p><p><strong><em>Beginning Android 3D Game Development</em></strong> is a unique, examples-driven book for today\'s Android and game app developers who want to learn how to build 3D game apps that run on the latest Android 5.0 (KitKat) platform using Java and OpenGL ES.  A Drone Grid game case study is included. </p><p class="pubdate">Published 2014-03-11</p>', {
            width:226, border: 2, radius: 2, 
            title: 'Beginning Android 3D Game Development',
            className: 'soho'
          });
          </script>
        </li>
      </ul>
    </div>
  <div class="next_button"></div>
</div>
<script type="text/javascript">
  new UI.Carousel("horizontal_carousel");
</script>
<!-- TIMING: FEATUREDTITLES: 0.001 -->					<div class="col-left sidebar">
                    	
 
<div class="block block-layered-nav">
	
    <div class="block-title">
    	<h2>Our Categories:</h2>       </div>
   <div class="block-content block-topics">
        <dl>
			 <dd>
                <ol id="az-list">
                                                         
                    <li>
                        <a href="http://www.apress.com/apple-mac">Apple/Mac</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/business">Business</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/databases">Databases</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/game-programming">Game Programming</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/google">Google</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/graphics">Graphics</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/it">IT</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/java">Java</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/media-books">Media</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/microsoft">Microsoft</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/mobile">Mobile</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/networking">Networking</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/office">Office</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/open-source">Open Source</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/oracle">Oracle</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/programming">Programming</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/robots-and-electronics">Robots and Electronics</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/servers">Servers</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/user-guides">User Guides</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/web-development">Web Development</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/other-topics">Other Topics</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/ca-press">CA Press</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/at-work">At Work</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/springer">Springer</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/html5">HTML5</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/windows-8">Windows 8</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/xaml">XAML</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/winrt">WinRT</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/security">Security</a>                     </li>
                                                                                                  
                    <li>
                        <a href="http://www.apress.com/apressopen">ApressOpen</a>                     </li>
                                                                         </ol>
            </dd>
        </dl>
    </div>
</div>
<script type="text/javascript">
//<![CDATA[
document.observe("dom:loaded", function() {
 	sortUnorderedList("az-list", false);return false;
});
//]]>
</script>

<div class="block block-bestsellers">  

  <!--<h2>This Week&rsquo;s Best-Sellers</h2>-->
  <h2>Weekly Best-Sellers</h2>

<ol>          <li class = "p-one" id="best_A9781430242338"><a href="/9781430242338"><img src="/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430242338-small_5.png" /></a>
                <script type="text/javascript" language="javascript">
                                new Tip('best_A9781430242338', 
      '<p><em>By Andrew Troelsen</em></p><p>This new edition of <em>Pro C</em>#<em> 5.0 and the .NET 4.5 Platform</em> has been completely revised and rewritten to reflect the latest changes to the C# language specification and new advances in the .NET Framework. You\'ll find new chapters covering the important new features that make .NET 4.5 the most comprehensive release yet. </p><p class="pubdate">Published August 21, 2012</p>', {
              width:226, border: 2, radius: 2,
              title: 'Pro C# 5.0 and the .NET 4.5 Framework',
              className: 'soho'
      });
      </script></li>
          <li class = "p-two" id="best_A9781430241676"><a href="/9781430241676"><img src="/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430241676-small_4.png" /></a>
                <script type="text/javascript" language="javascript">
                                new Tip('best_A9781430241676', 
      '<p><em>By Enrique Ramos Melgar, Ciriaco Castro Diez</em></p><p>You\'ve done some Arduino projects, so what\'s next? The Kinect! Learn how to use the Kinect with the Arduino platform to create interesting gadgets as well as innovative art.  </p><p class="pubdate">Published April 17, 2012</p>', {
              width:226, border: 2, radius: 2,
              title: 'Arduino and Kinect Projects',
              className: 'soho'
      });
      </script></li>
          <li class = "p-three" id="best_A9781430260134"><a href="/9781430260134"><img src="/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430260134-small_1.png" /></a>
                <script type="text/javascript" language="javascript">
                                new Tip('best_A9781430260134', 
      '<p><em>By Michael J. McGrath</em></p><p><em><strong>Sensor Technologies: Healthcare, Wellness and Environmental Applications</strong></em> explores the key aspects of sensor technologies, covering wired, wireless, and discrete sensors for the specific application domains of healthcare, wellness, and environmental sensing.  It discusses the social, regulatory, and design considerations specific to these domains.  </p><p class="pubdate">Published December 25, 2013</p>', {
              width:226, border: 2, radius: 2,
              title: 'Sensor Technologies',
              className: 'soho'
      });
      </script></li>
          <li class = "p-four" id="best_A9781430248606"><a href="/9781430248606"><img src="/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430248606-small_2.png" /></a>
                <script type="text/javascript" language="javascript">
                                new Tip('best_A9781430248606', 
      '<p><em>By Mohammad Rahman</em></p><p><em>Expert C# 5.0</em> discusses the familiar C# language in forensic detail. Examining familiar elements closely and revealing how they really work. By referencing Intermediate Language (MSIL) code and the Windows Debugger (Windbg) we&#146;ll give you an unparalleled depth of understanding so that you can truly claim to be a master of the C# language. <br /> <br /> </p><p class="pubdate">Published December 18, 2012</p>', {
              width:226, border: 2, radius: 2,
              title: 'Expert C# 5.0',
              className: 'soho'
      });
      </script></li>
          <li class = "p-five" id="best_A9781430238195"><a href="/9781430238195"><img src="/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430238195-small_8.png" /></a>
                <script type="text/javascript" language="javascript">
                                new Tip('best_A9781430238195', 
      '<p><em>By Juriy  Bura, Paul  Coates</em></p><p><em>Pro Android Web Game Apps </em>is a hands-on guide to building web games, focused on Android devices. You\'ll start with a blank HTML page, and by the end of the book, have the skills needed to  create a multiplayer online game with rich graphics, sound, animation, and more.<br /> <br /> </p><p class="pubdate">Published November 06, 2012</p>', {
              width:226, border: 2, radius: 2,
              title: 'Pro Android Web Game Apps',
              className: 'soho'
      });
      </script></li>
</ol><!-- TIMING: BESTSELLERS: 0.001 --></div>

               		</div>
                <div class="col-main">
<div class="std"><!-- start alpha_home banner -->
<p>
<table cellpadding="0" cellspacing="0" width="486" height="75" style="font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;">
        <tr>
                <td valign="top">
                        <img src="http://www.apress.com/skin/frontend/enterprise/soho/images/alpha_home.png" style="display:block;border:none;margin-right:5px" />
                </td>
                <td valign="top">
                        <h3 style="margin-bottom:5px">Apress Alpha</h3>
                        <span style="line-height:16px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif; font-size:13px">An Alpha eBook is a pre-release, still-in-development version of an Apress title. Get a first look at these <a href="http://www.apress.com/alpha-products">Alpha eBooks</a> below!</span>
                </td>
        </tr>
</table>
</p>
<!-- end of alpha_home banner -->


<div class="widget widget-new-products">
    <div class="category-view">
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430249443" title="Dashboards for Excel)">Dashboards for Excel</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430249443"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430249443-small_2.png" alt="Dashboards for Excel" /></a>
                 
                    <em>Dashboards for Excel </em>is your key to creating informative, vibrant and and interactive dashboards using a hands-on approach based on real-world experience.<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430249443" title="Dashboards for Excel)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/7333/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/office/office">Office</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430260288" title="Pro iOS Persistence)">Pro iOS Persistence</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430260288"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430260288-small.png" alt="Pro iOS Persistence" /></a>
                 
                    Pro iOS Persistence explains how to build apps that persist and use data most effectively including the popular Core Data framework. Covering common and advanced persistence patterns, this book prepares any iOS developer to store and retrieve data accurately and efficiently.<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430260288" title="Pro iOS Persistence)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12160/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/iphone-ipad">iPhone & iPad</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430261728" title="Building an Online Education Business)">Building an Online Education Business</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430261728"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430261728-small.png" alt="Building an Online Education Business" /></a>
                 
                    <em>Building an Online Education Business: How to Earn Six Figures Teaching Your Passion </em>provides a complete business plan to enable your online education business to flourish.<br />
<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430261728" title="Building an Online Education Business)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12051/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/business/entrepreneur">Entrepreneur</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430258780" title="Beginning SharePoint 2013 Workflows)">Beginning SharePoint 2013 Workflows</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430258780"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430258780-small_2.png" alt="Beginning SharePoint 2013 Workflows" /></a>
                 
                    <em>Beginning SharePoint 2013 Workflows </em>shows you how to build effective and reliable workflows in SharePoint 2013  whether you are not a programmer or you are using advanced tools like Visual Studio 2012.<br /><br />
<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430258780" title="Beginning SharePoint 2013 Workflows)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/7419/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/microsoft/visual-studio">Visual Studio</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430246329" title="Disruption by Design)">Disruption by Design</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430246329"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430246329-small_2.png" alt="Disruption by Design" /></a>
                 
                    <em>Disruption by Design</em> is a handbook for entrepreneurs, product developers and managers, and CEOs that outlines how to create disruptive products, services, and companies with the potential to change the basis for competition and win long-term market domination.                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430246329" title="Disruption by Design)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/6007/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/business/entrepreneur">Entrepreneur</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430257318" title="Regulation A+)">Regulation A+</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430257318"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430257318-small_1.png" alt="Regulation A+" /></a>
                 
                    <strong>Regulation A(+): How the JOBS Act Creates Opportunities for Entrepreneurs and Investors </strong> explains how emerging growth companies can raise more money more easily under new provisions in the recently enacted JOBS Act. <br />
<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430257318" title="Regulation A+)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/7348/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/business/entrepreneur">Entrepreneur</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430245728" title="Arduino Robotic Motor Controllers)">Arduino Robotic Motor Controllers</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430245728"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430245728-small.png" alt="Arduino Robotic Motor Controllers" /></a>
                 
                    Put the brain into your bot! <strong>Don Wilcher's</strong> <em>Arduino Robotic Motor Controllers </em>shows the way to building programmable logic controllers (PLCs) for robotic control of off-the-shelf toys and kits, as well as of robots you build yourself from the ground up.<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430245728" title="Arduino Robotic Motor Controllers)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/5872/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/open-source/arduino">Arduino</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430263197" title="Pro ASP.NET SignalR)">Pro ASP.NET SignalR</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430263197"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430263197-small.png" alt="Pro ASP.NET SignalR" /></a>
                 
                    ASP.NET SignalR is the new solution to real-time communication between servers and clients in .NET. Use it to push new data to a web page or mobile device as soon as it becomes available, whether it&#146;s a notification, live chat, up-to-the-minute financial data, or a range of other exciting applications.                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430263197" title="Pro ASP.NET SignalR)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12202/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/microsoft/net-framework">.NET Framework</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430248033" title="SAP ABAP)">SAP ABAP</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430248033"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430248033-small_2.png" alt="SAP ABAP" /></a>
                 
                    <em>SAP ABAP</em> elucidates the numerous features of the core programming platform, which is used for development for the entire SAP software suite. <em>SAP ABAP</em> uses numerous hands on business oriented use cases and a valuable dedicated downloadable e-resource to demonstrate the underlying advanced concepts of the OO ABAP environment and the SAP UI.<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430248033" title="SAP ABAP)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/6205/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/programming/other-languages">Other Languages</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430259800" title="ASP.NET Web API Recipes)">ASP.NET Web API Recipes</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430259800"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430259800-small.png" alt="ASP.NET Web API Recipes" /></a>
                 
                    <em>ASP.NET Web API Recipes</em> gives you the code and the confidence to work with the Web API successfully in any .NET environment. <br />
<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430259800" title="ASP.NET Web API Recipes)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/7479/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/web-development/silverlight">Silverlight</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430263524" title="Commercializing Innovation)">Commercializing Innovation</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430263524"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430263524-small.png" alt="Commercializing Innovation" /></a>
                 
                    <em>Turning Tech Breakthroughs into Products</em> shows how to take ideas from the R&amp;D lab, the university, the patent office, or the minds of dreamers and turn them into commercially successful products and services. It also provides detailed methods for improving the probability of success. <br />
<br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430263524" title="Commercializing Innovation)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12455/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/business/entrepreneur">Entrepreneur</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430264811" title="Dart for Absolute Beginners)">Dart for Absolute Beginners</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430264811"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430264811-small.png" alt="Dart for Absolute Beginners" /></a>
                 
                    <div><em>Dart for Absolute Beginners</em> enables individuals with no background in programming to create their own web apps while learning the fundamentals of software development in the cutting edge Dart language from Google.</div><br />
                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430264811" title="Dart for Absolute Beginners)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12345/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/programming/javascript">JavaScript</a> titles</p></div>
                                              
                </li>
                    </ul>
                

                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781484200117" title="Migrating to Android for iOS Developers)">Migrating to Android for iOS Developers</a></p>
                    <a class="product-image" href="http://www.apress.com/9781484200117"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781484200117-small.png" alt="Migrating to Android for iOS Developers" /></a>
                 
                    <em><span style="font-size:10pt;font-family:Arial, sans-serif;">Migrating to Android for iOS Developers&nbsp;</span></em><span style="font-size:10pt;font-family:Arial, sans-serif;">gives you - as an experienced iOS app developer - the ability to learn native Android apps development from scratch. &nbsp;Through case studies and examples, this book starts with a simple but meaningful Hello Android project. &nbsp;Then, t</span><span style="font-family:Arial, sans-serif;font-size:13px;">his book continues by providing guidelines and tutorial projects showing you how to translate iOS apps to Android right from the beginning. &nbsp;</span>                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781484200117" title="Migrating to Android for iOS Developers)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12518/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/android">Android</a> titles</p></div>
                                              
                </li>
                

                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430266730" title="Pro Single Page Application Development)">Pro Single Page Application Development</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430266730"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430266730-small_1.png" alt="Pro Single Page Application Development" /></a>
                 
                    One of the most important and exciting trends in web development in recent years is the move towards single page applications, or SPAs. With <em>Pro Single Page Application Development</em>, you'll learn why SPA development is important, how SPAs work, and how to build one from end to end using the popular Backbone.js library and ASP.NET Web API.<br /><br />                     <div class="actions">  
                    <p> <a href="http://www.apress.com/9781430266730" title="Pro Single Page Application Development)">Learn More</a> |
                                                    <a href="https://www.apress.com/wishlist/index/add/product/12434/">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/microsoft/net-framework">.NET Framework</a> titles</p></div>
                                              
                </li>
                    </ul>
                    </div>
</div></div></div>
            </div>
</div> <!-- // end straddle -->
            <div class="col-right sidebar"><div class="block block-cart">
       
        <h2 class="icon">Your Cart</h2>
  
 
                        <p>You don't have any books in your shopping cart yet!</p>
       
</div>

<div class="block block-dotd">
        <h2 class="icon">Deal of the Day</h2>		
    
				
			<a href="http://www.apress.com/dailydeals/index/view/id/935/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0MzAyNDYxNDU=/">
				<img id="A9781430246145" src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430246145-small_3.png" class="product_image" alt="Android Recipes" />
			</a>
			
			<p class="centred">
				<a href="http://www.apress.com/dailydeals/index/view/id/935/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0MzAyNDYxNDU=/">Android Recipes</a>
			</p>
			
			<p class="centred was-price">
								Regular Price: $31.99				
			</p>
			
			<p class="centred">
				<a class="medium yellow button" href="http://www.apress.com/dailydeals/index/view/id/935/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0MzAyNDYxNDU=/">Buy today for $10.00</a>
			</p>
			
						
				
		<p>
			<a href="http://www.apress.com/index.php/dailydeals/index/rss"><p class="center"><img src="http://www.apress.com/skin/frontend/enterprise/soho/dailydeals/rss.gif" alt="Dailydeal RSS Feed"></p></a>
		</p>
		
</div>
<!-- TIMING: DAILYDEALS: 0.033 -->
<div class="block block-dotd">
        <h2 class="icon">Springer Daily Deal</h2>		
    
				
			<a href="http://www.apress.com/dailydealsspringer/index/view/id/455/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0NjE0NDE1MDI=/">
				<img id="S9781461441502" src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/S/9/S9781461441502-small.png" class="product_image" alt="Text Mining with MATLAB®" />
			</a>
			
			<p class="centred">
				<a href="http://www.apress.com/dailydealsspringer/index/view/id/455/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0NjE0NDE1MDI=/">Text Mining with MATLAB®</a>
			</p>
			
			<p class="centred was-price">
								Regular Price: $129.00				
			</p>
			
			<p class="centred">
				<a class="medium yellow button" href="http://www.apress.com/dailydealsspringer/index/view/id/455/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0NjE0NDE1MDI=/">Buy today for $20.00</a>
			</p>
			
						
		<!--		
		<div>
			<a href=""><img src="" alt="Dailydeal RSS Feed"></a>
		</div>
-->

                <div>
                        <a href="http://www.apress.com/index.php/dailydealsspringer/index/rss"><img src="http://www.apress.com/skin/frontend/enterprise/soho/dailydealsspringer/rss.gif" alt="Dailydeal RSS Feed"></a>
                </div>
		
</div>

<div class="block">
   
        <h2>Companion eBooks</h2>
  <p>Why limit yourself to one format? If you’ve purchased the print edition of most Apress titles then we&rsquo;re happy to offer you the eBook edition for just $10.</p> 
	
<!--		 <li><a href="">About Promotions</a></li> -->
			<p class="centred"><a href="http://www.apress.com/companion/customer/view/" class="medium yellow button">Buy a Companion eBook</a></p>						
		
</div>

<div class="block block-ug interact">
   
        <h2>User Group Program</h2>
  <p>Register your user group with Apress to take advantage of discounts on books, receive review copies, door prizes, and much, much more&hellip;</p> 
	
<p class="more"><a href="http://www.apress.com/gcalendar/">Learn More</a></p> 
</div>
<div class="block block-subscribe interact">
 
        <h2 class="icon">Newsletter<a name="newsletter-box"></a></h2>
		   <p>Subscribe to our newsletter and receive updates on all that&rsquo;s happening with Apress. </p>
    <form action="http://www.apress.com/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
        <fieldset class="block-content">
                              
            <div class="input-box">
               <input name="email" type="text" id="newsletter" class="input-text required-entry validate-email" onfocus="if(this.value == 'Your email address &hellip;') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Your email address &hellip;'; }" value="Your email address &hellip;"/>
            </div>
	<input class="medium button gray" name="submit" type="submit" value="Subscribe" />
         
        </fieldset>
    </form>
<script type="text/javascript">
//<![CDATA[
    var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
//]]>
</script>
</div>
<div class="block block-ac interact">
<h2>Academic Resources</h2>
<p>Let Apress assist in the development of your academic programs and coursework.</p>
<p class="more"><a href="/academicrequest">Learn More</a></p>
</div><div class="block block-ug interact">
<h2>Bulk Sales Discount</h2>
<p>Bulk discounts apply when you buy ten or more copies of individual Apress or Friends of ED titles in either hard copy or eBook format.</p>
<p class="more"><a href="/corporate-sales">Learn More</a></p>
</div></div>


        </div>
                <div class="footer-container">
<!--
	<div id="tweet">
	 <img src="/skin/frontend/enterprise/soho/images/sonata.gif" alt="loading"/>
	</div> 
-->
   <div class="footer">		
              <div class="footer-links">
<h4>Quick Links</h4>
<ul>
	<li>Interact with Us
		<ul>
			<li><a href="/contacts/">Contact Us</a></li>
			<li><a href="/customer-support/">Customer Support</a></li>
			<li><a href="/gcalendar">User Groups</a></li>
			<li><a href="/write-for-us/">Write For Us</a></li>
				</ul>
			</li>
			<li>Company Information
				<ul>
			<li><a href="/about/">About Us</a></li>
			<li><a href="/pressroom/">Press Room</a></li>
			</ul>
			</li>
<li>Trade Resources
	<ul>
			<li><a href="/sales/">Sales and Distribution</a></li>
		</ul>
		</li>

<li>Legal
<ul>
<li><a href="/terms-conditions/">Terms &amp; Conditions</a></li>
<li><a href="/privacy-policy/">Privacy Policy</a></li>
</ul>
</li>
</ul>
</div>        <div class="footer-a-z">
<h4>Apress' Technology A-Z</h4>
<ul>
	<li><a href="http://www.apress.com/mobile/android">Android</a></li><li><a href="http://www.apress.com/apple-mac">Apple/Mac</a></li><li><a href="http://www.apress.com/apressopen">ApressOpen</a></li><li><a href="http://www.apress.com/at-work">At Work</a></li><li><a href="http://www.apress.com/business">Business</a></li><li><a href="http://www.apress.com/springer/business-and-economics">Business and Economics</a></li><li><a href="http://www.apress.com/ca-press">CA Press</a></li><li><a href="http://www.apress.com/springer/computer-science">Computer Science</a></li><li><a href="http://www.apress.com/business/current-events">Current Events</a></li><li><a href="http://www.apress.com/databases">Databases</a></li><li><a href="http://www.apress.com/springer/electrical-engineering">Electrical Engineering</a></li><li><a href="http://www.apress.com/game-programming">Game Programming</a></li><li><a href="http://www.apress.com/google">Google</a></li><li><a href="http://www.apress.com/business/government">Government</a></li><li><a href="http://www.apress.com/graphics">Graphics</a></li><li><a href="http://www.apress.com/google/gwt">GWT</a></li><li><a href="http://www.apress.com/html5">HTML5</a></li><li><a href="http://www.apress.com/business/investing">Investing</a></li><li><a href="http://www.apress.com/user-guides/iphone-ipad">iPhone & iPad</a></li><li><a href="http://www.apress.com/it">IT</a></li><li><a href="http://www.apress.com/java">Java</a></li><li><a href="http://www.apress.com/media-books">Media</a></li><li><a href="http://www.apress.com/microsoft">Microsoft</a></li><li><a href="http://www.apress.com/mobile">Mobile</a></li><li><a href="http://www.apress.com/java/netbeans">NetBeans</a></li><li><a href="http://www.apress.com/networking">Networking</a></li><li><a href="http://www.apress.com/office">Office</a></li><li><a href="http://www.apress.com/open-source">Open Source</a></li><li><a href="http://www.apress.com/databases/oracle">Oracle</a></li><li><a href="http://www.apress.com/other-topics">Other Topics</a></li><li><a href="http://www.apress.com/catalog/category/view/s/private-sales-root/id/35/">Private Sales Root</a></li><li><a href="http://www.apress.com/programming">Programming</a></li><li><a href="http://www.apress.com/programming/python">Python</a></li><li><a href="http://www.apress.com/robots-and-electronics">Robots and Electronics</a></li><li><a href="http://www.apress.com/catalog/category/view/s/root-catalog/id/3/">Root Catalog</a></li><li><a href="http://www.apress.com/microsoft/servers">Servers</a></li><li><a href="http://www.apress.com/springer">Springer</a></li><li><a href="http://www.apress.com/user-guides">User Guides</a></li><li><a href="http://www.apress.com/web-development">Web Development</a></li><li><a href="http://www.apress.com/web-development/web-standards">Web Standards</a></li><li><a href="http://www.apress.com/windows-8">Windows 8</a></li><li><a href="http://www.apress.com/servers/windows-server">Windows Server</a></li><li><a href="http://www.apress.com/xaml">XAML</a></li></ul>
</div>
        
    </div>
</div>
    <address class="copyright">&copy; 2011 Apress</address>


	<script type="text/javascript" charset="utf-8">
/* <![CDATA[ */
	getTwitters('tweet', { 
	  id: 'apress', 
	  count: 0, 
	  enableLinks: true, 
	  ignoreReplies: true, 
	  clearContents: true,
	  template: '&ldquo;%text%&rdquo; <p><a href="https://twitter.com/%user_screen_name%/statuses/%id_str%/">%time%</a></p>'
	});
/* ]]> */
	</script>
            </div>
</div>
<!-- SoHo Miscellaneous --></body>
</html>

EODOC

    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor_name
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'Android Recipes', deal.title
    assert_equal 'http://www.apress.com/dailydeals/index/view/id/935/url/aHR0cDovL3d3dy5hcHJlc3MuY29tLzk3ODE0MzAyNDYxNDU=/', deal.url
  end
  
  def test_it_parses_apress_nil
    content = nil
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor_name
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end

  def test_it_parses_apress_empty
    content = ''
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor_name
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end

  def test_it_parses_apress_bad
    content = 'Does not contain the data'
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor_name
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end
end
