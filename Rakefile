require 'hoe'
require './lib/originals/version.rb'

###
# hack/ quick fix for broken intuit_values - overwrite with dummy
class Hoe
  def intuit_values( input ); end
end



Hoe.spec 'originals' do

  self.version = Originals::VERSION

  self.summary = "originals - do-it-yourself (DIY) -  yes, you can! - Factory of Modern Originals (FoMO) - fab(criate) your own unique (pixel) artworks w/ text attributes (via built-in spritesheets) incl. 2x/4x/8x zoom for bigger sizes and more"
  self.description = summary

  self.urls    = { home: 'https://github.com/profilepic/originals' }

  self.author  = 'Gerald Bauer'
  self.email   = 'wwwmake@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'CHANGELOG.md'

  self.extra_deps = [
    ['backgrounds'],
    ['punks',     '>= 0.5.2'],
    ['readymades', '>= 1.0.1'],
    ['shibainus', '>= 0.1.1'],
    ['moonbirds', '>= 1.1.1'],
    ['coolcats',  '>= 0.1.1'],
    ['nouns',     '>= 0.1.1'],
    ['belles',     '>= 1.0.0'],
    ['cyberpunks', '>= 1.0.0'],
    ['goblins', '>= 1.0.0'],
    ['smileys', '>= 0.1.0'],
    ['webclient'],
  ]


  self.licenses = ['Public Domain']

  self.spec_extras = {
    required_ruby_version: '>= 2.3'
  }

end

