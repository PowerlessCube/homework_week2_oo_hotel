require_relative( "../room.rb" )
require( "minitest/autorun" )
require( "minitest/rg" )
require( "pry-byebug" )

class TestRoom < MiniTest::Test

  def setup
    @beds = Room.new( 2 )
  end

  def test_number_of_beds
    assert_equal( [0, 0], @beds.beds )
  end


end


nil
