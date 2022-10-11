## 3rd party libs
require 'backgrounds'

require 'punks'
require 'readymades'

require 'shibainus'
require 'moonbirds'
require 'coolcats'
require 'nouns'
require 'belles'
require 'cyberpunks'
require 'goblins'
require 'smileys'

require 'webclient'


## our own code
require_relative 'originals/version'    # note: let version always go first



module Originals


class Factory

def initialize
    @generators = []

    Pixelart::Image.subclasses.each do |klass|
      ## check if class has self.generate method
      ##   and  NAMES constant
      has_generate = klass.respond_to?( :generate )
      ## note: defined? returns nil or name as string
      ##   use !! "hack" to turn into true/false boolean
      has_names = !!defined?( klass::NAMES )

      if has_generate && has_names
        # puts
        # puts "==> #{klass.name}"
        # pp klass::NAMES

        @generators << klass
      end
   end

   @generators_by_name = _build_generators_by_name( @generators )
end


def list
   puts
   puts "#{@generators.size} image generator(s) found:"
   @generators.each_with_index do |klass,i|
     puts "  [#{i+1}] #{klass.name} => #{klass::NAMES.join( ' | ')}"
   end
end
alias_method :ls, :list


def can_fabricate?( name )
   key = _normalize_key( name )
   @generators_by_name[ key ] ? true : false
end
alias_method :can_fab?, :can_fabricate?


def fabricate( name, *attributes )
  key = _normalize_key( name )
  klass = @generators_by_name[ key ]
  if klass
     attributes = klass::DEFAULT_ATTRIBUTES  if attributes.size == 0 && defined?( klass::DEFAULT_ATTRIBUTES )
     klass.generate( *attributes )
  else
    nil
  end
end
alias_method :fab, :fabricate



####
#  helpers
def self.normalize_key( str )    ## allow/enable easy "external" reuse - why? why not?
   str.downcase.gsub( /[ ()_-]/, '' )
end
def _normalize_key( str ) self.class.normalize_key( str ); end


def _build_generators_by_name( generators )
  h = {}

  generators.each do |klass|
     names = klass::NAMES
     names.each do |name|
        key = _normalize_key( name )

        if h[ key ]
           puts "!!! ERROR - image generator key >#{key}< for name >#{name}< is NOT unique:"
           pp klass
           puts "duplicate:"
           pp h[key]
           exit 1
        end
        h[ key ] = klass
      end
  end
  ## pp h
  h
end

end # class Factory



def self.factory   ## "shared" single (default) instance
    @factory ||= Factory.new
end

##
#  "wrap" fabricate inside Image - why? why not?
class Image  < Pixelart::Image
  def self.fabricate( name, *attributes )
    Originals.factory.fabricate( name, *attributes )
  end
  class << self
    alias_method :fab, :fabricate
  end
end # class Image
end # module Originals



require 'originals/service'
require 'originals/tool'



####
# convenience aliases / shortcuts / alternate spellings
Original = Originals




puts Originals.banner    # say hello
