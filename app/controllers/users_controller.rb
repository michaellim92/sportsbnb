class UsersController < ApplicationController

  def rented
    @rentals = Rental.where(user:current_user)
  end

  def dashboard
    @gears = Gear.where(user: current_user)

    redirect_to new_gear_path if @gears.length < 1
  end
end
