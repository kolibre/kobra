class ContentAudio < ApplicationRecord
  belongs_to :content
  mount_uploader :audio, AudioUploader
end
