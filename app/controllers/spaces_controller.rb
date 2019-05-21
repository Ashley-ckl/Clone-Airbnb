class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

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
       :new
    end
  end

  def search
    @results = Space.all
    if params[:location].present?
      @results = @results.where("location ILIKE ?", params[:location])
    end
    if params[:capacity].present?
      @results = @results.where("capacity = ?", params[:capacity])
    end
  end

  private

  def space_params
    params.require(:space).permit(:capacity, :price, :amenities, :description, :name, :space_type, :location)
  end
end
