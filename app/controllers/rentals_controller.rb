class RentalsController < ApplicationController
  before_action :find_gear, except: [:payment_form, :destroy]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.gear = @gear
    @rental.user = current_user
    @rental.total_price = params[:total_price]
    # @rental.total_price = (@gear.price_per_day || 10) * (((@rental.ends_at - @rental.starts_at)/86400000).round + 1)
    if @rental.save
      redirect_to payment_form_rentals_path
    else
      render :new
    end
  end

  def payment_form
  end

  def destroy
    @rental= Rental.find(params[:id])
    @rental.destroy
    redirect_to root_path
  end

  private

  def find_gear
    @gear = Gear.find(params[:gear_id])
  end

  def rental_params
    params.require(:rental).permit(:starts_at, :ends_at, :total_price, :status)
  end
end
