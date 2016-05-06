require( "minitest/autorun" )
require_relative( "../hotel.rb" )
require( "pry-byebug" )
require( "minitest/rg" )

class TestHotel < MiniTest::Test

  def setup
    guest1 = Guest.new( "Mackay" )
    guest2 = Guest.new( "Heggeland" )
    guest3 = Guest.new( "Ross" )

    @guests = [ guest1, guest2, guest3 ]
    @hotel = Hotel.new( "Hotel Paridisso", 3 )
  end

  def test_hotel_name
    assert_equal( "Hotel Paridisso", @hotel.hotel_name )
  end

  def test_hotel_size
    assert_equal( [ [ 0, 0 ], [ 0 , 0 ], [ 0, 0 ] ], @hotel.hotel_rooms )
  end

  def test_search_by_guest
    assert_equal( 0, @hotel.search_by_guest("mackay")  )
  end

  # def test_guest_check_in
  #   assert_equal( [ [ "mackay", 0 ], [ 0 , 0 ], [ 0, 0 ] ], @hotel.hotel_rooms )
  # end

end

nil
