require( "minitest/autorun" )
require_relative( "../guest.rb" )
require( "pry-byebug" )
require( "minitest/rg" )


class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Bowie")
  end

  def test_guest_name
    assert_equal( "bowie", @guest.guest_name )
  end

end


nil
