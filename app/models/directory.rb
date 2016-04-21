# == Schema Information
#
# Table name: directories
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  parent_id  :integer
#  path       :ltree
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Directory < ApplicationRecord
  has_ltree_hierarchy

  belongs_to :user
  
  has_many :pictures
end
