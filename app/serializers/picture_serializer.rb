class PictureSerializer < ActiveModel::Serializer
  attributes :id,
             :original_url,
             :medium_url,
             :thumb_url,
             :filename,
             :file_size,
             :content_type,
             :owner_name,
             :created_at

  # belongs_to :user_id

  def original_url
    object.image.url
  end

  def medium_url
    object.image.url(:medium)
  end

  def thumb_url
    object.image.url(:thumb)
  end

  def filename
    object.image_identifier
  end

  def owner_name
    object.user.name
  end

end
