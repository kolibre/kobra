class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.text :type
      t.text :priority

      t.timestamps
    end
  end
end
