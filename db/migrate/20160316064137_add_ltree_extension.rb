class AddLtreeExtension < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      CREATE extension IF NOT EXISTS ltree;
    SQL
  end

  def down
    execute <<-SQL
      DROP extension IF EXISTS ltree;
    SQL
  end
end
