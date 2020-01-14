class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }
  def index
    @category = params[:food_type]
    @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
  end

end
