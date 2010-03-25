require 'rubygems'
require 'sinatra'
require 'deal.rb'

get '/' do
  @deals = get_deals
  haml :index
end

def get_deals
  deals = Array.new
  deals << Deal.new(:vendor => 'Apress', :title => 'The Definitive Guide to SWT and JFace',
    :code => 'DOTDSJ', :amount => '9.99', :image_url => 'http://apress.com/resource/bookcover/9781590598344?size=medium',
    :url => 'http://apress.com/info/dailydeal')
  deals << Deal.new(:vendor => 'Manning', :title => 'Trying it Out',
    :code => 'DOTDSJ', :amount => '9.99', 
    :url => 'http://apress.com/info/dailydeal')
  deals
end
