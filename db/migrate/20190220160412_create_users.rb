class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username, null: false
      t.text :password
      t.boolean :terms_accepted, null: false, default: false
      t.boolean :log, null: false, default: false
      t.boolean :activated, null: false, default: false

      t.timestamps
    end
  end
end
