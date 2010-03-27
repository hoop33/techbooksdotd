require File.dirname(__FILE__) + "/../myapp.rb"
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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head> 
	<title>APRESS.COM | Books for Professionals, by Professionals ...</title> 
		<link rel="stylesheet" href="/css/common.css" type="text/css" media="screen" charset="utf-8" /> 
	<link rel="stylesheet" href="/css/main.css" type="text/css" media="screen" charset="utf-8" /> 
	<meta name="description" content="Apress.com. Books for Professionals, by Professionals(TM))" /> 
	<meta name="keywords" content="Apress.com, Apress, NET, Mac OS X, iPhone, Microsoft, database, books, php, java, cornell, web, open source, sql, c, csharp, c++, publisher, lego, mindstorms, development, technology, visual basic, vb, wireless, publishers, tech, msoft, ms, code, programmer, professional, knowledge" /> 
	<meta name="MSSmartTagsPreventParsing" content="true" /> 
	<meta http-equiv="imagetoolbar" content="false" /> 
	<script src="/js/prototype.js" type="text/javascript"></script> 
	<script src="/js/scriptaculous.js" type="text/javascript"></script> 
	<script src="/js/toggleDisp.js" type="text/javascript"></script> 
		<script src="/js/common.js" type="text/javascript"></script> 
	<script src="/js/menu.js" type="text/javascript"></script> 
	 
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	
</head><body> 
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"> 
</script> 
<script type="text/javascript"> 
_uacct = "UA-952005-1";
urchinTracker();
</script> 
 
<div id='bookpopup' style="display:none;width:250px;z-index:1000;background-color:#FFFFCC;border:3px solid #CC6633;padding:0px;"> 
                <div style="padding:5px;"><div style="height:130px;float:left;width:1px;"></div><div id='bookpopup_description'>Beginning HTML with CSS and XHTML incorporates practical examples that will show you how to structure your data correctly using (X)HTML, together with styling and layout basics using CSS. It also shows how to add dynamic behavior to your data using the JavaScript. language. All of the featured code and techniques are standards compliant and demonstrate best practices.so you will not waste time on any outdated techniques.</div></div> 
	<br class='spacer' /> 
        <div id='bookpopup_misc' style="background-color:#CC6633;color:#ffffff;padding:5px;margin:0px;"></div> 
</div> 
<img id='bookpopuparrow' style="display:none;z-index:1;" src='/img/tooltip_arrow.gif' alt='' /> 
<div id="container"> 
<div id="masthead"> 
	<a href='/' style="float:left;"><img src='/img/masthead_logo.gif' alt="Go To Homepage" /></a> 
        <div style="padding-right:30px;padding-top:30px;float:right;"> 
                <form action='/book/search' method='get' style="margin:0px;padding:0;"><table style="margin:0px;padding:0;"><tr> 
                <td><input type='text' name='searchterm' size='50' value='Search' style="color:#6F6F6F;border:2px #999966 solid;" onfocus="this.value=''; this.style.color='#202020';" /></td> 
                <td><input type='hidden' name='act' value='search' /> 
                        <input type='image' name='submit' src='/img/button_Go.gif' /> 
                </td></tr></table> 
                </form> 
        </div> 
</div> 
<div id="navAndSearch"> 
<script type="text/javascript"> 
/* <![CDATA[ */
function showsub(active) {
	var l = [ 'support', 'catalog', 'ebookshop', 'connection', 'about', 'home'];
	var index = -1;
	for (var i=0; i<l.length; i++) {
		if (l[i] == active) index=i;
		document.getElementById(l[i]).style.display = 'none';
		document.getElementById(l[i] + 'nav').style.backgroundColor = '#CCCC99';
		document.getElementById(l[i] + 'nav').style.color = '#000000';
	}
	if (index < 0) return;
 
	var obj = document.getElementById(active);
	obj.style.display = 'block';
	var color = '#999966';
	obj.parentNode.style.backgroundColor = color;
	document.getElementById(active + 'nav').style.backgroundColor = color;
	document.getElementById(active + 'nav').style.color = '#FFFFFF';
}
/* ]]> */
</script> 
	<ul id="nav"> 
	<li><a href='/' onclick="return true;" id='homenav' onmouseover="showsub('home')">Home</a></li> 
	<li><a href='/book/catalog' onclick="return true;" id='catalognav' onmouseover="showsub('catalog')">Books</a></li> 
        <li><a href="/ecommerce/ebookshop" id='ebookshopnav' onclick="return true;" onmouseover="showsub('ebookshop')">eBookshop</a></li> 
	<li><a href="/community" id='connectionnav' onclick="return true;" onmouseover="showsub('connection')">Community</a></li> 
<!--       <li><a href="http://www.friendsofed.com" id='connectionnav' onclick="return true;" onmouseover="showsub('connection')">friends of ED</a></li>
--> 
	<li><a href="/info/aboutapress" onclick="return true;" id='aboutnav' onmouseover="showsub('about')">About Apress</a></li> 
	<li><a href="/info/faq" onclick="return true;" id='supportnav' onmouseover="showsub('support')">Support</a></li> 
	</ul> 
