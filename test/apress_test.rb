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
<link href='https://fonts.googleapis.com/css?family=Droid+Sans:regular,bold' rel='stylesheet' type='text/css' />
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
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/dailydeal/css/dailydeal.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/mag_reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/apress.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/carousel.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/prototip.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/clears.css" media="all" />
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/print.css" media="print" />
<script type="text/javascript" src="http://www.apress.com/js/prototype/prototype.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/prototype/validation.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/scriptaculous/builder.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/scriptaculous/dragdrop.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/scriptaculous/controls.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/scriptaculous/slider.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/varien/js.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/varien/form.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/varien/menu.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/mage/translate.js"></script>
<script type="text/javascript" src="http://www.apress.com/js/mage/cookies.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/scripts.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/enterprise/catalogevent.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/apress.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/prototip/prototip.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/prototip/styles.js"></script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="http://www.apress.com/skin/frontend/enterprise/soho/css/styles-ie.css" media="all" />
<![endif]-->
<!--[if lt IE 7]>
<script type="text/javascript" src="http://www.apress.com/js/lib/ds-sleight.js"></script>
<script type="text/javascript" src="http://www.apress.com/skin/frontend/enterprise/soho/js/iehover-fix.js"></script>
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
	window.HDUSeed='5ab67f2361de08883d137d366bd2ee6f';
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
            <li class=" last" ><a href="https://www.apress.com/customer/account/login/referer/aHR0cDovL3d3dy5hcHJlc3MuY29tL2Ntcy9pbmRleC9pbmRleC8_X19fU0lEPVU,/" title="Sign In" >Sign In</a></li>
    </ul>


        <div class="booknav"><h2>Hot Topics</h2> <ul>

<!-- only <li> elements required. final item should have a class of 'last' -->
<li><a href="/microsoft/net-framework">.NET</a></li>
<li><a href="/mobile/iphone-ipad">iPhone</a></li>
<li><a href="/mobile/android">Android</a></li>
<li class="last"><a href="/web-development">Web Development</a></li>

		<li class="show-all"><a href="/catalog"  onclick="$('show').toggle();$('hide').toggle();Effect.toggle('l1-cat', 'blind', { duration: 0.6 }); return false;"><span id="show">Show</span><span id="hide" style="display:none">Hide</span> All Categories</a></li></ul>
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
        var searchForm = new Varien.searchForm('search_mini_form', 'search', 'Search apress.com...');
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
        </ul>
    </div>
    </div>
</div>
      <ul id="toplevelnav">
	<li><a href="/">Home</a></li>
	<li><a href="/source-code/">Source Code</a></li>
	<li><a href="/about/">About Apress</a></li>
	<li><a href="/customer-support/">Support</a></li>
	<li><a href="/interact/">Interact with Apress</a></li>
</ul>
</div>

		                <div class="main col3-layout">

            <div class="col-wrapper">
				<div class="straddle-1-2">
										               <h2>Featured Titles</h2>



<!-- <h2>Featured Titles</h2> -->
<!-- pass a list of featured titles -->

