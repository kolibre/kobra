class Announcement < ApplicationRecord
  before_save :set_defaults

  private

  def set_defaults
    self.priority ||= 'LOW'
  end
end
