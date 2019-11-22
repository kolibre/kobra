class CreateUserContents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contents do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.references :content_list
      t.references :content_list_v1, default: 2
      t.boolean :return, null: false, default: false
      t.boolean :returned, null: false, default: false
      t.datetime :return_at, default: nil
      t.references :state, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
