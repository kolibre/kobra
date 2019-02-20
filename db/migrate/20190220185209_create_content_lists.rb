class CreateContentLists < ActiveRecord::Migration[5.2]
  def change
    create_table :content_lists do |t|
      t.text :name

      t.timestamps
    end
  end
end
