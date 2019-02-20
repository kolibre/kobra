class CreateUserContents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contents do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.references :contentlist, foreign_key: true
      t.int :return
      t.int :returned
      t.numeric :return_at
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
