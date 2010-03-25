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
  deals << get_apress
  deals << get_manning
  deals << get_oreilly
end

def get_apress
  Deal.new(:vendor => 'Apress', :title => 'The Definitive Guide to SWT and JFace',
    :amount => '9.99', :image_url => 'http://apress.com/resource/bookcover/9781590598344?size=medium',
    :url => 'http://apress.com/info/dailydeal')
end

def get_manning
  Deal.new(:vendor => 'Manning', :title => 'The Definitive Guide to SWT and JFace',
    :amount => '9.99', :image_url => 'http://apress.com/resource/bookcover/9781590598344?size=medium',
    :url => 'http://apress.com/info/dailydeal')
end

def get_oreilly
  rss = SimpleRSS.parse open('http://feeds.feedburner.com/oreilly/ebookdealoftheday')
  entry = rss.entries.first

  # The link contains a number; we build the image link from that number
  parts = entry.link.split(/\//)
  cat_num = parts[-1]

  amount = /.*\$(.*?)!.*/.match(entry.title)[1]

  Deal.new(:vendor => "O'Reilly", :title => entry.title, :url => entry.link, :amount => amount,
    :image_url => "http://covers.oreilly.com/images/#{cat_num}/cat.gif")
end
