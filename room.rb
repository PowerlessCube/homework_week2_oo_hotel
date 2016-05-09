require( "pry-byebug" )

class Room

  attr_accessor( :room_number, :guest, :room_service)

  def initialize( room_number, guest, room_service )
    @room_number = room_number
    @guest = guest
    @room_service = room_service
  end

#checks if room is available - returns true if empty, false if occupied
  def is_available(  )
    @guest == nil ? result = true : result = false
    return result
  end

  def check_in( guest )
    @guest = guest
  end

  def check_out(  )
    @guest = nil
  end

  def room_service(  )
    is_available == true ? result = false : result = true
  end




end