<div id="horizontal_carousel">
    <div class="previous_button previous_button_disabled"></div>
        <div class="container">
	    <ul style="left: 0px;">

	        <li id="A9781430232223"><a href="http://www.apress.com/9781430232223"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430232223-small_11.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430232223',
			'<p><em>By Satya Komatineni, Sayed Hashimi, Dave  MacLean </em></p><p>Pro Android 3 shows you how to build real-world and fun mobile applications using the latest Android SDK. This book covers everything from the fundamentals of building applications for embedded devices to advanced concepts such as custom 3D components. </p><p class="pubdate">Published April 15, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Pro Android 3',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430230427"><a href="http://www.apress.com/9781430230427"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430230427-small_5.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430230427',
			'<p><em>By Mario  Zechner</em></p><p><em>Beginning Android Games</em> offers everything you need to join the ranks of successful Android game developers. You\'ll start with game design fundamentals and programming basics, and then progress towards creating your own basic game engine and playable game.  </p><p class="pubdate">Published April 13, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Beginning Android Games',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430233244"><a href="http://www.apress.com/9781430233244"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233244-small_9.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430233244',
			'<p><em>By Guy Fouche, Lynn Langit</em></p><p>Foundations of SQL Server 2008 R2 Business Intelligence introduces the exciting gamut of business intelligence tools included with SQL Server 2008. </p><p class="pubdate">Published April 01, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Foundations of SQL Server 2008 R2 Business Intelligence',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430234289"><a href="http://www.apress.com/9781430234289"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430234289-small_9.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430234289',
			'<p><em>By Heather Wright-Porto </em></p><p><em>Creative Blogging</em> shows you how to start blogging for the first time to express your creativity and reach out to be heard by your audience - and even make money with your blog!<br /> </p><p class="pubdate">Published April 01, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Creative Blogging',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430233305"><a href="http://www.apress.com/9781430233305"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233305-small_3.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430233305',
			'<p><em>By Carlo Chung</em></p><p>Some things never go out of style. With this book, learn how to apply classic design patterns to iOS app development using Objective-C. </p><p class="pubdate">Published April 01, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Pro Objective-C Design Patterns for iOS',
			className: 'soho'
			});

		</script>
		</li>
	        <li id="A9781430231479"><a href="http://www.apress.com/9781430231479"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430231479-small_10.png" /></a>

		<script type="text/javascript" language="javascript">
		new Tip('A9781430231479',
			'<p><em>By Doug Gault, Karen Cannell, Patrick Cimolini, Timothy St. Hilaire, Martin Giffy D'Souza</em></p><p>Beginning Oracle Application Express 4 introduces Oracle&rsquo;s easy-to-use web application development tool for power-users, database administrators, and developers.  </p><p class="pubdate">Published March 31, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Beginning Oracle Application Express 4',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430234463"><a href="http://www.apress.com/9781430234463"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430234463-small_7.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430234463',
			'<p><em>By Wallace Jackson</em></p><p>This book cuts through the fog of jargon and mystery that surrounds Android application development, and gives you simple, step-by-step instructions to get you started. </p><p class="pubdate">Published March 29, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'Android Apps for Absolute Beginners',
			className: 'soho'
			});

		</script>
		</li>

	        <li id="A9781430233008"><a href="http://www.apress.com/9781430233008"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233008-small_10.png" /></a>
		<script type="text/javascript" language="javascript">
		new Tip('A9781430233008',
			'<p><em>By Dave Wooldridge, Michael  Schneider</em></p><p>This book will show you how to incorporate marketing and business savvy into every aspect of your iPhone and iPad app design and development process. </p><p class="pubdate">Published March 25, 2011</p>', {
			width:226, border: 2, radius: 2,
			title: 'The Business of iPhone and iPad App Development',
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


					<div class="col-left sidebar">


<div class="block block-layered-nav">

    <div class="block-title">
    	<h2>Our Categories:</h2>       </div>
   <div class="block-content block-topics">
        <dl>
			 <dd>
                <ol id="az-list">

                    <li>
                        <a href="http://www.apress.com/mobile">Mobile</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/databases">Databases</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/microsoft">Microsoft</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/servers">Servers</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/graphics">Graphics</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/open-source">Open Source</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/web-development">Web Development</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/programming">Programming</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/user-guides">User Guides</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/java">Java</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/game-programming">Game Programming</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/oracle">Oracle</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/business">Business</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/media-books">Media</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/office">Office</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/networking">Networking</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/google">Google</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/it">IT</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/robots-and-electronics">Robots and Electronics</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/other-topics">Other Topics</a>                     </li>

                    <li>
                        <a href="http://www.apress.com/apple-mac">Apple/Mac</a>                     </li>
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
<h2>This Week&rsquo;s Best-Sellers</h2>

<ol>    	    <li class = "p-one" id="best_A9781430233039"><a href="http://www.apress.com/9781430233039"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233039-small_4.png" /></a></li>
                <script type="text/javascript" language="javascript">
                new Tip('best_A9781430233039',
			'<p><em>By Steffen  Itterheim </em></p><p>Learn iPhone and iPad Cocos2D Game Development introduces the cocos2d iPhone game engine and its related tools.  </p><p class="pubdate">Published December 02, 2010</p>', {
        	    width:226, border: 2, radius: 2,
        	    title: 'Learn iPhone and iPad cocos2d Game Development',
        	    className: 'soho'
  		});
  		</script>
    	    <li class = "p-two" id="best_A9781430225294"><a href="http://www.apress.com/9781430225294"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430225294-small_4.png" /></a></li>
                <script type="text/javascript" language="javascript">
                new Tip('best_A9781430225294',
			'<p><em>By Matthew MacDonald, Adam Freeman</em></p><p>ASP.NET 4 is the latest version of Microsoft\'s revolutionary ASP.NET technology. It is the principal standard for creating dynamic web pages on the Windows platform. Pro ASP.NET 4 in C# 2010 raises the bar for high-quality, practical advice on learning and deploying Microsoft\'s dynamic web solution. </p><p class="pubdate">Published June 30, 2010</p>', {
        	    width:226, border: 2, radius: 2,
        	    title: 'Pro ASP.NET 4 in C# 2010',
        	    className: 'soho'
  		});
  		</script>
    	    <li class = "p-three" id="best_A9781430228868"><a href="http://www.apress.com/9781430228868"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430228868-small_6.png" /></a></li>
                <script type="text/javascript" language="javascript">
                new Tip('best_A9781430228868',
			'<p><em>By Steven Sanderson</em></p><p>The ASP.NET MVC V2 Framework is the latest evolution of Microsoft\'s ASP.NET web platform. In this book, you\'ll discover MVC\'s strengths and weaknesses for yourself--and put your best-learned theory into practice.</p><p class="pubdate">Published June 30, 2010</p>', {
        	    width:226, border: 2, radius: 2,
        	    title: 'Pro ASP.NET MVC 2 Framework',
        	    className: 'soho'
  		});
  		</script>
    	    <li class = "p-four" id="best_A9781430225492"><a href="http://www.apress.com/9781430225492"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430225492-small_11.png" /></a></li>
                <script type="text/javascript" language="javascript">
                new Tip('best_A9781430225492',
			'<p><em>By Andrew Troelsen</em></p><p>Over the years that author Andrew Troelsen spent working with the common language runtime (CLR), he gained a much deeper understanding of the. </p><p class="pubdate">Published May 14, 2010</p>', {
        	    width:226, border: 2, radius: 2,
        	    title: 'Pro C# 2010 and the .NET 4 Platform',
        	    className: 'soho'
  		});
  		</script>
    	    <li class = "p-five" id="best_A9781430229797"><a href="http://www.apress.com/9781430229797"><img src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430229797-small_9.png" /></a></li>
                <script type="text/javascript" language="javascript">
                new Tip('best_A9781430229797',
			'<p><em>By Matthew MacDonald</em></p><p>Full-color graphics and screenshots throughout make Pro Silverlight 4 in C# an invaluable reference for professional developers wanting to discover the new features of Silverlight 4. Author Matthew MacDonald\'s expert advice guides you through creating rich media applications using Silverlight across browsers and platforms.  </p><p class="pubdate">Published November 09, 2010</p>', {
        	    width:226, border: 2, radius: 2,
        	    title: 'Pro Silverlight 4 in C#',
        	    className: 'soho'
  		});
  		</script>
</ol></div>
<div class="block block-forthcoming">
<h2>Forthcoming Titles</h2>
<ul>

      <li> <a id="forth_A9781430232889" class="product-name" href="http://www.apress.com/9781430232889">Pro CSS for High Traffic Websites</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430232889', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430232889-small_9.png' alt='Pro CSS for High Traffic Websites'/><p><em>By Antony Kennedy, Inayaili de Leon</em></p><p>Targeted at \"high traffic\" websites&#151;those receiving up to 10,000 unique visitors a day&#151;CSS for High Traffic Websites gives you inside information from the professionals on how to get the most out of your web development team.  </p><p class='pubdate'>Publishing April 20, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Pro CSS for High Traffic Websites',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>


      <li> <a id="forth_A9781430234227" class="product-name" href="http://www.apress.com/9781430234227">Beginning 3D Game Development with Unity</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430234227', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430234227-small_7.png' alt='Beginning 3D Game Development with Unity'/><p><em>By Sue  Blackman</em></p><p><em><strong>Beginning 3D Game Development with Unity</strong></em> introduces key game production concepts in an artist-friendly manner, removes the hurdles to understanding scripting, and enables indie game artists to learn how to produce casual games for mobile, desktop, and console platforms.  </p><p class='pubdate'>Publishing April 21, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Beginning 3D Game Development with Unity',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>


      <li> <a id="forth_A9781430234074" class="product-name" href="http://www.apress.com/9781430234074">Pro SharePoint 2010 Search</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430234074', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430234074-small_6.png' alt='Pro SharePoint 2010 Search'/><p><em>By Josh Noble, Robert Piddocke, , Dan Bakman-Mikalski</em></p><p>Gain expert advice on planning, deploying and customizing search in SharePoint 2010. This book will guide you through the need-to-know features of SharePoint search, from architecture to indexing to deployment.<br /> </p><p class='pubdate'>Publishing April 21, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Pro SharePoint 2010 Search',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>


      <li> <a id="forth_A9781430232919" class="product-name" href="http://www.apress.com/9781430232919">Foundation HTML5 Canvas</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430232919', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430232919-small_10.png' alt='Foundation HTML5 Canvas'/><p><em>By Rob Hawkes</em></p><p><em>Foundation HTML5 Canvas</em> gives you the tools you need to create fantastic games, animations, and interactive user interfaces natively within the browser using the canvas tag, functionality that previously was only possible using plug-ins such as Flash.  </p><p class='pubdate'>Publishing April 22, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Foundation HTML5 Canvas',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>


      <li> <a id="forth_A9781430230571" class="product-name" href="http://www.apress.com/9781430230571">Pro Puppet</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430230571', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430230571-small_9.png' alt='Pro Puppet'/><p><em>By James Turnbull, Jeffrey McCune</em></p><p>Puppet is a must-have tool for system administrators. Pro Puppet will teach you how to maximize Puppet\'s capabilities and customize it for your environment.  </p><p class='pubdate'>Publishing April 28, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Pro Puppet',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>


      <li> <a id="forth_A9781430231745" class="product-name" href="http://www.apress.com/9781430231745">Developing C# Apps for iPhone and iPad using MonoTouch</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('forth_A9781430231745', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430231745-small_5.png' alt='Developing C# Apps for iPhone and iPad using MonoTouch'/><p><em>By Brian Costanich</em></p><p>A guide for .NET developers to turn their C# apps into blockbuster apps for iOS using MonoTouch.  </p><p class='pubdate'>Publishing April 28, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Developing C# Apps for iPhone and iPad using MonoTouch',
																		className: 'soho'
																	});/* ]]> */
																	</script></li>

        </ul>
