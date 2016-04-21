class CreateDirectories < ActiveRecord::Migration[5.0]
  def change
    create_table :directories do |t|
      t.integer :user_id
      t.integer :parent_id
      t.ltree :path
      t.string :name
      t.timestamps
    end

    add_index :directories, :parent_id
  end
end
