## 3rd party libs
require 'backgrounds'

require 'cryptopunks'
require 'shibainus'
require 'moonbirds'
require 'coolcats'
require 'nouns'

require 'webclient'



## our own code
require 'originals/version'    # note: let version always go first


## forward define superclass for image
module Originals
  class Image < Pixelart::Image; end
end


module Originals

def self.factory   ## "shared" single (default) instance
    @factory ||= Factory.new
end



##
#  "wrap" fabricate inside Image - why? why not?
class Image

def self.fabricate( name, *attributes, background: nil )
   ## normalize name of series
   ##   e.g.   Shiba Inu  => shibainu  etc.
   key = Originals.factory._norm_name( name )

   img = if ['punk', 'punks',
             'cryptopunk', 'cryptopunks'].include?( key )
                   Originals.factory.punk( *attributes )
         elsif ['phunk', 'phunks',
                'cryptophunk', 'cryptophunks'].include?( key )
                  Originals.factory.phunk( *attributes )
         elsif ['marilyn', 'marilyns' ].include?( key )
                  Originals.factory.marilyn( *attributes )
         elsif ['philip', 'philips',
                'philipp', 'philipps' ].include?( key )
                  Originals.factory.philip( *attributes )
         elsif ['doge', 'doges',
                'shiba', 'shibas',
                'shibainu', 'shibainus'].include?( key )
                  Originals.factory.shiba( *attributes )
         elsif ['bird', 'birds',
                'moonbird', 'moonbirds',
                'owl', 'owls'].include?( key )
                  Originals.factory.bird( *attributes )
         elsif ['coolcat', 'coolcats'].include?( key )
                  Originals.factory.coolcat( *attributes )
         elsif ['noun', 'nouns'].include?( key )
                  Originals.factory.noun( *attributes )
         else
             return nil   ## return nil
         end

   ## note: keep add background as a separate (last) step for now - why? why not?
   ##       note: support multiple backgrounds via array
   ##                      e.g. ['matrix1', 'rainbow2']
   if background
     img = if background.is_a?( Array )
                 img.background( *background )
           else
                 img.background( background )
           end
   end

   img
end
class << self
  alias_method :fab, :fabricate
end


end # class Image



class Factory     ## add Fabricator/Artist/Artfactory/? alias or such - why? why not?


def punk( *attributes )
    ## note: if no attributes passed in
    ##    default to ['Male 2']
    attributes = ['Male 2']  if attributes.size == 0

    Cryptopunks::Image.generate( *attributes )
end

def phunk( *attributes )
  punk( *attributes ).mirror
end


MARILYN_ATTRIBUTES = ['Female 3', 'Wild Blonde', 'Mole',
                      'Blue Eye Shadow']

def marilyn( *attributes )
  phunk( *MARILYN_ATTRIBUTES, *attributes )
end


PHILIP_ATTRIBUTES = ['Male 3']
def philip( *attributes )
  phunk( *PHILIP_ATTRIBUTES, *attributes )
end



## add method alias doge, shiba_inu etc. - why? why not?
def shiba( *attributes )
    ## note: if no attributes passed in
    ##    default to ['Classic']
    attributes = ['Classic']  if attributes.size == 0

    Shiba::Image.generate( *attributes )
end


## add method alias moonbird, owl etc. - why? why not?
def bird( *attributes )
  attributes = ['Brave Glitch']  if attributes.size == 0

  Moonbird::Image.generate( *attributes )
end


def coolcat( *attributes )
  Coolcat::Image.generate( *attributes )
end


def noun( *attributes )
  attributes = ['Body Grayscale 1',
                'Checker Bigwalk Rainbow',
                'Head Beer',
                'Glasses Square Fullblack']  if attributes.size == 0

  Noun::Image.generate( *attributes )
end




###
#   helpers

def _norm_name( str )
   str.downcase.gsub( /[ ()_-]/, '' )
end

def _parse_id( str )
  if str.gsub( /[ #()№º._-]/, '' ) =~ /
                    ^(no|n|id)?
                    (?<id>[0-9]+)$
                     /ix
    id = Regexp.last_match[:id].to_i(10)   ## note: add base 10 (for 008 or such)
    id
  else
     nil   # retur nil if no match
  end
end


end # class Factory


end # module Originals



require 'originals/service'
require 'originals/tool'



####
# convenience aliases / shortcuts / alternate spellings
Original = Originals




puts Originals.banner    # say hello
