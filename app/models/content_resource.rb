class ContentResource < ApplicationRecord
  belongs_to :content
  mount_uploader :resource, ResourceUploader
  validates_presence_of :file_name, :bytes, :mime_type, :resource
end
