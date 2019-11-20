class ContentMetadatum < ApplicationRecord
  belongs_to :content
  validates_presence_of :content_id, :key, :value
end
