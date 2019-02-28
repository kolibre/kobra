class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :content_list
<<<<<<< HEAD
  belongs_to :content_list_2, :class_name => 'ContentList'
=======
  belongs_to :content_list_v1, :class_name => 'ContentList'
>>>>>>> 1ce4654c40322959870e16ff1b802031b2b5b225
  belongs_to :state
end
