require( "minitest/autorun" )
require_relative( "../hotel_chain.rb" )
require_relative( "../hotel.rb" )
require_relative( "../room.rb" )
require_relative( "../guest.rb" )
require( "pry-byebug" )
require( "minitest/rg" )


class TestHotelChain < Minitest::Test

  def setup
#Setup for Edinburgh Hotel
    @guest_edin_1 = Guest.new( "Mackay" )
    @guest_edin_2 = Guest.new( "Heggeland" )
    @edinburgh_hotel_rooms = [ Room.new( "101", nil ), Room.new( "102", nil ), Room.new( "103", @guest_edin_2 ) ]
    @edinburgh_hotel = Hotel.new( "Edinburgh Hotel", @edinburgh_hotel_rooms )

#Setup for Glasgow Hotel
    @guest_glas_1 = Guest.new( "Ross" )
    @guest_glas_2 = Guest.new( "Bobby-no-mates" )
    @glasgow_hotel_rooms = [ Room.new( "001", nil ), Room.new( "002", nil ), Room.new( "003", @guest_glas_2 ) ]
    @glasgow_hotel = Hotel.new( "Glasgow Hotel", @glasgow_hotel_rooms )

#Setup for New Hotel
    @guest_slough_1 = Guest.new( "Bowie" )
    @guest_slough_2 = Guest.new( "Jackson" )
    @slough_hotel_rooms = [ Room.new( "010", nil ), Room.new( "020", nil ), Room.new( "030", @guest_slough_2 ) ]
    @slough_hotel = Hotel.new( "Slough Hotel", @slough_hotel_rooms )

#Setup for hotel Chain
    @hotel_list = [ @edinburgh_hotel, @glasgow_hotel ]
    @hotel_chain = HotelChain.new( "Mercure", @hotel_list )
  end

  def test_hotel_chain_name
    assert_equal( "Mercure", @hotel_chain.chain_name )
  end

  def test_hotel_chain_size
    assert_equal( 2, @hotel_chain.hotel_list.size )
  end

  def test_add_hotel
    assert_equal( @hotel_chain.hotel_list, @hotel_chain.add_hotel( @slough_hotel ) )
  end

  def test_remove_hotel
    @hotel_chain.remove_hotel( @glasgow_hotel )
    assert_equal( 1, @hotel_chain.hotel_list.size )
  end

end
