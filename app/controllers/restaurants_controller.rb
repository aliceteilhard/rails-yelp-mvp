class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end



# need a route so visitor can add a new restaurant, and be redirected to the show view of the new restaurant
# refers to GET "restaurants/new"
# POST "restaurants"










# need a route so the visitor can see the details of a restaurant with all the reviews related to the restaurant
