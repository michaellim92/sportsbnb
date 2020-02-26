class RentalsController < ApplicationController
  before_action :find_gear

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.gear = @gear
<<<<<<< HEAD
    @rental.user = current_user
=======
>>>>>>> master
    if @rental.save
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end

<<<<<<< HEAD
   private
=======
  private
>>>>>>> master

  def find_gear
    @gear = Gear.find(params[:gear_id])
  end
<<<<<<< HEAD

  def rental_params
    params.require(:rental).permit(:starts_at, :ends_at, :total_price, :status)
  end
=======
>>>>>>> master

  def rental_params
    params.require(:rental).permit(:starts_at, :ends_at, :total_price, :status)
  end
end
