class ReviewsController < ApplicationRecord

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

end




# a review must belong to a restaurant
# a review must have content
# a review must have rating
# a review's rating must be a number between 0 and 5
# a review's rating must be an integer -2.5 = invalid
