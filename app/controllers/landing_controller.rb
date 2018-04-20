class LandingController < ApplicationController
  def index
    @domestic = Product.domestic
    @newest = Product.newest
    @most_reviewed = Product.most_reviewed
  end
end
