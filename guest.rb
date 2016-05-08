require( "pry-byebug" )

class Guest

  attr_accessor( :guest_name )

  def initialize( guest_name )
    @guest_name = guest_name.downcase.to_s
  end

end

nil
