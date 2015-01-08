# encoding: utf-8


# core and stdlibs


# 3rd party gems/libs

require 'logutils'

# our own code

require 'feedfilter/version'  # let it always go first


# say hello
puts FeedFilter.banner     if $DEBUG || (defined?($RUBYLIBS_DEBUG) && $RUBYLIBS_DEBUG)
