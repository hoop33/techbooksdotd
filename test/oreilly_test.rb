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
      <feed xmlns="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:on="http://www.oreillynet.com/csrss/" xmlns:feedburner="http://rssnamespace.org/feedburner/ext/1.0"> 
    <title>O'Reilly Deal of the Day</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com" /> 
    <id>tag:blogs.oreilly.com,2010-02-03:/dealoftheday//74</id> 
    <updated>2010-03-25T06:30:09Z</updated> 
    <subtitle>Get the latest news on O'Reilly's Deal of the Day</subtitle> 
    <generator uri="http://www.sixapart.com/movabletype/">Movable Type Pro 4.21-en</generator> 
 
<atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="self" type="application/atom+xml" href="http://feeds.feedburner.com/oreilly/ebookdealoftheday" /><feedburner:info uri="oreilly/ebookdealoftheday" /><atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="hub" href="http://pubsubhubbub.appspot.com/" /><feedburner:browserFriendly></feedburner:browserFriendly><entry> 
    <title>Ebook Deal of the Day: Regular Expressions Cookbook - Only $9.99! Use code DDREC</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596520694/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39329</id> 
    <published>2010-03-25T06:30:00Z</published> 
    <updated>2010-03-25T06:30:00Z</updated> 
    <summary>"Regular Expressions Cookbook" for only $9.99. Use discount code DDREC to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Regular Expressions Cookbook" for only $9.99. Use discount code DDREC to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Complete Web Monitoring - Only $9.99! Use code DDCWM</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596155148/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39327</id> 
    <published>2010-03-24T06:30:00Z</published> 
    <updated>2010-03-24T06:30:00Z</updated> 
    <summary>"Complete Web Monitoring" for only $9.99. Use code DDCWM to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Complete Web Monitoring" for only $9.99. Use code DDCWM to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Developing Service-Oriented AJAX Applications on the Microsoft Platform - Only $9.99! Use code DDDSA</title>
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780735625914/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39326</id> 
    <published>2010-03-23T06:30:00Z</published> 
    <updated>2010-03-23T06:30:00Z</updated> 
    <summary>"Developing Service-Oriented AJAX Applications on the Microsoft Platform" for only $9.99. Use code DDDSA to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Developing Service-Oriented AJAX Applications on the Microsoft Platform" for only $9.99. Use code DDDSA to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Head First HTML with CSS &amp; XHTML - Only $9.99! Use code DDHFH</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596101978/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39115</id> 
    <published>2010-03-22T06:30:00Z</published> 
    <updated>2010-03-22T06:30:00Z</updated> 
    <summary>"Head First HTML with CSS &amp; XHTML" for only $9.99. Use discount code DDHFH to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Head First HTML with CSS &amp; XHTML" for only $9.99. Use discount code DDHFH to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: The Art of Community -- Only $9.99! Use code DDTAC</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596805753/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.38863</id> 
    <published>2010-03-21T06:30:00Z</published> 
    <updated>2010-03-21T06:30:00Z</updated> 
    <summary>"The Art of Community" for only $9.99. Use discount code DDTAC to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "The Art of Community" for only $9.99. Use discount code DDTAC to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Living Green: The Missing Manual -- Only $9.99! Use code DDLGM</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596805661/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.38865</id> 
    <published>2010-03-20T06:30:00Z</published> 
    <updated>2010-03-20T06:30:00Z</updated> 
    <summary>"Living Green: The Missing Manual" for only $9.99. Use discount code DDLGM to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Living Green: The Missing Manual" for only $9.99. Use discount code DDLGM to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: QuickBooks 2010: The Missing Manual - Only $9.99! Use code DDQB2</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596804039/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39321</id> 
    <published>2010-03-18T06:30:00Z</published> 
    <updated>2010-03-18T06:30:00Z</updated> 
    <summary>QuickBooks 2010: The Missing Manual for only $9.99. Use discount code DDQB2 to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        QuickBooks 2010: The Missing Manual for only $9.99. Use discount code DDQB2 to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Building Social Web Applications - Only $9.99! Use code DDBSW</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596518769/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39318</id> 
    <published>2010-03-17T06:30:00Z</published> 
    <updated>2010-03-17T06:30:00Z</updated> 
    <summary>"Building Social Web Applications" for only $9.99. Use discount code DDBSW to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Building Social Web Applications" for only $9.99. Use discount code DDBSW to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: 97 Things Every Programmer Should Know - Only $9.99! Use code DD97T</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596809492/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39319</id> 
    <published>2010-03-16T06:30:00Z</published> 
    <updated>2010-03-16T06:30:00Z</updated> 
    <summary>97 Things Every Programmer Should Know for only $9.99. Use discount code DD97T to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        97 Things Every Programmer Should Know for only $9.99. Use discount code DD97T to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: CouchDB: The Definitive Guide - Only $9.99! Use code DDCDB</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596155902/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39317</id> 
    <published>2010-03-15T06:30:00Z</published> 
    <updated>2010-03-15T06:30:00Z</updated> 
    <summary>"CouchDB: The Definitive Guide" for only $9.99. Use discount code DDCDB to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "CouchDB: The Definitive Guide" for only $9.99. Use discount code DDCDB to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Open Government - Only $9.99! Use code DDGVN</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596804367/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39316</id> 
    <published>2010-03-12T16:12:00Z</published> 
    <updated>2010-03-12T16:12:00Z</updated> 
    <summary>"Open Government" for only $9.99. Use discount code DDGVN to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        "Open Government" for only $9.99. Use discount code DDGVN to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day:  Designing Social Interfaces - Only $9.99! Use code DDDST</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596154936/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39314</id> 
    <published>2010-03-11T07:30:00Z</published> 
    <updated>2010-03-11T07:30:00Z</updated> 
    <summary>Designing Social Interfaces for only $9.99. Use discount code DDDST to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        Designing Social Interfaces for only $9.99. Use discount code DDDST to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Linux in a Nutshell, Sixth Edition - Only $9.99! Use code DDNUT</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596154486/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39215</id> 
    <published>2010-03-10T07:30:00Z</published> 
    <updated>2010-03-10T07:30:00Z</updated> 
    <summary>Linux in a Nutshell, Sixth Edition for only $9.99. Use discount code DDNUT to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        Linux in a Nutshell, Sixth Edition for only $9.99. Use discount code DDNUT to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: Flex 3 Cookbook - Only $9.99! Use code DDFLX</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596529857/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39214</id> 
    <published>2010-03-09T07:30:00Z</published> 
    <updated>2010-03-09T07:30:00Z</updated> 
    <summary>Flex 3 Cookbook for only $9.99. Use discount code DDFLX to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        Flex 3 Cookbook for only $9.99. Use discount code DDFLX to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
<entry> 
    <title>Ebook Deal of the Day: JavaScript: The Good Parts - Only $9.99! Use code DDJSG</title> 
    <link rel="alternate" type="text/html" href="http://oreilly.com/catalog/9780596517748/" /> 
    <id>tag:blogs.oreilly.com,2010:/dealoftheday//74.39213</id> 
    <published>2010-03-08T07:30:00Z</published> 
    <updated>2010-03-08T07:30:00Z</updated> 
    <summary>JavaScript: The Good Parts for only $9.99. Use discount code DDJSG to get your savings!...</summary> 
    <author> 
        <name>O'Reilly Media</name> 
   </author> 
    
    <content type="html" xml:lang="en" xml:base="http://blogs.oreilly.com/dealoftheday/"> 
        JavaScript: The Good Parts for only $9.99. Use discount code DDJSG to get your savings!...
    </content> 
    <dc:type>text</dc:type> 
</entry> 
 
</feed> 
EODOC

    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor_name
    assert_equal 'http://www.oreilly.com/', deal.vendor_url
    assert_equal 'Ebook Deal of the Day: Regular Expressions Cookbook - Only $9.99! Use code DDREC', deal.title
    assert_equal 'http://oreilly.com/catalog/9780596520694/', deal.url
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
