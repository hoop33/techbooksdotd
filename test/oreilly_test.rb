require File.dirname(__FILE__) + "/../techbooksdotd.rb"
require 'test/unit'
require 'rack/test'

set :environment, :test

class OreillyTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_parses_oreilly
    content = <<EODOC
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" media="screen" href="/~d/styles/atom10full.xsl"?><?xml-stylesheet type="text/css" media="screen" href="http://feeds.feedburner.com/~d/styles/itemcontent.css"?><feed xmlns="http://www.w3.org/2005/Atom" xmlns:feedburner="http://rssnamespace.org/feedburner/ext/1.0">
    <title>O'Reilly Deal of the Day</title>
    
    <link rel="alternate" type="text/html" href="http://oreilly.com" />
    <id>tag:blogs.oreilly.com,2010-02-03:/dealoftheday//74</id>
    <subtitle>Keep up with O'Reilly's Deal of the Day! Deal sales are one day only, unless stated otherwise.</subtitle>

<updated>2014-04-16T00:00:00-06:00</updated>

<atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="self" type="application/atom+xml" href="http://feeds.feedburner.com/oreilly/ebookdealoftheday" /><feedburner:info uri="oreilly/ebookdealoftheday" /><atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="hub" href="http://pubsubhubbub.appspot.com/" /><entry>
  <title>#Ebook Deal/Day: Plan, Activity, and Intent Recognition: Theory and Practice - $59.98 (Save 50%)

 Use code DEAL</title>

<link rel="alternate" href="http://feedproxy.google.com/~r/oreilly/ebookdealoftheday/~3/Por3kSHOcto/9780123985323.do" />

    <id>http://shop.oreilly.com/product/9780123985323.do#2014-04-16feed</id>
    <published>2014-04-16T00:00:00-06:00</published>
    <updated>2014-04-16T00:00:00-06:00</updated>
    <author>
        <name>O'Reilly Media</name>
   </author>   

<content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/">

&lt;a href='http://shop.oreilly.com/product/9780123985323.do?code=DEAL'&gt;

&lt;img src='http://akamaicovers.oreilly.com/images/9780123985323/bkt.gif' alt='' border='0' /&gt; 
&lt;/a&gt;

&lt;p&gt;
 Get "Plan, Activity, and Intent Recognition" today using code DEAL and save 50%!&lt;/p&gt;&lt;p&gt;&lt;em&gt;This sale ends at 2:00 AM 2014-04-17 (PDT, GMT-8:00).&lt;/em&gt;&lt;/p&gt;

    &lt;img src="http://feeds.feedburner.com/~r/oreilly/ebookdealoftheday/~4/Por3kSHOcto" height="1" width="1"/&gt;</content>
<feedburner:origLink>http://shop.oreilly.com/product/9780123985323.do?code=DEAL</feedburner:origLink></entry>



<entry>
  <title>#Ebook Deal/Day: Mastering Bitcoin: Unlocking digital crypto-currencies - $11.99 (Save 50%)

 Use code DEAL</title>

<link rel="alternate" href="http://feedproxy.google.com/~r/oreilly/ebookdealoftheday/~3/s54TeEiGz0k/0636920032281.do" />

    <id>http://shop.oreilly.com/product/0636920032281.do#2014-04-15feed</id>
    <published>2014-04-15T00:00:00-06:00</published>
    <updated>2014-04-15T00:00:00-06:00</updated>
    <author>
        <name>O'Reilly Media</name>
   </author>   

<content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/">

&lt;a href='http://shop.oreilly.com/product/0636920032281.do?code=DEAL'&gt;

&lt;img src='http://akamaicovers.oreilly.com/images/0636920032281/rc_bkt.gif' alt='' border='0' /&gt; 
&lt;/a&gt;

&lt;p&gt;
 Get "Mastering Bitcoin" today using code DEAL and save 50%!&lt;/p&gt;&lt;p&gt;&lt;em&gt;This sale ends at 2:00 AM 2014-04-16 (PDT, GMT-8:00).&lt;/em&gt;&lt;/p&gt;

    &lt;img src="http://feeds.feedburner.com/~r/oreilly/ebookdealoftheday/~4/s54TeEiGz0k" height="1" width="1"/&gt;</content>
<feedburner:origLink>http://shop.oreilly.com/product/0636920032281.do?code=DEAL</feedburner:origLink></entry>



<entry>
  <title>#Ebook Deal/Day: Webmin Administrator's Cookbook - $13.49 (Save 50%)

 Use code DEAL</title>

<link rel="alternate" href="http://feedproxy.google.com/~r/oreilly/ebookdealoftheday/~3/dbhOUCRo5_w/9781849515849.do" />

    <id>http://shop.oreilly.com/product/9781849515849.do#2014-04-14feed</id>
    <published>2014-04-14T00:00:00-06:00</published>
    <updated>2014-04-14T00:00:00-06:00</updated>
    <author>
        <name>O'Reilly Media</name>
   </author>   

<content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/">

&lt;a href='http://shop.oreilly.com/product/9781849515849.do?code=DEAL'&gt;

&lt;img src='http://akamaicovers.oreilly.com/images/9781849515849/bkt.gif' alt='' border='0' /&gt; 
&lt;/a&gt;

&lt;p&gt;
 Get "Webmin Administrator's Cookbook" today using code DEAL and save 50%!&lt;/p&gt;&lt;p&gt;&lt;em&gt;This sale ends at 2:00 AM 2014-04-15 (PDT, GMT-8:00).&lt;/em&gt;&lt;/p&gt;

    &lt;img src="http://feeds.feedburner.com/~r/oreilly/ebookdealoftheday/~4/dbhOUCRo5_w" height="1" width="1"/&gt;</content>
<feedburner:origLink>http://shop.oreilly.com/product/9781849515849.do?code=DEAL</feedburner:origLink></entry>

</feed>

EODOC

    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor_name
    assert_equal 'http://www.oreilly.com/', deal.vendor_url
    assert_equal "#Ebook Deal/Day: Plan, Activity, and Intent Recognition: Theory and Practice - $59.98 (Save 50%)\n\n Use code DEAL", deal.title
    assert_equal 'http://feedproxy.google.com/~r/oreilly/ebookdealoftheday/~3/Por3kSHOcto/9780123985323.do', deal.url
  end
  
  def test_it_parses_oreilly_nil
    content = nil
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor_name
    assert_equal 'http://www.oreilly.com/', deal.vendor_url
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
  end

  def test_it_parses_oreilly_empty
    content = ''
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor_name
    assert_equal 'http://www.oreilly.com/', deal.vendor_url
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
  end

  def test_it_parses_oreilly_bad
    content = 'Does not contain the data'
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor_name
    assert_equal 'http://www.oreilly.com/', deal.vendor_url
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
  end
end
