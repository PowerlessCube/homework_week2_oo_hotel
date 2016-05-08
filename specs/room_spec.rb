require_relative( "../room.rb" )
require_relative( "../guest.rb" )
require( "minitest/autorun" )
require( "minitest/rg" )
require( "pry-byebug" )

class TestRoom < MiniTest::Test

  def setup
    @guest = Guest.new( "Mackay" )
    @empty_room = Room.new( "101", nil )
    @full_room = Room.new( "102", @guest )
  end

  def test_room_number
    assert_equal( "101", @empty_room.room_number)
  end

  def test_check_in
    @empty_room.check_in( @guest )
    assert_equal(@guest, @empty_room.guest)
  end

  def test_check_out
    @full_room.check_out()
    assert_equal( nil, @full_room.guest )
  end

  def test_is_available
    assert_equal( true, @empty_room.is_available )
    assert_equal( false, @full_room.is_available )
  end

end


nil
