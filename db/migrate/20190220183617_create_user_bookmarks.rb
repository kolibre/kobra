class CreateUserBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.text :bookmarkset, null: false

      t.timestamps
    end
  end
end
