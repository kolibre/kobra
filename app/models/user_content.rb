class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :contentlist
  belongs_to :contentlist_2, :class_name => 'ContentList'
  belongs_to :state
end
