class CreateUserLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_logs do |t|
      t.references :user, foreign_key: true
      t.text :ip
      t.text :request
      t.text :response

      t.timestamps
    end
  end
end
