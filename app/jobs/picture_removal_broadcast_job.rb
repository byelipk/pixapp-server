class PictureRemovalBroadcastJob < ApplicationJob
  queue_as :pictures

  def perform(args=Hash.new)
    user_id    = args[:user_id]
    picture_id = args[:id]

    if user_id.present? && picture_id.present?
      ActionCable.server.broadcast("pictures_#{user_id}", {
        action: "DELETE",
        type: "picture",
        id: picture_id
      })
    end
  end
end
