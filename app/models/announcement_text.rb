class AnnouncementText < ApplicationRecord
  belongs_to :announcement
  belongs_to :language
end