</div>
<div class="block block-alpha">
<h2 class="icon">Latest Alpha Titles</h2>
<p>The Alpha Program gives you access to future Apress books&#8212;right now!</p>
<p>Recently made available titles include:</p>
<ul>
      <li> <a id="alpha_A9781430234074" class="product-name" href="http://www.apress.com/9781430234074">Pro SharePoint 2010 Search</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('alpha_A9781430234074', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430234074-small_6.png' alt='Pro SharePoint 2010 Search'/><p><em>By Josh Noble, Robert Piddocke, , Dan Bakman-Mikalski</em></p><p>Gain expert advice on planning, deploying and customizing search in SharePoint 2010. This book will guide you through the need-to-know features of SharePoint search, from architecture to indexing to deployment.<br /> </p><p class='pubdate'>Publishing April 21, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Pro SharePoint 2010 Search',
																		className: 'soho'
																	});
																/* ]]> */
																	</script></li>


              <li> <a id="alpha_A9781430230571" class="product-name" href="http://www.apress.com/9781430230571">Pro Puppet</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('alpha_A9781430230571', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430230571-small_9.png' alt='Pro Puppet'/><p><em>By James Turnbull, Jeffrey McCune</em></p><p>Puppet is a must-have tool for system administrators. Pro Puppet will teach you how to maximize Puppet\'s capabilities and customize it for your environment.  </p><p class='pubdate'>Publishing April 28, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Pro Puppet',
																		className: 'soho'
																	});
																/* ]]> */
																	</script></li>


              <li> <a id="alpha_A9781430231745" class="product-name" href="http://www.apress.com/9781430231745">Developing C# Apps for iPhone and iPad using MonoTouch</a>
		<script type="text/javascript" language="javascript">
		/* <![CDATA[ */
			new Tip('alpha_A9781430231745', "<img src='http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430231745-small_5.png' alt='Developing C# Apps for iPhone and iPad using MonoTouch'/><p><em>By Brian Costanich</em></p><p>A guide for .NET developers to turn their C# apps into blockbuster apps for iOS using MonoTouch.  </p><p class='pubdate'>Publishing April 28, 2011</p>", {
																	 	width:226, border: 2, radius: 2,
																		title: 'Developing C# Apps for iPhone and iPad using MonoTouch',
																		className: 'soho'
																	});
																/* ]]> */
																	</script></li>


        </ul>
