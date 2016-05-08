require( "pry-byebug" )
require_relative( "room.rb" )
require_relative( "guest.rb" )

class Hotel

  attr_accessor( :hotel_name, :hotel_rooms )

  def initialize( hotel_name, hotel_rooms )
    @hotel_name = hotel_name
    @hotel_rooms = hotel_rooms
  end

  def guest_check_in( guest, room_number )
    for room in @hotel_rooms
      if room.room_number == room_number && room.is_available == true
        room.check_in( guest )
      end
    end
  end

  def guest_check_out( room_number )
    for room in @hotel_rooms
      if room.room_number == room_number
        room.check_out
      end
    end
  end

end



nil
