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

  self.urls    = { home: 'https://github.com/pixelartexchange/originals' }

  self.author  = 'Gerald Bauer'
  self.email   = 'wwwmake@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'CHANGELOG.md'

  self.extra_deps = [
    ['backgrounds'],
    ['cryptopunks'],
    ['shibainus'],
    ['moonbirds'],
    ['coolcats'],
    ['nouns'],
    ['webclient'],
  ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
    required_ruby_version: '>= 2.3'
  }

end

