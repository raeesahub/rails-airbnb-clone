class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = Flat.search_by_name_and_address(params[:query])
    else
      @flats = Flat.all
    end
      @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description, :user_id, photos: [])
  end
end
