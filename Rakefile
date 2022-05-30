require 'hoe'
require './lib/originals/version.rb'

###
# hack/ quick fix for broken intuit_values - overwrite with dummy
class Hoe
  def intuit_values( input ); end
end



Hoe.spec 'originals' do

  self.version = Originals::VERSION

  self.summary = "originals - Do-It-Yourself (DIY) Yes, You Can! - Factory of Modern Originals (FOMO) - Fab(criate) Your Own Unique (Pixel) Artworks w/ Text Attributes (Via Built-In Spritesheets) Incl. 2X/4X/8X Zoom for Bigger Sizes And More"
  self.description = summary

  self.urls    = { home: 'https://github.com/pixelartexchange/originals' }

  self.author  = 'Gerald Bauer'
  self.email   = 'wwwmake@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'CHANGELOG.md'

  self.extra_deps = [
    ['cryptopunks'],
    ['shibainus'],
  ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
    required_ruby_version: '>= 2.3'
  }

end
