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
    @guest_hotcal_1 = Guest.new( "Henley" )
    @guest_hotcal_2 = Guest.new( "Frey" )
    @hotel_california_rooms = [ Room.new( "101", nil, false ), Room.new( "102", nil, false ), Room.new( "103", @guest_hotcal_2, true ) ]
    @hotel_california = Hotel.new( "Hotel California", @hotel_california_rooms )

#Setup for Glasgow Hotel
    @guest_timli_1 = Guest.new( "Torrance" )
    @guest_timli_2 = Guest.new( "Grady" )
    @timberline_hotel_rooms = [ Room.new( "001", nil, false ), Room.new( "002", nil, false ), Room.new( "003", @guest_timli_2, true ) ]
    @timberline_lodge = Hotel.new( "Timberline Lodge", @timberline_hotel_rooms )

#Setup for New Hotel
    @guest_grabud_1 = Guest.new( "Desgoffe" )
    @guest_grabud_2 = Guest.new( "Moustafa" )
    @grand_budapest_hotel_rooms = [ Room.new( "010", nil, false ), Room.new( "020", nil, false ), Room.new( "030", @guest_grabud_2, true ) ]
    @grand_budapest_hotel = Hotel.new( "Slough Hotel", @grand_budapest_hotel_rooms )

#Setup for hotel Chain
    @hotel_list = [ @hotel_california, @timberline_lodge ]
    @hotel_chain = HotelChain.new( "Fictional Hotels Inc.", @hotel_list )
  end

  def test_hotel_chain_name
    assert_equal( "Fictional Hotels Inc.", @hotel_chain.chain_name )
  end

  def test_hotel_chain_size
    assert_equal( 2, @hotel_chain.hotel_list.size )
  end

  def test_add_hotel
    assert_equal( @hotel_chain.hotel_list, @hotel_chain.add_hotel( @grand_budapest_hotel ) )
  end

  def test_remove_hotel
    @hotel_chain.remove_hotel( @timberline_lodge )
    assert_equal( 1, @hotel_chain.hotel_list.size )
  end

end
