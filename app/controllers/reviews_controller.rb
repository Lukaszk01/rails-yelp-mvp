class ReviewsController < ApplicationController
  def new
    @reviews = Review.new
  end

  def create
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new(review_params)
    @reviews.restaurant = @restaurants
    if @review.save
      redirect_to restaurant_path(@restaurants)
    else
      render :new
    end
  end
  private

  def review_params
    params.require(:revews).permit(:content, :rating)
  end

end
