require( "minitest/autorun" )
require_relative( "../guest.rb" )
require( "pry-byebug" )
require( "minitest/rg" )


class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Mackay")
  end

  def test_guest_nam
    assert_equal( "mackay", @guest.guest_name )
  end

end


nil
