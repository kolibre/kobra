class CreateUserContents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contents do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.references :contentlist, foreign_key: true
      #Note: in the example database contentlist_2 is not as foreign key
      t.references :contentlist_2, foreign_key: true, default: 3
      t.integer :return, null: false
      t.integer :returned, null: false, default: 0
      t.numeric :return_at, default: nil
      t.references :state, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
