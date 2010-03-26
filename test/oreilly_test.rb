require 'techbookdotd'
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
      document.write("March 25, 2010<BR><BR> <a href='http://www.oreilly.com/cahill/'>iPhone in Practice</a><BR>  $15 off the MEAP and Print book edition.  Enter <b>dotd0325</b> in the Promotional Code box when you check ")
EODOC

    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor
    assert_equal 'March 25, 2010', deal.date
    assert_equal 'iPhone in Practice', deal.title
    assert_equal 'http://www.oreilly.com/cahill/', deal.url
    assert_equal '  $15 off the MEAP and Print book edition.  Enter <b>dotd0325</b> in the Promotional Code box when you check ', deal.notes
  end
  
  def test_it_parses_oreilly_nil
    content = nil
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
    assert_nil deal.date
    assert_nil deal.notes
  end

  def test_it_parses_oreilly_empty
    content = ''
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
    assert_nil deal.date
    assert_nil deal.notes
  end

  def test_it_parses_oreilly_bad
    content = 'Does not contain the data'
    deal = get_oreilly(content)
    assert_equal "O'Reilly", deal.vendor
    assert_equal "No results -- check O'Reilly site", deal.title
    assert_equal 'http://www.oreilly.com/', deal.url
    assert_nil deal.date
    assert_nil deal.notes
  end
end
