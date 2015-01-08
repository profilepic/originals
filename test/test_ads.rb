###
#  to run use
#     ruby -I ./lib -I ./test test/test_ads.rb
#  or better
#     rake test

require 'helper'


class TestAds < MiniTest::Test

  include FeedFilter::AdsFilter

  def test_feedflare_ads
     text = read_snippet( 'feedflare.html' )
     text = strip_ads( text ).strip

     assert_equal '', text
  end

  def test_feedburner_bugs
     text = read_snippet( 'feedburner.html' )
     text = strip_ads( text ).strip

     assert_equal '', text
  end


end # class TestAds
