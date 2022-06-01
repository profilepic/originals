## 3rd party libs
require 'cryptopunks'
require 'shibainus'
require 'moonbirds'
require 'coolcats'



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
def self.fabricate( name, *attributes, background: nil )  ## add fac alias - why? why not?
   ## normalize name of series
   ##   e.g.   Shiba Inu  => shibainu  etc.
   key = name.downcase.gsub( '[ ()_-]', '' )

   img =  if ['punk', 'punks',
              'cryptopunk', 'cryptopunks'].include?( key )
              Originals.factory.punk( *attributes, background: background )
          elsif ['phunk', 'phunks',
            'cryptophunk', 'cryptophunks'].include?( key )
              Originals.factory.phunk( *attributes, background: background )
          elsif ['marilyn', 'marilyns' ].include?( key )
              Originals.factory.marilyn( *attributes, background: background )
          elsif ['philip', 'philips',
                 'philipp', 'philipps' ].include?( key )
              Originals.factory.philip( *attributes, background: background )
          elsif ['doge', 'doges',
                 'shiba', 'shibas',
                 'shibainu', 'shibainus'].include?( key )
              Originals.factory.shiba( *attributes, background: background )
          elsif ['bird', 'birds',
                 'moonbird', 'moonbirds',
                 'owl', 'owls'].include?( key )
              Originals.factory.bird( *attributes, background: background )
          elsif ['coolcat', 'coolcats'].include?( key )
              Originals.factory.coolcat( *attributes, background: background )
          else
            puts "!! ERROR; don't know how to fabricate >#{name}<; sorry"
            exit 1
          end
   img
end
class << self
   alias_method :fab, :fabricate
end
end # class Image





class Factory     ## add Fabricator/Artist/Artfactory/? alias or such - why? why not?

def punk( *attributes, mirror: false, background: nil )
    ## note: if no attributes passed in
    ##    default to ['Male 2']
    attributes = ['Male 2']  if attributes.size == 0

   _generate_punk( *attributes,
                   mirror:     mirror,
                   background: background )
end

def phunk( *attributes, background: nil )
   punk( *attributes,
          mirror: true,
          background: background )
end


MARILYN_ATTRIBUTES = ['Female 3', 'Wild Blonde', 'Mole',
                      'Blue Eye Shadow']

def marilyn( *attributes, background: nil )
   _generate_punk( *MARILYN_ATTRIBUTES,
                   *attributes,
                   mirror: true,
                   background: background )
end


PHILIP_ATTRIBUTES = ['Male 3']
def philip( *attributes, background: nil )
  _generate_punk( *PHILIP_ATTRIBUTES,
                  *attributes,
                  mirror: true,
                  background: background )
end



## add method alias doge, shiba_inu etc. - why? why not?
def shiba( *attributes, background: nil )
    ## note: if no attributes passed in
    ##    default to ['Classic']
    attributes = ['Classic']  if attributes.size == 0

    doge = Shiba::Image.generate( *attributes )
    doge = _background( doge, background )  if background
    doge
end


## add method alias moonbird, owl etc. - why? why not?
def bird( *attributes, background: nil )
  attributes = ['Brave Glitch']  if attributes.size == 0

  bird = Moonbird::Image.generate( *attributes )
  bird = _background( bird, background )  if background
  bird
end


def coolcat( *attributes, background: nil )
  cat = Coolcat::Image.generate( *attributes )
  cat = _background( cat, background )  if background
  cat
end



###
#   helpers

def _generate_punk( *attributes,
                     mirror:     false,
                     background: nil )
   punk = Cryptopunks::Image.generate( *attributes )

   punk = punk.mirror         if mirror
   ## note: add background as LAST step  (after mirror operation)
   ##                that is, if mirror=true background will NOT get mirrored
   punk = _background( punk, background )  if background
   punk
end


def _background( base, background )
    width, height = base.width, base.height

    img = if background.is_a?( String ) && ['ua', 'ukraine'].include?( background.downcase )
              Image.new( width, height ).ukraine
          elsif background.is_a?( String ) && ['rainbow', 'pride'].include?( background.downcase )
              Image.new( width, height ).pride
          else
            Image.new( width, width, background )
          end

    img2 = Image.new( width, width )
    img2.compose!( img )
    img2.compose!( base )
    img2
end

end # class Factory


end # module Originals




require 'originals/tool'



####
# convenience aliases / shortcuts / alternate spellings
Original = Originals




puts Originals.banner    # say hello
