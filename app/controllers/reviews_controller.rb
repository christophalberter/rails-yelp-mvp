class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Review successfully created.'
    else
      render 'restaurants/show', alert: 'There was an error creating the review.'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