</div> 
<div class="subcat"> 
		<ul id='home' style="display:block"> 
			<li><a href='/ecommerce/member'>Member Login</a></li> 
<li><a href='/book/order'>Sales &amp; Distribution</a></li> 
<li><a href='/book/sourcecode'>Source Code</a></li> 
<li><a href='/book/academicresource'>Academic Resources</a></li> 
<li><a href='/community/tradesite'>Trade Site</a></li> 
		</ul> 
		<ul id='ebookshop' style="display:none"> 
			<li><a href='/ecommerce/member'>Member Login</a></li> 
<li><a href='/ebook/catalog'>eBook Catalog</a></li> 
<li><a href='/ebook/firstpress'>firstPress</a></li> 
<li><a href='/ebook/alpha'>Alpha Program</a></li> 
<li><a href='/promotion'>Promotions</a></li> 
<li><a href='/info/bulksales'>eBook Licensing</a></li> 
<li><a href='/info/faq'>FAQ</a></li> 
		</ul> 
		<ul id='catalog' style="display:none"> 
			<li><a href='/book/catalog'>Book Catalog</a></li> 
<li><a href='/book/sourcecode'>Source Code</a></li> 
<li><a href='/book/order'>Sales &amp; Distribution</a></li> 
<li><a href='/book/academicresource'>Academic Resources</a></li> 
<li><a href='/info/bulksales'>Bulk Sales</a></li> 
		</ul> 
		<ul id='connection' style="display:none"> 
			<li><a href='http://www.friendsofed.com'>friends of ED</a></li> 
<li><a href='/community/usergroup'>User Groups</a></li> 
<li><a href='/community/newsletter'>Newsletters</a></li> 
<li><a href='/community/eventcalendar'>Event Calendar</a></li> 
<li><a href='/community/interview'>Audio &amp; Video</a></li> 
<li><a href='/community/tradesite'>Trade Site</a></li> 
		</ul> 
		<ul id='about' style="display:none"> 
			<li><a href='/info'>Company Info</a></li> 
<li><a href='/info/contact'>Contact Us</a></li> 
<li><a href='/info/writeforus'>Write for Us</a></li> 
		</ul> 
		<ul id='support' style="display:none"> 
			<li><a href=''></a></li> 
	</ul> 
</div> 
<br class='spacer' /><br /><br /> 
<script type="text/javascript">showsub('home');</script> 
 
 
<div id="maincontent"> 
	<div id="sidebarleft"> 
		<!--
<div class='module'>
	<div class='header'>Site Search</div>
	<div class='content' >
		<form action='/info/sitesearch' target='blank' method='post'>
		<p>What are you looking for?</p>
		<input type='text' name='searchterm' size='20' /><br />
		<input align='right' type='submit' name='submit' value='Search Now' />
		</form>
	</div>
</div>
<br />
-->					<div class='module'> 
	<div class='header_emphasis'>My eBook</div> 
	<div class='content'> 
		<ul> 
<li><a href='/ecommerce/member'>My Account</a></li><li><a href='/ecommerce/download'>Download eBook(s)</a></li>		</ul> 
	</div> 
</div> 
<br /> 
 
			 <div class='module'> 
     <div class='header'>eBook Deal Of The Day </div> 
     <div class='content'> 
 
 
<div align='center'><a href='/info/dailydeal'><img src='/img/dealofdaysanstimer_v2.gif' border='0' alt='eBook Deal Of The Day' /></a></div> 
 
     </div> 
</div> 
<br /> 
 
 
<!--dealofdaysanstimer_v2.gif-->			<div class='module'> 
        <div class='header'>Browse By Technology </div> 
        <div class='content'> 
        <div id="menu"> 
        <ul> 
 
