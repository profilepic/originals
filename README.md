# feedfilter gem - feed filter and rules for easy (re)use 

* home  :: [github.com/feedreader/feed.filter](https://github.com/feedreader/feed.filter)
* bugs  :: [github.com/feedreader/feed.filter/issues](https://github.com/feedreader/feed.filter/issues)
* gem   :: [rubygems.org/gems/feedfilter](https://rubygems.org/gems/feedfilter)
* rdoc  :: [rubydoc.info/gems/feedfilter](http://rubydoc.info/gems/feedfilter)
* forum :: [groups.google.com/group/feedreader](http://groups.google.com/group/feedreader)



## Usage


### `strip_ads`  in `AdsFilter` module

~~~
require 'feedfilter'

include FeedFilter::AdsFilter      # lets us use strip_ads


before_snippet =<<EOS
<div class="feedflare">
 <a href="http://feeds.feedburner.com/~ff/Rubyflow?a=1wUDnBztAJY:fzqBvTOGB9M:3H-1DwQop_U">
   <img src="http://feeds.feedburner.com/~ff/Rubyflow?i=1wUDnBztAJY:fzqBvTOGB9M:3H-1DwQop_U" border="0"></img>
 </a>
</div>
EOS


snippet = strip_ads( before_snippet )

puts snippet
~~~


### Use Text Patterns (Regex) for Filters

Ads Example:

~~~
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

...
~~~

or as one-liners (if you prefer)

~~~
FEEDFLARE_ADS   = %r{<div[^>]*?class=("|')feedflare\1[^>]*?>.*?<\/div>}mi
FEEDBURNER_BUGS = %r{<img[^>]*?src=("|')(:?http:)?//feeds\.feedburner\.com/~r/[^>]+?\1.*?>}mi
...
~~~


## Alternatives

Node.js

- [node-resanitize](https://github.com/danmactough/node-resanitize)


## License

The `feedfilter` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [Planet Pluto and Friends Forum/Mailing List](http://groups.google.com/group/feedreader).
Thanks!

