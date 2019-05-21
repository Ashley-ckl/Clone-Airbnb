class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @spaces.save
      redirect_to space_path(@space)
    else
      render :new
  end

  def search
  end

private
  def space_params
    params.require(:space).permit(:capacity, :price, :amenities, :description, :name, :type, :location)
  end
end