<p>Find out more about the <a href="/customer-support/#alpha-book-info">Alpha Program</a></p>
</div>
               		</div>
                <div class="col-main">
<div class="std"><div class="widget widget-new-products">
    <div class="category-view">


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430235514" title="Taking Your iPhoto '11 to the Max)">Taking Your iPhoto '11 to the Max</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430235514"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430235514-small_9.png" alt="Taking Your iPhoto '11 to the Max" /></a>

                    <em>Taking iPhoto &#146;11 to the Max</em> walks users through Apple&#146;s most popular software application in the iLife suite&#151;iPhoto. This book helps people use iPhoto to its fullest to organize and create digital memories and keepsakes of their life.                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430235514" title="Taking Your iPhoto '11 to the Max)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/user-guides/iphone-ipad">iPhone & iPad</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430233770" title="Pro Expression Blend 4)">Pro Expression Blend 4</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430233770"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233770-small_8.png" alt="Pro Expression Blend 4" /></a>

                    <em>Pro Expression Blend 4</em>&nbsp;will take you well beyond the basics and provide you with a detailed examination of the key Blend topics, giving you an excellent understanding of the Blend product and what it can do for you.&nbsp;&nbsp;                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430233770" title="Pro Expression Blend 4)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/microsoft/silverlight">Silverlight</a> titles</p></div>

                </li>
                    </ul>


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430232766" title="Pro Android Web Apps)">Pro Android Web Apps</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430232766"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430232766-small_9.png" alt="Pro Android Web Apps" /></a>

                    Pro Android Web Apps teaches developers already familiar with web application development how to code and structure a web app for use on the Google Android mobile platform.                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430232766" title="Pro Android Web Apps)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/android">Android</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430233121" title="Windows Phone 7 Made Simple)">Windows Phone 7 Made Simple</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430233121"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233121-small_10.png" alt="Windows Phone 7 Made Simple" /></a>

                    <em>Windows Phone 7 Made Simple</em> by <strong>Jon Westfall</strong> offers a clear, visual step-by-step approach to using your Windows Phone 7 smartphone, no matter what the manufacturer.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430233121" title="Windows Phone 7 Made Simple)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/windows-phone">Windows Phone</a> titles</p></div>

                </li>
                    </ul>


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430230243" title="Beginning iPhone 4 Development)">Beginning iPhone 4 Development</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430230243"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430230243-small_9.png" alt="Beginning iPhone 4 Development" /></a>

                    Everything you need to know to develop your own best-selling iPhone and iPad apps, plus best practices for optimizing your code and delivering great user experiences.                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430230243" title="Beginning iPhone 4 Development)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/iphone-ipad">iPhone & iPad</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430231264" title="Beginning Blender)">Beginning Blender</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430231264"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430231264-small_6.png" alt="Beginning Blender" /></a>

                    Blender opens the door to the new world of 3D design and animation without the hefty price tag of other commercial tools. This book starts out new designers on the path from basic modeling to games physics.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430231264" title="Beginning Blender)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/graphics/blender">Blender</a> titles</p></div>

                </li>
                    </ul>


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430232797" title="Droids Made Simple)">Droids Made Simple</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430232797"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430232797-small_8.png" alt="Droids Made Simple" /></a>

                    So you're interested in a Droid? Or maybe you already have one in your pocket? <em>Droids Made Simple</em> shows you all the features, tips, and techniques you need to get the most out of your new phone. <input id="gwProxy" type="hidden" /><!--Session data--><input id="jsProxy" onclick="if(typeof(jsCall)=='function'){jsCall();}else{setTimeout('jsCall()',500);}" type="hidden" /> <div id="refHTML"></div>                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430232797" title="Droids Made Simple)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/mobile/android">Android</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430228387" title="Pro Drupal 7 Development)">Pro Drupal 7 Development</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430228387"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430228387-small_8.png" alt="Pro Drupal 7 Development" /></a>

                    This book is geared toward professionals that need to deploy and customize Drupal. This book delves deep into the internals of the Drupal 7 system and teaches you everything you need to know to deploy a highly customized and optimized Drupal installation.                      <div class="actions">
                    <p> <a href="http://www.apress.com/9781430228387" title="Pro Drupal 7 Development)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/open-source/content-management">Content Management</a> titles</p></div>

                </li>
                    </ul>


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430233893" title="DOM Scripting)">DOM Scripting</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430233893"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233893-small_5.png" alt="DOM Scripting" /></a>

                    DOM Scripting: Web Design with JavaScript and the Document Object Model gives you everything you need to start using JavaScript and the Document Object Model to enhance your web pages with client-side dynamic effects.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430233893" title="DOM Scripting)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/web-development/javascript">JavaScript</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430272199" title="JavaScript for Absolute Beginners)">JavaScript for Absolute Beginners</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430272199"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430272199-small_13.png" alt="JavaScript for Absolute Beginners" /></a>

                    If you are new to both JavaScript and programming, this hands-on book is for you.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430272199" title="JavaScript for Absolute Beginners)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/programming/javascript">JavaScript</a> titles</p></div>

                </li>
                    </ul>


                    <ul class="products-grid">
                        <li class="item first">
	   <p class="product-name"><a href="http://www.apress.com/9781430230908" title="The Definitive Guide to HTML5 Video)">The Definitive Guide to HTML5 Video</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430230908"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430230908-small_15.png" alt="The Definitive Guide to HTML5 Video" /></a>

                    This book is the first comprehensive guide to HTML5 Video, the new web standard that allows browsers to support audio and video elements natively.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430230908" title="The Definitive Guide to HTML5 Video)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/web-development/web-standards">Web Standards</a> titles</p></div>

                </li>


                        <li class="item last">
	   <p class="product-name"><a href="http://www.apress.com/9781430233060" title="Windows Phone 7 Game Development)">Windows Phone 7 Game Development</a></p>
                    <a class="product-image" href="http://www.apress.com/9781430233060"><img class="product-image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/80x/040ec09b1e35df139433887a97daa66f/A/9/A9781430233060-small_11.png" alt="Windows Phone 7 Game Development" /></a>

                    Learn to develop fun and sophisticated games for the Windows 7 Phone platform using C# and Visual Studio 2010.                       <div class="actions">
                    <p> <a href="http://www.apress.com/9781430233060" title="Windows Phone 7 Game Development)">Learn More</a> |
                                                    <a href="">Add to Wishlist</a></p>
