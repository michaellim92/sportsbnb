class UsersController < ApplicationController
  
  def rented
    @rentals = Rental.where(user:current_user)
  end

  def dashboard
    @gears = Gear.where(user: current_user)
  end
end
