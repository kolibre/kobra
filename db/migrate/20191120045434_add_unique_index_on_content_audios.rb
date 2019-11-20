class AddUniqueIndexOnContentAudios < ActiveRecord::Migration[5.2]
  def change
    add_index :content_audios, [:content_id, :audio], unique: true
  end
end
