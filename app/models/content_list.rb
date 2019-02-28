class ContentList < ApplicationRecord
<<<<<<< HEAD
    has_many :primary_usercontents, :class_name => 'UserContent', :foreign_key => 'content_list_id'
    has_many :secondary_usercontents, :class_name => 'UserContent', :foreign_key => 'content_list_2_id'
=======
    has_many :primary_user_contents, :class_name => 'UserContent', :foreign_key => 'content_list_id'
    has_many :secondary_user_contents, :class_name => 'UserContent', :foreign_key => 'content_list_v1_id'
>>>>>>> 1ce4654c40322959870e16ff1b802031b2b5b225
end
