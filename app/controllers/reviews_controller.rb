class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @review = Review.new(review_params)
    @flat = Flat.find(params[:flat_id])
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
end
