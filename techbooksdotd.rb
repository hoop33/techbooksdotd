require 'rubygems'
require 'builder'
require 'sinatra'
require 'haml'
require 'simple-rss'
require 'open-uri'
require 'json'
require File.dirname(__FILE__) + "/./deal.rb"

$manning_deal = Deal.new(:vendor_name => 'Manning',
                         :vendor_id => 'manning',
                         :vendor_url => 'http://www.manning.com/',
                         :title => 'No results -- check Manning site',
                         :url => 'http://www.manning.com/',
                         :image_url => 'http://techbooksdotd.herokuapp.com/images/manning.png')
$apress_deal = Deal.new(:vendor_name => 'Apress',
                        :vendor_id => 'apress',
                        :vendor_url => 'http://www.apress.com/',
                        :title => 'No results -- check Apress site',
                        :url => 'http://www.apress.com/')
$oreilly_deal = Deal.new(:vendor_name => "O'Reilly",
                         :vendor_id => 'oreilly',
                         :vendor_url => 'http://www.oreilly.com/',
                         :title => "No results -- check O'Reilly site",
                         :url => 'http://www.oreilly.com/')
$informit_deal = Deal.new(:vendor_name => 'InformIT',
                          :vendor_id => 'informit',
                          :vendor_url => 'http://www.informit.com/deals/',
                          :title => 'No results -- check InformIT site',
                          :url => 'http://www.informit.com/deals/')
$peachpit_deal = Deal.new(:vendor_name => "Peachpit",
                          :vendor_id => 'peachpit',
                          :vendor_url => 'http://www.peachpit.com/',
                          :title => 'No results -- check Peachpit site',
                          :url => 'http://www.peachpit.com/')
$springer_deal = Deal.new(:vendor_name => 'Springer',
                        :vendor_id => 'apress',
                        :vendor_url => 'http://www.apress.com/',
                        :title => 'No results for Springer DOTD -- check Apress site',
                        :url => 'http://www.apress.com/')
$oreilly_ms_deal = Deal.new(:vendor_name => "O'Reilly",
                         :vendor_id => 'oreilly',
                         :vendor_url => 'http://www.oreilly.com/',
                         :title => "No results for Microsoft DOTD -- check O'Reilly site",
                         :url => 'http://www.oreilly.com/')

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
        xml.link "http://techbooksdotd.herokuapp.com/"

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
  deals << get_oreilly_ms(open('http://www.oreilly.com').read)
  deals << get_peachpit(open('http://www.peachpit.com').read)
  deals << get_springer(open('http://www.apress.com/').read)
end

def get_apress(content)
  # If the content is blank, return the standard Apress deal
  if content.nil?
    return $apress_deal
  end

  content = content.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
  content = content.force_encoding('UTF-8').encode('UTF-16', :invalid => :replace, :replace => '').encode('UTF-8')
  matches = /.*\<h2.*?\>Deal of the Day\<\/h2\>.*?\<a href="(.*?apress\.com\/dailydeals.*?)".*?\<img .*?src="(.*?)".*?alt="(.*?)".*/m.match(content)
  if matches.nil?
    return $apress_deal
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
      return $informit_deal
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
  # Get the deal itself to show in the Manning Title box
  matches = /.*?(\<a href=.*?Promotional Code box).*/m.match(content)
  if matches.nil?
    return $manning_deal
  end
  title = matches[1]

  # Set the fallback book image cover
  image_url = 'http://techbooksdotd.herokuapp.com/images/manning.png'
  
  # Try to get a book cover image
  matches = /\<img src[\s]*=[\s]*'(.*)'/m.match(title)
  if not matches.nil?
    image_url = matches[1]
  end

  Deal.new(:vendor_name => 'Manning',
          :vendor_id => 'manning',
          :vendor_url => 'http://www.manning.com/',
          :title => title,
          :url => '',
          :image_url => image_url)
end

def get_oreilly(content)
  begin
    rss = SimpleRSS.parse content
    entry = rss.entries.first

    matches = /.*?img src=[\'|\"](.*?)[\'|\"].*/m.match(entry.content)
    if matches.nil?
      return $oreilly_deal
    end
    return Deal.new(:vendor_name => "O'Reilly",
                    :vendor_id => 'oreilly',
                    :vendor_url => 'http://www.oreilly.com/',
                    :title => entry.title,
                    :url => entry.link,
                    :image_url => matches[1])
  rescue SimpleRSSError
    return $oreilly_deal
  end
end

def get_peachpit(content)
  begin
    matches = /<a href="\/deals".*">[\s]*<img src="(.*)"[\s]+alt="(.*)"[\s]+.*class="(.*)"/.match(content)
    if matches.nil?
      return $peachpit_deal
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

def get_springer(content)
  # If the content is blank, return the standard Springer deal
  if content.nil?
    return $springer_deal
  end

  content = content.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
  content = content.force_encoding('UTF-8').encode('UTF-16', :invalid => :replace, :replace => '').encode('UTF-8')
  matches = /.*\<h2.*?\>Springer Daily Deal\<\/h2\>.*?\<a href="(.*?apress\.com\/dailydeals.*?)".*?\<img .*?src="(.*?)".*?alt="(.*?)".*/m.match(content)
  if matches.nil?
    return $springer_deal
  end

  url, image_url, title = matches.captures()
  Deal.new(:vendor_name => 'Springer',
           :vendor_id => 'apress',
           :vendor_url => 'http://www.apress.com/',
           :title => title,
           :url => url,
           :image_url => image_url)
end

def get_oreilly_ms(content)
  # If the content is blank, return the standard O'Reilly deal
  if content.nil?
    return $oreilly_ms_deal
  end

  content = content.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
  content = content.force_encoding('UTF-8').encode('UTF-16', :invalid => :replace, :replace => '').encode('UTF-8')
  matches = /\<a.*href="(.*MSDEAL)".*\>\<img[\s]+alt=".*"[\s]+src="(.*)"[\s]+.*class=".*"\>\<\/a\>.*<a.*href=".*MSDEAL".*>(.*)<\/a>/.match(content)
  if matches.nil?
    return $oreilly_ms_deal
  end
  url = matches[1]
  image_url = matches[2]
  title = matches[3]
  Deal.new(:vendor_name => "O'Reilly",
           :vendor_id => 'oreilly',
           :vendor_url => 'http://www.oreilly.com/',
           :title => title,
           :url => url,
           :image_url => image_url)
end
