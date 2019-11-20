class AddUniqueIndexOnContentResources < ActiveRecord::Migration[5.2]
  def change
    add_index :content_resources, [:content_id, :resource], unique: true
  end
end
