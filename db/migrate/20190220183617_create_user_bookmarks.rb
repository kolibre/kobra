class CreateUserBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bookmarks do |t|
      t.references :user, foreign_key: true
      # content is not a foreign key in the KADOS example database. A mistake perhaps?
      t.references :content, foreign_key: true
      t.text :bookmark_set, null: false

      t.timestamps
    end
  end
end
