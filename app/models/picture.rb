# == Schema Information
#
# Table name: pictures
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  image        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  file_size    :integer
#  content_type :string
#  directory_id :integer
#

class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :directory

  mount_uploader :image, ImageUploader

  before_save :update_image_attributes

  after_destroy { PictureRemovalBroadcastJob.perform_later(id: self.id, user_id: self.user_id) }

  def self.destroy_all
    # NOTE
    # Calling destroy will also remove the picture
    # from our AWS file storage.
    find_each(batch_size: 1000) do |picture|
      picture.destroy!
    end
  end

  private

  def update_image_attributes
    if image.present? && image_changed?
      self.content_type = image.file.content_type
      self.file_size    = image.file.size
    end
  end
end
