###
#  to run use
#     ruby -I ./lib sandbox/test_get.rb


require 'originals'

delay_in_secs = 2

=begin
ids = [0,1,2]
ids.each do |id|
  sleep( delay_in_secs )
  base = Artbase::Image.get( 'punks', id )
  base.save( "./tmp2/punk#{id}.png" )
  base.zoom(4).save( "./tmp2/punk#{id}@4x.png" )
end


ids = [179,180,190]
ids.each do |id|
  sleep( delay_in_secs )
  base = Artbase::Image.get( 'morepunks', id )
  base.save( "./tmp2/morepunk#{id}.png" )
  base.zoom(4).save( "./tmp2/morepunk#{id}@4x.png" )
end


ids = [0,2,9]
ids.each do |id|
  sleep( delay_in_secs )
  base = Artbase::Image.get( 'wiener', id )
  base.save( "./tmp2/wiener#{id}.png" )
  base.zoom(4).save( "./tmp2/wiener#{id}@4x.png" )
end
=end

ids = [0, 571, 7411]
ids.each do |id|
  sleep( delay_in_secs )
  base = Artbase::Image.get( 'dooggies', id ).transparent
  base.save( "./tmp2/dooggie#{id}.png" )
  base.zoom(4).save( "./tmp2/dooggie#{id}@4x.png" )
end


__END__

ids = [1, 4, 5]
ids.each do |id|
   sleep( delay_in_secs )
   base = Artbase::Image.get( 'punkrocks', id )
   base.save( "./tmp2/punkrock#{id}.png" )
   base.zoom(4).save( "./tmp2/punkrock#{id}@4x.png" )

   base = Originals.factory._background( base, 'ukraine' )
   base.save( "./tmp2/punkrock#{id}_ua.png" )
   base.zoom(8).save( "./tmp2/punkrock#{id}_ua@8x.png" )
end


sleep( delay_in_secs )
base = Artbase::Image.get( 'err', 0 )    ## try non-existant collection name


puts "bye"