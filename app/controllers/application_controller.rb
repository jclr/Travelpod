class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :pop_cities

  def pop_cities
    @cities = City.all
  end
end
