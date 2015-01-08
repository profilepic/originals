require 'hoe'
require './lib/pluto/filter/version.rb'

Hoe.spec 'pluto-filter' do

  self.version = PlutoFilter::VERSION

  self.summary = "pluto-filter - feed filter and rules for easy (re)use"
  self.description = summary

  self.urls    = ['https://github.com/feedreader/pluto.filter']

  self.author  = 'Gerald Bauer'
  self.email   = 'feedreader@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'HISTORY.md'

  self.extra_deps = [
    ['textutils'],
  ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
    required_ruby_version: '>= 1.9.2'
  }

end
