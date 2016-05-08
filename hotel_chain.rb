require( "pry-byebug" )

class HotelChain

attr_accessor( :chain_name, :hotel_list)

def initialize( chain_name, hotel_list )
  @chain_name = chain_name
  @hotel_list = hotel_list
end

def add_hotel( new_hotel )
  @hotel_list << new_hotel
end

def remove_hotel( remove_hotel )
  for hotel in @hotel_list
    if hotel == remove_hotel
      @hotel_list.delete( remove_hotel )   
    end
  end
end

end
