require( "minitest/autorun" )
require_relative( "../hotel.rb" )
require( "pry-byebug" )
require( "minitest/rg" )

class TestHotel < MiniTest::Test

  def setup
    @guest1 = Guest.new( "Mackay" )
    @guest2 = Guest.new( "Heggeland" )

    @hotel_rooms = [ Room.new( "101", nil ), Room.new( "102", nil ), Room.new( "103", @guest2 ) ]
    @hotel = Hotel.new( "Hotel Paridisso", @hotel_rooms )
  end

  def test_hotel_name
    assert_equal( "Hotel Paridisso", @hotel.hotel_name )
  end

  def test_hotel_size
    assert_equal( 3, @hotel.hotel_rooms.size )
  end

  def test_hotel_rooms
    assert_equal( @hotel_rooms[0], @hotel.hotel_rooms[0] )
  end

  def test_guest_check_in
    @hotel.guest_check_in( @guest1.guest_name, @hotel_rooms[0].room_number )
    assert_equal( "Mackay", @hotel.hotel_rooms[0].guest.guest_name )
  end





  # def test_number_of_rooms
  #   assert_equal( 3 , @hotel.hotel_rooms.length )
  # end
  #
  # def test_room_numbers
  #   assert_equal( "101", @hotel.hotel_rooms[0].room_number )
  #   assert_equal( "102", @hotel.hotel_rooms[1].room_number )
  #   assert_equal( "103", @hotel.hotel_rooms[2].room_number )
  #
  # end

end

nil
