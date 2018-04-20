class LandingController < ApplicationController
  def index
    @domestic = Product.domestic
  end
end
