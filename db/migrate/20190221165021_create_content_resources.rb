class CreateContentResources < ActiveRecord::Migration[5.2]
  def change
    create_table :content_resources do |t|
      t.references :content, foreign_key: true
      t.text :filename
      t.integer :bytes
      t.text :mimetype

      t.timestamps
    end
  end
end
