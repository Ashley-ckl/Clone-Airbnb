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
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def search
    @results = Space.where("location ILIKE ? AND capacity = ?", params[:location], params[:capacity])
    # raise
  end

  private

  def space_params
    params.require(:space).permit(:capacity, :price, :amenities, :description, :name, :space_type, :location)
  end
end
