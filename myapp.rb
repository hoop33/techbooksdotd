require 'rubygems'
require 'sinatra'
require 'haml'
require 'simple-rss'
require 'open-uri'
require File.dirname(__FILE__) + "/./deal.rb"

@@manning_deal = Deal.new(:vendor => 'Manning', :title => 'No results -- check Manning site',
  :url => 'http://www.manning.com/')
@@apress_deal = Deal.new(:vendor => 'Apress', :title => 'No results -- check Apress site',
  :url => 'http://www.apress.com/')
@@oreilly_deal = Deal.new(:vendor => "O'Reilly", :title => "No results -- check O'Reilly site",
  :url => 'http://www.oreilly.com/')

get '/' do
  @deals = get_deals
  haml :index
end

def get_deals
  deals = Array.new
  deals << get_apress(open('http://apress.com/info/dailydeal').read)
  deals << get_manning(open('http://incsrc.manningpublications.com/dotd.js').read)
  deals << get_oreilly(open('http://feeds.feedburner.com/oreilly/ebookdealoftheday'))
end

def get_apress(content)
  matches = /.*\<div class='bookdetails'\>.*?\<a href='(.*?)'\>(.*?)\<\/a.*\<div class='cover'\>.*?\<img.*?src="(.*?)".*/m.match(content)
  if matches.nil?
    return @@apress_deal
  end

  url_part, title, image_url_part = matches.captures()
  Deal.new(:vendor => 'Apress', :title => title, :url => "http://apress.com#{url_part}", 
    :image_url => "http://apress.com#{image_url_part}")
end

def get_manning(content)
  matches = /.*\<BR.*?\<a href='(.*?)'\>(.*?)\<\/a\>.*?\<BR>(.*?)"\).*/i.match(content)
  if matches.nil?
    return @@manning_deal
  end
  url, title, notes = matches.captures()
  Deal.new(:vendor => 'Manning', :title => title, :url => url, :notes => notes)
end

def get_oreilly(content)
  begin
    rss = SimpleRSS.parse content
    entry = rss.entries.first

    # The link contains a number; we build the image link from that number
    parts = entry.link.split(/\//)
    cat_num = parts[-1]

    return Deal.new(:vendor => "O'Reilly", :title => entry.title, :url => entry.link, 
      :image_url => "http://covers.oreilly.com/images/#{cat_num}/cat.gif")
  rescue SimpleRSSError
    return @@oreilly_deal
  end
end
