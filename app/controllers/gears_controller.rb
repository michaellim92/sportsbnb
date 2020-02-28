class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_gear, only: [:show, :edit, :destroy]
  def index
    # if params[:category] is there
    # then filter gears with .where(...)
    # else
    # Gear.all
    if params[:category].present?
      @gears = Gear.where(category: params[:category])
    else
      @gears = Gear.all
    end
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

  def show
    find_gear
  end

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
    params.require(:gear).permit(:brand, :model, :description, :category, :price_per_day, photos: [])
  end

  def find_gear
    @gear = Gear.find(params[:id])
  end
end
