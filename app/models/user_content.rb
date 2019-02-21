class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :content_list
  belongs_to :content_list_2, :class_name => 'ContentList'
  belongs_to :state
end
