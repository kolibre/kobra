class ContentResource < ApplicationRecord
  belongs_to :content
  mount_uploader :resource, ResourceUploader
end
