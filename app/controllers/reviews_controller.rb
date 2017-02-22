class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end

  end

  def _form
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
    # params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
