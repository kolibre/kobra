class AddUniqIndexOnUserContents < ActiveRecord::Migration[5.2]
  def change
    add_index :user_contents, [:user_id, :content_id, :content_list_id], unique: true, :name => 'index_user_contents_on_user_id_content_id_content_list_id'
    add_index :user_contents, [:user_id, :content_id, :content_list_v1_id], unique: true, :name => 'index_user_contents_on_user_id_content_id_content_list_v1_id'
  end
end
