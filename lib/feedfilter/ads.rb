# encoding: utf-8


module FeedFilter
  module AdsFilter

FEEDFLARE_ADS = %r{
     <div[^>]*?
        class=("|')feedflare\1
        [^>]*?>
          .*?
     <\/div>
       }mix

FEEDBURNER_BUGS = %r{
      <img[^>]*?
         src=("|')(:?http:)?//feeds\.feedburner\.com/~r/[^>]+?\1
         .*?>
       }mix


def strip_ads( text )

  ## strip feedflare ads
  text = text.gsub( FEEDFLARE_ADS ) do |m|
    puts "strip feedflare ads:"
    pp m
    ''
  end

  ## strip feedburner img bug
  text = text.gsub( FEEDBURNER_BUGS ) do |m|
    puts "strip feedburner bugs:"
    pp m
    ''
  end

  text
end


  end # module AdsFilter
end # module FeedFitler

