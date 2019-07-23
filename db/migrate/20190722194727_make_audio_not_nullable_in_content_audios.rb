class MakeAudioNotNullableInContentAudios < ActiveRecord::Migration[5.2]
  def up
    change_column_null(:content_audios, :audio, false)
  end

  def down
    change_column_null(:content_audios, :audio, true)
  end
end
