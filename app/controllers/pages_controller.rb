class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @home_spaces = Space.last(6)
  end


end
