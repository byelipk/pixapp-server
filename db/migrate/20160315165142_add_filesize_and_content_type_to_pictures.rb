class AddFilesizeAndContentTypeToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :file_size, :integer
    add_column :pictures, :content_type, :string
  end
end
