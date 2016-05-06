require( "minitest/autorun" )
require_relative( "../guest.rb" )
require( "pry-byebug" )
require( "minitest/rg" )


class TestGuest < Minitest::Test

  def setup

    @guest_name = Guest.new("Mackay")
  end

  def test_guest_name
    assert_equal( "mackay", @guest_name.guest_name )
  end

  def guest_check_in( guest_name )
    assert_equal( [ [ "mackay", 0 ], [ 0, 0 ], [ 0, 0 ] ], )
  end

  def guest_check_out( guest_name )

  end



end


nil
