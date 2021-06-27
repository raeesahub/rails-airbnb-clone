class ReviewsController < ApplicationController
  before_action :set_flat, only: %i[ new create ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.flat = @flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
