require 'rubygems'
require 'builder'
require 'sinatra'
require 'haml'
require 'simple-rss'
require 'open-uri'
require 'json'
require File.dirname(__FILE__) + "/./deal.rb"

@@manning_deal = Deal.new(:vendor_name => 'Manning',
                          :vendor_id => 'manning',
                          :vendor_url => 'http://www.manning.com/',
                          :title => 'No results -- check Manning site',
                          :url => 'http://www.manning.com/')
@@apress_deal = Deal.new(:vendor_name => 'Apress',
                         :vendor_id => 'apress',
                         :vendor_url => 'http://www.apress.com/',
                         :title => 'No results -- check Apress site',
                         :url => 'http://www.apress.com/')
@@oreilly_deal = Deal.new(:vendor_name => "O'Reilly",
                          :vendor_id => 'oreilly',
                          :vendor_url => 'http://www.oreilly.com/',
                          :title => "No results -- check O'Reilly site",
                          :url => 'http://www.oreilly.com/')
@@informit_deal = Deal.new(:vendor_name => 'InformIT',
                           :vendor_id => 'informit',
                           :vendor_url => 'http://www.informit.com/deals/',
                           :title => 'No results -- check InformIT site',
                           :url => 'http://www.informit.com/deals/')
@@peachpit_deal = Deal.new(:vendor_name => "Peachpit",
                           :vendor_id => 'peachpit',
                           :vendor_url => 'http://www.peachpit.com/',
                           :title => 'No results -- check Peachpit site',
                           :url => 'http://www.peachpit.com/')

get '/' do
  @deals = get_deals
  haml :index
end

get '/deals.json' do
  content_type :json
  get_deals.to_json
end

get '/rss.xml' do
  builder do |xml|
    xml.instruct! :xml, :version => '1.0'
    xml.rss :version => "2.0" do
      xml.channel do
        xml.title "Tech Books Deals of the Day"
        xml.description "Publishes the Deals of the Day from leading technology book publishers"
        xml.link "http://techbooksdotd.heroku.com/"

        @deals = get_deals
        @deals.each do |deal|
          xml.item do
            xml.title "#{deal.vendor_name} -- #{deal.title}"
            xml.link deal.url
            xml.description deal.title
            xml.pubDate Time.now.rfc822()
          end
        end
      end
    end
  end
end

def get_deals
  deals = Array.new
  deals << get_apress(open('http://www.apress.com/').read)
  deals << get_informit(open('http://www.informit.com').read)
  deals << get_manning(open('http://incsrc.manningpublications.com/dotd.js').read)
  deals << get_oreilly(open('http://feeds.feedburner.com/oreilly/ebookdealoftheday'))
  deals << get_peachpit(open('http://www.peachpit.com').read)
end

def get_apress(content)
  content = content.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
  matches = /.*\<h2.*?\>Deal of the Day\<\/h2\>.*?\<a href="(.*?apress\.com\/dailydeals.*?)".*?\<img .*?src="(.*?)".*?alt="(.*?)".*/m.match(content)
  if matches.nil?
    return @@apress_deal
  end

  url, image_url, title = matches.captures()
  Deal.new(:vendor_name => 'Apress',
           :vendor_id => 'apress',
           :vendor_url => 'http://www.apress.com/',
           :title => title,
           :url => url,
           :image_url => image_url)
end

def get_informit(content)
  begin
    matches = /<a href="\/deals".*">[\s]*<img src="(.*)"[\s]+alt="(.*)"[\s]+.*class="(.*)"/.match(content)
    if matches.nil?
      return @@informit_deal
    end
    image_url = 'http://www.informit.com' + matches[1]
    title = matches[2]
    Deal.new(:vendor_name => "InformIT",
             :vendor_id => 'informit',
             :vendor_url => 'http://www.informit.com/',
             :title => title,
             :url => 'http://www.informit.com/deals',
             :image_url => image_url)
  end
end

def get_manning(content)
  matches = /.*?(\<a href=.*?Promotional Code box).*/m.match(content)
  if matches.nil?
    return @@manning_deal
  end
  title = matches[1]
  Deal.new(:vendor_name => 'Manning',
           :vendor_id => 'manning',
           :vendor_url => 'http://www.manning.com/',
           :title => title,
           :url => '',
           :image_url => 'http://techbooksdotd.heroku.com/images/manning.png')
end

def get_oreilly(content)
  begin
    rss = SimpleRSS.parse content
    entry = rss.entries.first

    matches = /.*?img src=[\'|\"](.*?)[\'|\"].*/m.match(entry.content)
    return Deal.new(:vendor_name => "O'Reilly",
                    :vendor_id => 'oreilly',
                    :vendor_url => 'http://www.oreilly.com/',
                    :title => entry.title,
                    :url => entry.link,
                    :image_url => matches[1])
  rescue SimpleRSSError
    return @@oreilly_deal
  end
end

def get_peachpit(content)
  begin
    matches = /<a href="\/deals".*">[\s]*<img src="(.*)"[\s]+alt="(.*)"[\s]+.*class="(.*)"/.match(content)
    if matches.nil?
      return @@peachpit_deal
    end
    image_url = 'http://www.peachpit.com' + matches[1]
    title = matches[2]
    Deal.new(:vendor_name => "Peachpit",
             :vendor_id => 'peachpit',
             :vendor_url => 'http://www.peachpit.com/',
             :title => title,
             :url => 'http://www.peachpit.com/deals',
             :image_url => image_url)
  end
end
