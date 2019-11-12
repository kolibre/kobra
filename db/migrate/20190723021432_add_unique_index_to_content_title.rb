class AddUniqueIndexToContentTitle < ActiveRecord::Migration[5.2]
  def change
    change_column :contents, :title, :string, :limit => 256
    add_index :contents, :title, unique: true
  end
end
