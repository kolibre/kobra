class AddUniqIndexOnUserContents < ActiveRecord::Migration[5.2]
  def change
    add_index :user_contents, [:user_id, :content_id], unique: true
  end
end
