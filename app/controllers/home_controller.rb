class HomeController < ApplicationController
  def index
    @user     = User.first
    @picture  = Picture.new
    @pictures = @user.pictures
  end
end
