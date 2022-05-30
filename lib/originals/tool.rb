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
              "Background (default: transparent)") do |str|
          options[ :background] = str
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
    key = name.downcase.gsub( '[ ()_-]', '' )

    img = Original::Image.fabricate( key, *attributes,
                                     background: options[ :background] )


    basename = "#{key}#{options[:id]}"

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


