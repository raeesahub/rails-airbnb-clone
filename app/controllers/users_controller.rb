class UsersController < ApplicationController
  def show
    @flats = current_user.flats
    @bookings = current_user.bookings
  end
end
