class CreateContentMetadata < ActiveRecord::Migration[5.2]
  def change
    create_table :content_metadata do |t|
      t.references :content, foreign_key: true
      t.text :key, null: false
      t.text :value, null: false

      t.timestamps
    end
  end
end
