class GearsController < ApplicationController

  before_action :find_gear, only: [:show, :edit, :destroy]
  def index
    @gears = Gear.all
  end

  def dashboard
    # @categories = []
    # @gears = Gear.all
    # @gears.each do |gear|
    #   @categories << gear.category
    # end
    # @categories = @categories.sort
    # @categories = Gear.all.map(&:category).sort
    # @categories = Gear.all.pluck(:category).uniq.sort
  end

  def show; end

  def create
    @gear = Gear.new(gears_params)
    @gear.user = current_user 
    if @gear.save
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end

  def new
    @gear = Gear.new
  end

  def edit; end

  def update
    @gear = Gear.update(gears_params)
    redirect_to gear_path(@gear)
  end

  def destroy
    @gear.destroy
    redirect_to gears_path
  end

  private

  def gears_params
    params.require(:gear).permit(:brand, :model, :description, :price_per_day)
  end

  def find_gear
    @gear = Gear.find(params[:id])
  end
end
