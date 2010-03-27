require File.dirname(__FILE__) + "/../myapp.rb"
require 'test/unit'
require 'rack/test'

set :environment, :test

class ManningTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_parses_manning
    content = <<EODOC
      document.write("March 25, 2010<BR><BR> <a href='http://www.manning.com/cahill/'>iPhone in Practice</a><BR>  $15 off the MEAP and Print book edition.  Enter <b>dotd0325</b> in the Promotional Code box when you check ")
EODOC

    deal = get_manning(content)
    assert_equal 'Manning', deal.vendor
    assert_equal 'http://www.manning.com/', deal.vendor_url
    assert_equal "<a href='http://www.manning.com/cahill/'>iPhone in Practice</a><BR>  $15 off the MEAP and Print book edition.  Enter <b>dotd0325</b> in the Promotional Code box", deal.title
    assert_nil deal.url
  end
  
  def test_it_parses_manning_nil
    content = nil
    deal = get_manning(content)
    assert_equal 'Manning', deal.vendor
    assert_equal 'http://www.manning.com/', deal.vendor_url
    assert_equal 'No results -- check Manning site', deal.title
    assert_equal 'http://www.manning.com/', deal.url
  end

  def test_it_parses_manning_empty
    content = ''
    deal = get_manning(content)
    assert_equal 'Manning', deal.vendor
    assert_equal 'http://www.manning.com/', deal.vendor_url
    assert_equal 'No results -- check Manning site', deal.title
    assert_equal 'http://www.manning.com/', deal.url
  end

  def test_it_parses_manning_bad
    content = 'Does not contain the data'
    deal = get_manning(content)
    assert_equal 'Manning', deal.vendor
    assert_equal 'http://www.manning.com/', deal.vendor_url
    assert_equal 'No results -- check Manning site', deal.title
    assert_equal 'http://www.manning.com/', deal.url
  end
end
