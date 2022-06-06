
## get image via artbase (HTTP) web service


## forward define superclass for image
module Artbase
  class Image < Pixelart::Image; end
end



module Artbase
  ################
  #  convenience helpers / shortcuts
  def self.service   ## "shared" single (default) instance
    @service ||= Service.new
  end

  class Image
    def self.get( name, id )  Artbase.service.get( name, id ); end
  end  # class Image


  ## todo/fix: move name variants into artbase server itelf - why? why not?
  COLLECTIONS = {
      'punk'      => 'punks',
      'morepunk'  => 'morepunks',
    }

  ###################
  #  main artbase service handler / machinery
  class Service
    DEFAULT_BASE_URL = 'https://pixelartexchange.herokuapp.com'


    def initialize( base_url=DEFAULT_BASE_URL )
      @base_url = base_url
    end

    def get( collection, id )

      url = "#{@base_url}/#{collection}/#{id}.png"
      res = Webclient.get( url )

      puts "#{res.status.code} #{res.status.message}"
      puts "    content_type: #{res.content_type}"
      puts "    content_length: #{res.content_length} bytes (#{res.content_length.class.name})"

      if res.status.ok?
        ## todo/fix: move to Pixelart::Image itself
        ##     use from_blob or such - why? why not
        img_inner = ChunkyPNG::Image.from_blob( res.blob )
        img = Artbase::Image.new( img_inner.width, img_inner.height, img_inner )
        img
      else
        puts "!! HTTP ERROR - image data request failed; sorry"
        return nil
      end
    end
  end # class Service

end    # module Artbase

