class UsersController < ApplicationController
  
  def gears
    # list all rental gears from current_user
  end

  def dashboard
    @gears = Gear.where(user: current_user)
  end
end
