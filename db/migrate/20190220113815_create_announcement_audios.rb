class CreateAnnouncementAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :announcement_audios do |t|
      t.reference :announcementtext
      t.int :size
      t.int :length

      t.timestamps
    end
  end
end
