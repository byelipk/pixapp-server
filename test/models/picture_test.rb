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

require 'test_helper'

class PictureTest < ActiveSupport::TestCase

  before do
    @picture = Fabricate(:picture)
  end

  describe "associations" do

    it "belongs to user" do
      assert_respond_to @picture, :user
    end

  end
end