<li><a href="/book/catalog?category=27">.NET</a><ul><li><a href="/book/catalog?category=38">C/C++/C#</a></li><li><a href="/book/catalog?category=33">Visual Basic</a></li><li><a href="/book/catalog?category=39">ADO.NET</a></li><li><a href="/book/catalog?category=40">SQL Server</a></li><li><a href="/book/catalog?category=41">ASP</a></li></ul></li><li><a href="/book/catalog?category=28">Open Source</a><ul><li><a href="/book/catalog?category=142">Perl</a></li><li><a href="/book/catalog?category=143">PHP</a></li><li><a href="/book/catalog?category=144">Python</a></li><li><a href="/book/catalog?category=145">MySQL</a></li><li><a href="/book/catalog?category=146">Apache</a></li><li><a href="/book/catalog?category=147">Linux</a></li><li><a href="/book/catalog?category=155">Ruby</a></li></ul></li><li><a href="/book/catalog?category=32">Java</a></li><li><a href="/book/catalog?category=34">Windows</a></li><li><a href="/book/catalog?category=35">Wireless</a></li><li><a href="/book/catalog?category=37">System Administration</a></li><li><a href="/book/catalog?category=42">Database/SQL</a><ul><li><a href="/book/catalog?category=148">Oracle</a></li></ul></li><li><a href="/book/catalog?category=44">General Computing</a></li><li><a href="/book/catalog?category=45">XML</a></li><li><a href="/book/catalog?category=46">Technology in Action</a></li><li><a href="/book/catalog?category=72">Web Development</a></li><li><a href="/book/catalog?category=154">Mac OS X and iPhone</a></li><li><a href="/book/catalog?category=200">friends of ED</a><ul><li><a href="/book/catalog?category=201">Flash</a></li><li><a href="/book/catalog?category=202">Digital Imaging</a></li><li><a href="/book/catalog?category=203">Digital Video</a></li><li><a href="/book/catalog?category=204">Web Design and Development</a></li></ul></li>        </ul> 
        </div> 
        </div> 
</div> 
<br /> 
 
                        <div class='module'> 
	<div class='header'>Subscription Services</div> 
		<div class='content'> 
	<p>As well as being available in print and as standalone eBooks, many Apress titles are also available via a number of online subscription services.</p> 
 
			<a href="http://books24x7.com/books24x7.asp"><img src="/img/img05/books247.gif" width="125" height="81" border="0" class="centeredImage" alt="books 24x7 logo"/></a> 
      
                       <a href='/info/springerlink'><img src="/img/springerlinklogo.jpg" width="125" height="25" border="0" class="centeredImage" alt="SpringerLink"/></a> 
     
            <a href="http://my.safaribooksonline.com/search?searchtextbox=apress&amp;searchmode=simple&amp;searchview=summary&amp;searchfor=SearchForAllBooks&amp;searchlistbox=&amp;isbn"><img src="/img/safari_125x46.gif" width="125" height="46" border="0" class="centeredImage" alt="safari"/></a> 
          
   </div> 
</div>		
			</div> 
	<div id="middlewide"><div class='breadcrumb'><a href='/'>Home</a>&nbsp;<img src='/img/v2/bullet.gif' />&nbsp;<a href='/promotion'>Promotions</a>&nbsp;<img src='/img/v2/bullet.gif' />&nbsp;About eBook  Deal of the Day</div> 
 
<h2>What is the eBook Deal Of The Day?</h2> 
   <p> At 12:01 AM PST, a different Apress or friends of ED eBook will be priced at $10 US for a 24-hour period. Check back everyday for a new deal.  If you have any further questions, please contact <a href="mailto:support@apress.com" title="email support">support@apress.com</a>.</p> 
<br /> 
 
<h1>Today's Title</h1> 
<div style="overflow:auto;display:block;"> 
<div class='bookdetails'> 
        <h3><a href='/book/view/1590592662'>Hardening Windows</a></h3> 
        <div class='cover'><a href="/book/view/1590592662"><img width='125' src="/resource/bookcover/9781590592663?size=medium" border='0' alt="Hardening Windows" align='left' /></a></div> 
        <p><font color="red"><b>Read the blog about <i>Hardening Windows</i> on <a href="http://hostit1.connectria.com/twduff/home.nsf/plinks/TDUF-6343RT"target=_blank>Duffbert's Random Musings</a></font></b></p> 
 
<p>This guide is designed to provide a quick and easy checklist-style reference to the steps system administrators need to take to anticipate attacks and compromises, and to "harden" Windows NT, 2000, XP, and Server 2003 against them.
        <div class='footer'>$29.99 | Published Apr 2004 | Jonathan Hassell</div> 
</div> 
 
</div> 
<a href='/ecommerce/cart?act=add&amp;bid=203'><img src='/img/purchase$10_reducehalf.gif' border='0' alt="Purchase eBook" /></a> 
 
        <p><em>Titles available as part of the eBook Deal of the Day are not eligible for further discounts.<em></p> 
<br class='spacer' /> 
</div> 
</div> 
<div id='footer'> 
	<p><a href="/info/sitemap">Site Map</a> | <a href="/info/privacypolicy">Privacy Policy</a> | <a href="/info/contact">Contact Apress</a> </p> 
</div> 
</div> 
</body> 
</html>
EODOC

    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'Hardening Windows', deal.title
    assert_equal 'http://apress.com/book/view/1590592662', deal.url
  end
  
  def test_it_parses_apress_nil
    content = nil
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end

  def test_it_parses_apress_empty
    content = ''
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end

  def test_it_parses_apress_bad
    content = 'Does not contain the data'
    deal = get_apress(content)
    assert_equal 'Apress', deal.vendor
    assert_equal 'http://www.apress.com/', deal.vendor_url
    assert_equal 'No results -- check Apress site', deal.title
    assert_equal 'http://www.apress.com/', deal.url
  end
end
