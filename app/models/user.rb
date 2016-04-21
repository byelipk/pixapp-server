# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :pictures
  has_many :directories

  def delete_pictures
    pictures.find_each(
      batch_size: 10,
      start: 0
    ) { |p| p.destroy! }
  end
end
