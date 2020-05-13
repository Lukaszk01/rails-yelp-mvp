class ReviewsController < ApplicationController
  def new
     @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new
  end

  def create
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new(review_params)
    @reviews.restaurant = @restaurants
    if @reviews.save
      redirect_to restaurant_path(@restaurants)
    else
      render :new
    end
  end
  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
