class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def show
    @space = Space.find(params[:id])
    authorize(@space)
  end

  def new
    @space = Space.new
    authorize(@space)
  end

  def create
    @space = Space.new(space_params)
    authorize(@space)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def search
    @results = Space.where.not(latitude: nil, longitude: nil)
    @markers = @results.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
    authorize(@results)
    if params[:location].present?
      @results = @results.where("location ILIKE ?", params[:location])
    end
    if params[:capacity].present?
      @results = @results.where("capacity = ?", params[:capacity])
    end
    # raise
  end

  private

  def space_params
    params.require(:space).permit(:capacity, :price_per_hour, :amenities, :description, :name, :location, :photo)
  end
end
