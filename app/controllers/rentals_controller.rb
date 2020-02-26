class RentalsController < ApplicationController
  before_action :find_gear

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.gear = @gear
    @rental.user = current_user
    # @rental.total_price = (@gear.price_per_day || 10) * (((@rental.ends_at - @rental.starts_at)/86400000).round + 1)
    if @rental.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def find_gear
    @gear = Gear.find(params[:gear_id])
  end

  def rental_params
    params.require(:rental).permit(:starts_at, :ends_at, :total_price, :status)
  end
end
