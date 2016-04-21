class Api::PicturesController < ApiController
  def index
    render json: Picture.all,
           each_serializer: PictureSerializer,
           adapter: :json_api,
           status: 200,
           meta: {
             fuck: "Yes"
           }
  end

  def show
    render json: Picture.find(params[:id]),
           serializer: PictureSerializer,
           adapter: :json_api,
           status: 200,
           meta: {
             fuck: "No"
           }
  end

  def create
    render json: created_picture, status: 201
  end

  def destroy
    if Picture.find(params[:id]).destroy!
      head 204
    else
      head :unprocessible_entity
    end
  end

  private

    def picture_params
      params.require(:picture).permit(:image)
    end

    def created_picture
      current_user.pictures.create!(picture_params)
    end

end
