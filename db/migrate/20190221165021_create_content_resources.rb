class CreateContentResources < ActiveRecord::Migration[5.2]
  def change
    create_table :content_resources do |t|
      t.references :content, foreign_key: true
      t.text :filename, null: false, default: ''
      t.integer :bytes, null: false, default: 0
      t.text :mimetype, null: false, default: 'unknown'

      t.timestamps
    end
  end
end
