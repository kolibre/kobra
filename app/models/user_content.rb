class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :contentlist
  belongs_to :state
end
