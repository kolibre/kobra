class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username, null: false
      t.text :password
      t.integer :terms_accepted, null: false, default: 0
      t.integer :log, null: false, default: 0
      t.boolean :activated, null: false, default: false

      t.timestamps
    end
  end
end
