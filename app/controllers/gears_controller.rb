class GearsController < ApplicationController

  before_action :find_gear, only: [:show] # please add edit and destroy when needed
  def index
    @gears = Gear.all
  end

  def dashboard
  end

  def show; end

  # def create
  #   @gear = Gear.new(gears_params)
  #   @gear.user = current_user 
  #   if @gear.save
  #     redirect_to gear_path(@gear)
  #   else
  #     render :new
  #   end
  # end

  # def new
  #   @gear = Gear.new
  # end

  # def edit; end

  # def update
  #   @gear = Gear.update(gears_params)
  #   redirect_to gear_path(@gear)
  # end

  # def destroy
  #   @gear.destroy
  #   redirect_to gears_path
  # end

  private

  def gears_params
    params.require(:gear).permit(:brand, :model, :description, :price_per_day)
  end

  def find_gear
    @gear = Gear.find(params[:id])
  end
end
