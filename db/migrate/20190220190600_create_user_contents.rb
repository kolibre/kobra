class CreateUserContents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contents do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.references :contentlist, foreign_key: true
      t.int :return, null: false
      t.int :returned, null: false, default: 0
      t.numeric :return_at, default: nil
      t.references :state, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
