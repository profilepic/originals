# encoding: utf-8

####
## todo: move to textutils for re(use) ?????

class BlockReader

  include LogUtils::Logging

  def self.from_file( path )
    ## nb: assume/enfore utf-8 encoding (with or without BOM - byte order mark)
    ## - see textutils/utils.rb
   text = File.read_utf8( path )
   self.from_string( text )
  end

  def self.from_string( text )
    self.new( text )
  end

  def initialize( text )
    @text = text
  end

  def read
    ## note returns an array of (line) strings e.g.
    ## [
    ##  "line1\nline2",         ## -- block1
    ##  "line1\nline2\nline3"   ## -- block2
    ## ]

    blocks = []
    buf = ""

    @text.each_line do |line|
       # comments allow:
       # 1) ##### (shell/ruby style)
       if line =~ /^\s*#/ 
          # skip komments and do NOT copy to result (keep comments secret!)
         logger.debug 'skipping comment line'
         next
       end

#       if line =~ /^\s*$/
#         # kommentar oder leerzeile überspringen
#         logger.debug 'skipping blank line'
#         next
#       end

       # pass 2) remove leading and trailing whitespace
       line = line.strip

       if line =~ /^-{3,}$/   ## three or more lines
         logger.debug 'block separator'
         blocks << buf.strip   ## note: strip leading and trailing whitespace
         buf = ""
       else
         buf << "#{line}\n"
       end
    end # each lines

    blocks << buf.strip ## note: strip leading and trailing whitespace
    blocks
  end # method read

end # class BlockReader

