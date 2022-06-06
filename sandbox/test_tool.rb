###
#  to run use
#     ruby -I ./lib sandbox/test_tool.rb


require 'originals'


Originals::Tool.main( ['punk', 'male2'] )


Originals::Tool.main( ['punk', '#3100'] )


Originals::Tool.main( ['morepunk', '99', '--zoom=8'] )



puts "bye"