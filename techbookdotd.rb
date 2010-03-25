require 'rubygems'
require 'sinatra'
require 'haml'
require 'simple-rss'
require 'open-uri'
require 'deal.rb'

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

def get_apress1
  Deal.new(:vendor => 'Apress', :title => 'The Definitive Guide to SWT and JFace',
    :amount => '9.99', :image_url => 'http://apress.com/resource/bookcover/9781590598344?size=medium',
    :url => 'http://apress.com/info/dailydeal')
end

def get_apress(content)
  url_part = /.*\<div class='bookdetails'\>.*?\<a href='(.*?)'\>.*/m.match(content)[1]
  title = /.*\<div class='bookdetails'\>.*?\<a href='.*?'\>(.*?)\<a.*/m.match(content)[1]

  Deal.new(:vendor => 'Apress', :title => title, :url => "http://apress.com#{url_part}", 
    :image_url => "http://apress.com/resource/bookcover/#{url_part.split(/\//)[-1]}?size=medium")
end

def get_manning(content)
  url = /.*\<a href='(.*?)'\>.*/.match(content)[1]
  title = /.*'\>(.*?)\<.*/.match(content)[1]

  Deal.new(:vendor => 'Manning', :title => title, :url => url)
end

def get_oreilly(content)
  rss = SimpleRSS.parse content
  entry = rss.entries.first

  # The link contains a number; we build the image link from that number
  parts = entry.link.split(/\//)
  cat_num = parts[-1]

  amount = /.*\$(.*?)!.*/.match(entry.title)[1]

  Deal.new(:vendor => "O'Reilly", :title => entry.title, :url => entry.link, :amount => amount,
    :image_url => "http://covers.oreilly.com/images/#{cat_num}/cat.gif")
end
