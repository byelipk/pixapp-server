class DirectorySerializer < ActiveModel::Serializer
  attributes :id, :text

  has_many :children
  belongs_to :parent

  def text
    object.name
  end
end
