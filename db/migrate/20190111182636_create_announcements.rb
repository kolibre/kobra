class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.text :type
      t.text :priority, null: false
      t.text :mime_type, null: false
      t.text :audio, null: false

      t.timestamps
    end
  end
end
