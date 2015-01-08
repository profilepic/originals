## $:.unshift(File.dirname(__FILE__))


## minitest setup

require 'minitest/autorun'


## our own code

require 'feedfilter'


LogUtils::Logger.root.level = :debug


def read_snippet( name )
  File.read( "#{FeedFilter.root}/test/snippets/#{name}")
end


