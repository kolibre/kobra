class ContentResource < ApplicationRecord
  before_save :set_defaults
  belongs_to :content
  mount_uploader :resource, ResourceUploader
  validates_presence_of :resource

  private

  def set_defaults
    self.file_name ||= ''
    self.mime_type ||= 'unknown'
  end
end
