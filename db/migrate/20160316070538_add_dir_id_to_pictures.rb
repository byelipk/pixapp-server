class AddDirIdToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :directory_id, :integer
  end
end
