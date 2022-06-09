module Originals
class Tool




  def self.main( args=ARGV )
    puts "==> welcome to the fab(ricate) tool with args:"
    pp args

    options = { }
    parser = OptionParser.new do |opts|

      opts.on("--zoom NUM", "-z", Integer,
              "Zoom factor x2, x4, x8, etc. (default: 1)") do |num|
          options[ :zoom]  = num
      end

      opts.on("--background STRING", "--bg STRING", "-b", String,
              "Background (default: transparent|0x0)") do |str|
          options[ :background] = str
      end

      opts.on("--name STRING", "-n", String,
              "Base name (default: punk|phunk|marilyn|etc.)") do |str|
          options[ :name] = str
      end

      opts.on("--id NUM", "-i", Integer,
              "Unique identifier (default: none)") do |str|
          options[ :id] = str
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    parser.parse!( args )
    puts "options:"
    pp options

    puts "args:"
    pp args

    if args.size < 1
      puts "!! ERROR - no art series name found - use <name> <attribute>..."
      puts ""
      exit
    end

    name       = args[0]   ## todo/check - use collection_name/slug or such?
    attributes = args[1..-1]


    ## normalize name of series
    ##   e.g.   Shiba Inu  => shibainu  etc.
    key = Originals.factory._norm_name( name )

    ## check for readymade via series id
    ##    allow some "literal" variants e.g.
    ##      punk no.1 or no.001
    ##      punk #1   or #001
    ##  etc.
    ##    and some more in the future - why? why not?

    id = nil

    img =   if attributes.size == 1 && id=Originals.factory._parse_id( attributes[0] )
                ## check for known collection names
                ## (mostly singular to plural)  - keep? why? why not?

                ## add support for "virtual" phunks  - move "upstream" to artbase - why? why not?
                if ['phunk', 'phunks'].include?( key )
                  Artbase::Image.get( 'punks', id ).mirror
                elsif ['morephunk', 'morephunks'].include?( key )
                  Artbase::Image.get( 'morepunks', id ).mirror
                elsif ['bwphunk', 'bwphunks'].include?( key )
                  Artbase::Image.get( 'bwpunks', id ).mirror
                elsif ['readymadephunk', 'readymadephunks'].include?( key )
                  Artbase::Image.get( 'readymadepunks', id ).mirror
                elsif ['intlphunk', 'intlphunks'].include?( key )
                  Artbase::Image.get( 'intlpunks', id ).mirror
                elsif ['phoonbird', 'phoonbirds',
                       'moonbhird', 'moonbhirds',
                       'bhird', 'bhirds'].include?( key )
                  Artbase::Image.get( 'moonbirds', id ).mirror
                elsif ['moonbirdphunk', 'moonbirdphunks',
                       'birdphunk', 'birdphunks'].include?( key )
                  Artbase::Image.get( 'moonbirdpunks', id ).mirror
                else
                  collection = Artbase::COLLECTIONS[ key ] || key
                  Artbase::Image.get( collection, id )
                end
             else
                Original::Image.fabricate( key, *attributes )
             end

    if img.nil?
      puts "!! ERROR - don't know how to fabricate >#{name}<; sorry"
      exit 1
    end


    ## note: keep adding background as a separate step for now
    if options[ :background]
       ##  hack: for now for artbase collections
       ##          try to remove background if any
       ##         keep? why? why not?
       img = img.transparent    if id

       ## note: support multiple backgrounds
       ##       via + for now e.g.
       ##         blue+rainbow1
       ##   add more separators - why? why not?
       backgrounds = options[ :background].split( '+' )
       backgrounds = backgrounds.map {|background| background.strip }

       img = img.background( *backgrounds )
    end


    basename = String.new('')   ## note: start with our own string buffer
                                ##    otherwise assigned first string gets modified!!
    basename +=   options[:name] ? options[:name] : key

    basename += if options[:id]
                  options[:id]
                elsif id
                  id.to_s
                else
                  '' # add nothing
                end


    path =  if options[:zoom]
               img = img.zoom( options[:zoom] )
               "./#{basename}@#{options[:zoom]}x.png"
            else
               "./#{basename}.png"
            end

    puts "  saving original #{name} (#{img.width}x#{img.height}) to >#{path}<..."
    img.save( path )

    puts "bye"
  end
end # class Tool

end # module Originals


