class ContentAudio < ApplicationRecord
  belongs_to :content
  mount_uploader :audio, AudioUploader
  validates_presence_of :audio
end
