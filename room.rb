require( "pry-byebug" )

class Room

  attr_accessor( :beds )

  def initialize( beds )
    @beds = Array.new( beds, 0 )
  end

end
