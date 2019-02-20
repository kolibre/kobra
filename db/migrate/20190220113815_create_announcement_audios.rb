class CreateAnnouncementAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :announcement_audios do |t|
      t.references :announcementtext
      t.int :size, null: false
      t.int :length, null: false

      t.timestamps
    end
  end
end
