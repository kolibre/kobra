class CreateAnnouncementAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :announcement_audios do |t|
      t.references :announcement_text, foreign_key: true
      t.integer :size, null: false
      t.integer :length, null: false

      t.timestamps
    end
  end
end
