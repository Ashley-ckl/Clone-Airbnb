class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @display = Space.last(5)
  end


end
