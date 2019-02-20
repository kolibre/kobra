class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username
      t.text :password
      t.int :terms_accepted
      t.int :log

      t.timestamps
    end
  end
end
