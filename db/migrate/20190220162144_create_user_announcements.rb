class CreateUserAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :user_announcements do |t|
      t.references :user, foreign_key: true
      t.references :announcement, foreign_key: true
      t.datetime :read_at, default: nil

      t.timestamps
    end
  end
end
