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
    restaurant = Restaurant.new(task_params)
    restaurant.save
    # redirect_to restaurant_path?
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end





# need a route so that a visitor can see the list of all restaurants
#   get "restaurants", to: "restaurants#index"


# need a route so visitor can add a new restaurant, and be redirected to the show view of the new restaurant
# need a route so the visitor can see the details of a restaurant with all the reviews related to the restaurant