<p>Browse other <a href="http://www.apress.com/game-programming/mobile">Mobile</a> titles</p></div>

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
<script type="text/javascript">
	AC_FL_RunContent = 0;
</script>
<script src="http://www.apress.com/skin/frontend/enterprise/soho/dailydeal/js/AC_RunActiveContent.js" language="javascript"></script>


<div class="block block-dotd">
        <h2 class="icon">Deal of the Day</h2>



							<a href="http://www.apress.com/dailydeal/"><img id="A9781430224396" class="product_image" src="http://www.apress.com/media/catalog/product/cache/9/small_image/125x/040ec09b1e35df139433887a97daa66f/A/9/A9781430224396-small_4.png" alt="The Definitive Guide to SugarCRM" /></a>
				<script type="text/javascript" language="javascript">
		new Tip('A9781430224396',
			'<p><em></em></p><p>The Definitive Guide to SugarCRM is the first official SugarCRM book available to developers and users. This definitive book begins by talking about the SugarCRM platform components, namely MVC, Studio, Module Builder, authentication, and themes, before moving on to more advanced topics.</p><p class="pubdate">Published November 10, 2009</p>', {
			width:226, border: 2, radius: 2,
			title: 'The Definitive Guide to SugarCRM',
			className: 'soho'
			});

		</script>


									<p class="centred"><a href="http://www.apress.com/dailydeal/">The Definitive Guide to SugarCRM</a></p>

			  									<p class="centred was-price">Regular Price $41.99</p>
					<p class="centred"><a class="medium yellow button" href="http://www.apress.com/dailydeal/">Buy today for $10.00</a></p>





								</div>
<div class="block">

        <h2>Companion eBooks</h2>
  <p>Why limit yourself to one format? If you've purchased the print edition of most Apress titles then we&rsquo;re happy to offer you the eBook edition for just $10.</p>

<!--		 <li><a href="">About Promotions</a></li> -->
			<p class="centred"><a href="http://www.apress.com/companion/customer/view/" class="medium yellow button">Buy a Companion eBook</a></p>

</div>

<div class="block block-ug interact">

        <h2>User Group Program</h2>
  <p>Register your user group with the Apress to take advantage of discounts on books, receive review copies, door prizes, and much, much more &hellip;</p>

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
<p>Bulk discounts apply when you buy ten or more Apress or friends of ED titles in either hard copy or eBook format.</p>
<p class="more"><a href="/bulk-sales">Learn More</a></p>
</div></div>


        </div>
                <div class="footer-container">
	<div id="tweet">
	 <img src="/skin/frontend/enterprise/soho/images/sonata.gif" alt="loading"/>
	</div>
   <div class="footer">
              <div class="footer-links">
