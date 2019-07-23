class AddUniqueIndexToContentTitle < ActiveRecord::Migration[5.2]
  def change
    add_index :contents, :title, unique: true
  end
end
