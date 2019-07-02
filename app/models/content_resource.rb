class ContentResource < ApplicationRecord
  belongs_to :content
  mount_uploader :resource, ResourceUploader
  validates_presence_of :resource
end