<h4>Quick Links</h4>
<ul>
	<li>Interact with Us
		<ul>
			<li><a href="/contacts/">Contact Us</a></li>
			<li><a href="/customer-support/">Customer Support</a></li>
			<li><a href="/user-group-program/">User Groups</a></li>
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
	<li><a href="http://www.apress.com/catalog/category/view/id/1/"></a></li><li><a href="http://www.apress.com/microsoft/net-framework">.NET Framework</a></li><li><a href="http://www.apress.com/oracle/net-with-oracle">.NET with Oracle</a></li><li><a href="http://www.apress.com/office/access">Access</a></li><li><a href="http://www.apress.com/other-topics/acrobat">Acrobat</a></li><li><a href="http://www.apress.com/networking/active-directory">Active Directory</a></li><li><a href="http://www.apress.com/programming/ada">ADA</a></li><li><a href="http://www.apress.com/open-source/administration">Administration</a></li><li><a href="http://www.apress.com/microsoft/ado-net">ADO.NET</a></li><li><a href="http://www.apress.com/web-development/ajax">AJAX</a></li><li><a href="http://www.apress.com/mobile/android">Android</a></li><li><a href="http://www.apress.com/web-development/animation">Animation</a></li><li><a href="http://www.apress.com/other-topics/aol">AOL</a></li><li><a href="http://www.apress.com/java/apache">Apache</a></li><li><a href="http://www.apress.com/apple-mac">Apple/Mac</a></li><li><a href="http://www.apress.com/apple-mac/applescript">AppleScript</a></li><li><a href="http://www.apress.com/oracle/application-express">Application Express</a></li><li><a href="http://www.apress.com/open-source/arduino">Arduino</a></li><li><a href="http://www.apress.com/microsoft/asp-net">ASP.NET</a></li><li><a href="http://www.apress.com/graphics/autocad">AutoCAD</a></li><li><a href="http://www.apress.com/microsoft/azure">Azure</a></li><li><a href="http://www.apress.com/servers/biztalk">BizTalk</a></li><li><a href="http://www.apress.com/mobile/blackberry">Blackberry</a></li><li><a href="http://www.apress.com/graphics/blender">Blender</a></li><li><a href="http://www.apress.com/media-books/blogging">Blogging</a></li><li><a href="http://www.apress.com/business">Business</a></li><li><a href="http://www.apress.com/programming/c-1">C</a></li><li><a href="http://www.apress.com/microsoft/c">C#</a></li><li><a href="http://www.apress.com/microsoft/c-c">C/C++</a></li><li><a href="http://www.apress.com/programming/career-advice">Career Advice</a></li><li><a href="http://www.apress.com/java/certification">Certification</a></li><li><a href="http://www.apress.com/networking/cisco">Cisco</a></li><li><a href="http://www.apress.com/open-source/clojure">Clojure</a></li><li><a href="http://www.apress.com/servers/cms">CMS</a></li><li><a href="http://www.apress.com/robots-and-electronics/cnc-machines">CNC Machines</a></li><li><a href="http://www.apress.com/programming/cocoa">Cocoa</a></li><li><a href="http://www.apress.com/open-source/content-management">Content Management</a></li><li><a href="http://www.apress.com/servers/crm">CRM</a></li><li><a href="http://www.apress.com/mobile/cross-platform">Cross Platform</a></li><li><a href="http://www.apress.com/programming/css">CSS</a></li><li><a href="http://www.apress.com/programming/d-language">D Language</a></li><li><a href="http://www.apress.com/databases/database-administration">Database Administration</a></li><li><a href="http://www.apress.com/databases/database-techniques">Database Techniques</a></li><li><a href="http://www.apress.com/databases">Databases</a></li><li><a href="http://www.apress.com/web-development/dotnetnuke">DotNetNuke</a></li><li><a href="http://www.apress.com/graphics/dreamweaver">Dreamweaver</a></li><li><a href="http://www.apress.com/java/eclipse">Eclipse</a></li><li><a href="http://www.apress.com/web-development/ecommerce">ECommerce</a></li><li><a href="http://www.apress.com/networking/edirectory">eDirectory</a></li><li><a href="http://www.apress.com/java/ejb">EJB</a></li><li><a href="http://www.apress.com/microsoft/entity-framework">Entity Framework</a></li><li><a href="http://www.apress.com/business/entrepreneur">Entrepreneur</a></li><li><a href="http://www.apress.com/office/excel">Excel</a></li><li><a href="http://www.apress.com/web-development/expression-blend">Expression Blend</a></li><li><a href="http://www.apress.com/web-development/expression-web">Expression Web</a></li><li><a href="http://www.apress.com/microsoft/f">F#</a></li><li><a href="http://www.apress.com/web-development/flash">Flash</a></li><li><a href="http://www.apress.com/programming/fortran">Fortran</a></li><li><a href="http://www.apress.com/apple-mac/game-development">Game Development</a></li><li><a href="http://www.apress.com/game-programming/game-maker">Game Maker</a></li><li><a href="http://www.apress.com/game-programming">Game Programming</a></li><li><a href="http://www.apress.com/robots-and-electronics/geocaching">GeoCaching</a></li><li><a href="http://www.apress.com/graphics/gimp">GIMP</a></li><li><a href="http://www.apress.com/google">Google</a></li><li><a href="http://www.apress.com/google/google-api">Google API</a></li><li><a href="http://www.apress.com/google/google-app-engine">Google App Engine</a></li><li><a href="http://www.apress.com/google/google-apps">Google Apps</a></li><li><a href="http://www.apress.com/google/google-blogger">Google Blogger</a></li><li><a href="http://www.apress.com/google/google-guice">Google Guice</a></li><li><a href="http://www.apress.com/google/google-maps">Google Maps</a></li><li><a href="http://www.apress.com/google/google-sketchup">Google SketchUp</a></li><li><a href="http://www.apress.com/it/governance">Governance</a></li><li><a href="http://www.apress.com/java/grails-groovy">Grails/Groovy</a></li><li><a href="http://www.apress.com/graphics">Graphics</a></li><li><a href="http://www.apress.com/open-source/graphics-and-digital-media">Graphics and Digital Media</a></li><li><a href="http://www.apress.com/google/gwt">GWT</a></li><li><a href="http://www.apress.com/programming/hadoop">Hadoop</a></li><li><a href="http://www.apress.com/java/hibernate">Hibernate</a></li><li><a href="http://www.apress.com/networking/honeypots">Honeypots</a></li><li><a href="http://www.apress.com/web-development/html">HTML</a></li><li><a href="http://www.apress.com/servers/hyper-v">Hyper-V</a></li><li><a href="http://www.apress.com/other-topics/internet">Internet</a></li><li><a href="http://www.apress.com/microsoft/internet-explorer">Internet Explorer</a></li><li><a href="http://www.apress.com/mobile/ios">iOS</a></li><li><a href="http://www.apress.com/mobile/iphone-ipad">iPhone & iPad</a></li><li><a href="http://www.apress.com/media-books/ipod">iPod</a></li><li><a href="http://www.apress.com/networking/ipv6">IPV6</a></li><li><a href="http://www.apress.com/it">IT</a></li><li><a href="http://www.apress.com/java">Java</a></li><li><a href="http://www.apress.com/java/java-data">Java Data</a></li><li><a href="http://www.apress.com/java/java-ee">Java EE</a></li><li><a href="http://www.apress.com/java/java-graphics">Java Graphics</a></li><li><a href="http://www.apress.com/java/java-ide">Java IDE</a></li><li><a href="http://www.apress.com/java/java-me">Java ME</a></li><li><a href="http://www.apress.com/java/java-programming">Java Programming</a></li><li><a href="http://www.apress.com/oracle/java-with-oracle">Java with Oracle</a></li><li><a href="http://www.apress.com/java/javafx">JavaFX</a></li><li><a href="http://www.apress.com/programming/javascript">JavaScript</a></li><li><a href="http://www.apress.com/web-development/joomla">Joomla</a></li><li><a href="http://www.apress.com/web-development/jquery">jQuery</a></li><li><a href="http://www.apress.com/java/jsf">JSF</a></li><li><a href="http://www.apress.com/java/jsp">JSP</a></li><li><a href="http://www.apress.com/servers/lcs">LCS</a></li><li><a href="http://www.apress.com/programming/learn-how-to-program">Learn How to Program</a></li><li><a href="http://www.apress.com/programming/lego">LEGO</a></li><li><a href="http://www.apress.com/microsoft/linq">LINQ</a></li><li><a href="http://www.apress.com/apple-mac/linux">Linux</a></li><li><a href="http://www.apress.com/open-source/linux-and-unix">Linux and Unix</a></li><li><a href="http://www.apress.com/oracle/linux-with-oracle">Linux with Oracle</a></li><li><a href="http://www.apress.com/programming/lisp">LISP</a></li><li><a href="http://www.apress.com/web-development/livecycle">LiveCycle</a></li><li><a href="http://www.apress.com/user-guides/low-cost-computing">Low-cost Computing</a></li><li><a href="http://www.apress.com/game-programming/programming/lua">LUA</a></li><li><a href="http://www.apress.com/game-programming/mac">Mac</a></li><li><a href="http://www.apress.com/user-guides/mac-os-x">Mac OS X</a></li><li><a href="http://www.apress.com/it/marketing">Marketing</a></li><li><a href="http://www.apress.com/media-books">Media</a></li><li><a href="http://www.apress.com/programming/methods-and-techniques">Methods and Techniques</a></li><li><a href="http://www.apress.com/microsoft">Microsoft</a></li><li><a href="http://www.apress.com/mobile">Mobile</a></li><li><a href="http://www.apress.com/graphics/movie-maker">Movie Maker</a></li><li><a href="http://www.apress.com/databases/mysql">MySQL</a></li><li><a href="http://www.apress.com/java/netbeans">NetBeans</a></li><li><a href="http://www.apress.com/user-guides/netbooks">Netbooks</a></li><li><a href="http://www.apress.com/networking">Networking</a></li><li><a href="http://www.apress.com/mobile/nokia">Nokia</a></li><li><a href="http://www.apress.com/networking/ntp">NTP</a></li><li><a href="http://www.apress.com/java/objective-c">Objective-C</a></li><li><a href="http://www.apress.com/office">Office</a></li><li><a href="http://www.apress.com/it/offshoring">Offshoring</a></li><li><a href="http://www.apress.com/open-source">Open Source</a></li><li><a href="http://www.apress.com/networking/openldap">OpenLDAP</a></li><li><a href="http://www.apress.com/networking/openssh">OpenSSH</a></li><li><a href="http://www.apress.com/databases/oracle">Oracle</a></li><li><a href="http://www.apress.com/oracle/oracle-administration">Oracle Administration</a></li><li><a href="http://www.apress.com/oracle/oracle-development">Oracle Development</a></li><li><a href="http://www.apress.com/open-source/os-applications">OS Applications</a></li><li><a href="http://www.apress.com/databases/other-databases">Other Databases</a></li><li><a href="http://www.apress.com/graphics/other-graphics">Other Graphics</a></li><li><a href="http://www.apress.com/java/other-java">Other Java</a></li><li><a href="http://www.apress.com/programming/other-languages">Other Languages</a></li><li><a href="http://www.apress.com/mobile/other-mobile">Other Mobile</a></li><li><a href="http://www.apress.com/microsoft/other-topics">Other Topics</a></li><li><a href="http://www.apress.com/office/outlook">Outlook</a></li><li><a href="http://www.apress.com/mobile/palm">Palm</a></li><li><a href="http://www.apress.com/programming/patterns">Patterns</a></li><li><a href="http://www.apress.com/java/performance">Performance</a></li><li><a href="http://www.apress.com/servers/performancepoint">PerformancePoint</a></li><li><a href="http://www.apress.com/open-source/perl">Perl</a></li><li><a href="http://www.apress.com/graphics/photoshop">Photoshop</a></li><li><a href="http://www.apress.com/open-source/php">PHP</a></li><li><a href="http://www.apress.com/game-programming/physics">Physics</a></li><li><a href="http://www.apress.com/oracle/pl-sql">PL/SQL</a></li><li><a href="http://www.apress.com/mobile/pocketpc">PocketPC</a></li><li><a href="http://www.apress.com/media-books/podcasting">Podcasting</a></li><li><a href="http://www.apress.com/databases/postgresql">PostgreSQL</a></li><li><a href="http://www.apress.com/catalog/category/view/s/private-sales-root/id/35/">Private Sales Root</a></li><li><a href="http://www.apress.com/open-source/programming">Programming</a></li><li><a href="http://www.apress.com/it/project-management">Project Management</a></li><li><a href="http://www.apress.com/servers/project-server">Project Server</a></li><li><a href="http://www.apress.com/open-source/python">Python</a></li><li><a href="http://www.apress.com/oracle/rac">RAC</a></li><li><a href="http://www.apress.com/web-development/ria">RIA</a></li><li><a href="http://www.apress.com/oracle/rman">RMAN</a></li><li><a href="http://www.apress.com/robots-and-electronics/robots">Robots</a></li><li><a href="http://www.apress.com/robots-and-electronics">Robots and Electronics</a></li><li><a href="http://www.apress.com/catalog/category/view/s/root-catalog/id/3/">Root Catalog</a></li><li><a href="http://www.apress.com/open-source/ruby-rails">Ruby/Rails</a></li><li><a href="http://www.apress.com/other-topics/sas">SAS</a></li><li><a href="http://www.apress.com/servers/sbs">SBS</a></li><li><a href="http://www.apress.com/programming/scala">Scala</a></li><li><a href="http://www.apress.com/it/security">Security</a></li><li><a href="http://www.apress.com/microsoft/servers">Servers</a></li><li><a href="http://www.apress.com/microsoft/sharepoint">SharePoint</a></li><li><a href="http://www.apress.com/microsoft/silverlight">Silverlight</a></li><li><a href="http://www.apress.com/servers/sms">SMS</a></li><li><a href="http://www.apress.com/media-books/social-networking">Social Networking</a></li><li><a href="http://www.apress.com/oracle/spatial">Spatial</a></li><li><a href="http://www.apress.com/servers/speech-server">Speech Server</a></li><li><a href="http://www.apress.com/java/spring">Spring</a></li><li><a href="http://www.apress.com/oracle/sql">SQL</a></li><li><a href="http://www.apress.com/databases/sql-server">SQL Server</a></li><li><a href="http://www.apress.com/servers/stellent">Stellent</a></li><li><a href="http://www.apress.com/game-programming/programming/sudoku">Sudoku</a></li><li><a href="http://www.apress.com/graphics/swift-3d">Swift 3D</a></li><li><a href="http://www.apress.com/it/technical-support">Technical Support</a></li><li><a href="http://www.apress.com/web-development/terracotta">Terracotta</a></li><li><a href="http://www.apress.com/media-books/theatre">Theatre</a></li><li><a href="http://www.apress.com/open-source/ubuntu">Ubuntu</a></li><li><a href="http://www.apress.com/programming/uml">UML</a></li><li><a href="http://www.apress.com/user-guides">User Guides</a></li><li><a href="http://www.apress.com/microsoft/vb-net">VB .NET</a></li><li><a href="http://www.apress.com/programming/vba">VBA</a></li><li><a href="http://www.apress.com/open-source/version-control">Version Control</a></li><li><a href="http://www.apress.com/media-books/video">Video</a></li><li><a href="http://www.apress.com/servers/virtual">Virtual</a></li><li><a href="http://www.apress.com/programming/visual-basic">Visual Basic</a></li><li><a href="http://www.apress.com/programming/visual-basic-6">Visual Basic 6</a></li><li><a href="http://www.apress.com/microsoft/visual-studio">Visual Studio</a></li><li><a href="http://www.apress.com/web-development/web-api">Web API</a></li><li><a href="http://www.apress.com/web-development/web-design">Web Design</a></li><li><a href="http://www.apress.com/web-development">Web Development</a></li><li><a href="http://www.apress.com/web-development/web-development-other">Web Development Other</a></li><li><a href="http://www.apress.com/graphics/web-graphics">Web Graphics</a></li><li><a href="http://www.apress.com/other-topics/web-services">Web Services</a></li><li><a href="http://www.apress.com/web-development/web-standards">Web Standards</a></li><li><a href="http://www.apress.com/user-guides/windows">Windows</a></li><li><a href="http://www.apress.com/user-guides/windows-7">Windows 7</a></li><li><a href="http://www.apress.com/microsoft/windows-administration">Windows Administration</a></li><li><a href="http://www.apress.com/servers/windows-home-server">Windows Home Server</a></li><li><a href="http://www.apress.com/mobile/windows-phone">Windows Phone</a></li><li><a href="http://www.apress.com/servers/windows-server">Windows Server</a></li><li><a href="http://www.apress.com/networking/wireless">Wireless</a></li><li><a href="http://www.apress.com/office/word">Word</a></li><li><a href="http://www.apress.com/media-books/wordpress">WordPress</a></li><li><a href="http://www.apress.com/microsoft/workflow">Workflow</a></li><li><a href="http://www.apress.com/microsoft/wpf">WPF</a></li><li><a href="http://www.apress.com/programming/xcode">Xcode</a></li><li><a href="http://www.apress.com/programming/xml">XML</a></li><li><a href="http://www.apress.com/game-programming/xna">XNA</a></li><li><a href="http://www.apress.com/media-books/zoho">Zoho</a></li><li><a href="http://www.apress.com/game-programming/zune">Zune</a></li></ul>
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
	</script>            </div>
</div>
<!-- SoHo Miscellaneous --></body>
</html>
EODOC

    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor_name
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'The Definitive Guide to SugarCRM', deal.title
    assert_equal 'http://www.apress.com/dailydeal', deal.url
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
