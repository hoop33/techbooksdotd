require 'rubygems'
require 'sinatra'
require 'haml'
require 'simple-rss'
require 'open-uri'
require 'deal.rb'

@@manning_deal = Deal.new(:vendor => 'Manning', :title => 'No results -- check Manning site',
  :url => 'http://www.manning.com/')
@@apress_deal = Deal.new(:vendor => 'Apress', :title => 'No results -- check Apress site',
  :url => 'http://www.apress.com/')

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
  #url_part = /.*\<div class='bookdetails'\>.*?\<a href='(.*?)'\>.*/m.match(content)[1]
  ##title = /.*\<div class='bookdetails'\>.*?\<a href='.*?'\>(.*?)\<a.*/m.match(content)[1]
  #image_url_part = /.*\<div class='cover'\>.*?\<img.*?src="(.*?)".*/m.match(content)[1]

  url_part, title, image_url_part = matches.captures()
  Deal.new(:vendor => 'Apress', :title => title, :url => "http://apress.com#{url_part}", 
    :image_url => "http://apress.com#{image_url_part}")
end

def get_manning(content)
  matches = /.*write\("(.*?)\<BR.*?\<a href='(.*?)'\>(.*?)\<\/a\>\<BR>(.*?)"\).*/.match(content)
  if matches.nil?
    return @@manning_deal
  end
  date, url, title, notes = matches.captures()
  Deal.new(:vendor => 'Manning', :date => date, :title => title, :url => url, :notes => notes)
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
