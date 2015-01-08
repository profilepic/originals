###
#  to run use
#     ruby -I ./lib -I ./test test/test_block_reader.rb
#  or better
#     rake test

require 'helper'


class TestBlockReader < MiniTest::Test

  def test_feedburner
     blocks = BlockReader.from_file( "#{FeedFilter.root}/config/feedburner.txt" ).read

     ## note: regex - use %q - do NOT escape \. or \1 etc.
     pattern = %q{<img[^>]*?src=("|')(:?http:)?//feeds\.feedburner\.com/~r/[^>]+?\1.*?>}

     test1   = %q{<img src="//feeds.feedburner.com/~r/Rubyflow/~4/1wUDnBztAJY" height="1" width="1" alt=""/>}

     assert_equal 2, blocks.size
     assert_equal pattern, blocks[0].gsub( /[\n ]/, '' )  ## note: need to remove newlines and spaces
     assert_equal test1,   blocks[1]
  end

end # class TestBlockReader
