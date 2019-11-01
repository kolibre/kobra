class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :content_list
  belongs_to :content_list_v1, :class_name => 'ContentList'
  belongs_to :state
  validates :content_id, uniqueness: { scope: :user_id }
end
