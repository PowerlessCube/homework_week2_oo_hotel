require( "minitest/autorun" )
require_relative( "../hotel.rb" )
require( "pry-byebug" )
require( "minitest/rg" )

class TestHotel < MiniTest::Test

  def setup
    @guest1 = Guest.new( "Henley" )
    @guest2 = Guest.new( "Frey" )

    @hotel_rooms = [ Room.new( "101", nil, false ), Room.new( "102", nil, false ), Room.new( "103", @guest2, true ) ]
    @hotel = Hotel.new( "Hotel California", @hotel_rooms )
  end

  def test_hotel_name
    assert_equal( "Hotel California", @hotel.hotel_name )
  end

  def test_hotel_size
    assert_equal( 3, @hotel.hotel_rooms.size )
  end

  def test_hotel_rooms
    assert_equal( @hotel_rooms[0], @hotel.hotel_rooms[0] )
  end

  def test_guest_check_in
    @hotel.guest_check_in( @guest1, @hotel_rooms[0].room_number )
    assert_equal( @guest1, @hotel.hotel_rooms[0].guest )
  end

  def test_guest_check_out
    @hotel.guest_check_out( @hotel_rooms[2].room_number )
    assert_equal( nil, @hotel.hotel_rooms[2].guest )
  end

  def test_list_of_available_rooms
    assert_equal( [ @hotel.hotel_rooms[0], @hotel.hotel_rooms[1] ],  @hotel.list_of_available_rooms(  ) )
  end

  def test_list_rooms_with_room_service
    assert_equal( [ @hotel.hotel_rooms[2] ], @hotel.list_rooms_with_room_service(  ) )
  end

end

nil
