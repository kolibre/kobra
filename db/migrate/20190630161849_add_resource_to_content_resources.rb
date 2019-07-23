class AddResourceToContentResources < ActiveRecord::Migration[5.2]
  def change
    add_column :content_resources, :resource, :string
  end
end
