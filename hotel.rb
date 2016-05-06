require( "pry-byebug" )
require_relative( "room.rb" )
require_relative( "guest.rb" )

class Hotel

  attr_accessor( :hotel_name, :hotel_rooms )

  def initialize( hotel_name, hotel_rooms )
    @hotel_name = hotel_name
    @hotel_rooms = Array.new( hotel_rooms, Room.new( 2 ).beds )
  end

  def search_by_guest(guest_name)

    room_index = 0

    while room_index < @hotel_rooms.length
      if @hotel_rooms[room_index].find { | guest | guest != guest_name }
        return @hotel_rooms[room_index].index(room_index)
      end

      room_index += 1
    end
  end

  # def guest_check_in
  #   room = []
  #   for room_index in @hotel_rooms.hotel_rooms
  #     binding.pry
  #   end
  #   return room
  # end



end



nil
