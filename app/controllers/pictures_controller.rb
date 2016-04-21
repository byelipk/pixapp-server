class PicturesController < ApplicationController
  def create
    current_user.pictures.create!(picture_params)

    redirect_to :root
  end

  private

    def picture_params
      params.require(:picture).permit(:image)
    end
end
