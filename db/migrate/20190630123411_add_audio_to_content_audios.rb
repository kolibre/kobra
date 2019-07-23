class AddAudioToContentAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :content_audios, :audio, :string
  end
end
