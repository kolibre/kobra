class CreateContentAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :content_audios do |t|
      t.references :content, foreign_key: true
      t.integer :size, null: false
      t.integer :length, null: false

      t.timestamps
    end
  end
end
