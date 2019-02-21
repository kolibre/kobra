class ContentList < ApplicationRecord
    has_many :primary_usercontents, :class_name => 'UserContent', :foreign_key => 'content_list_id'
    has_many :secondary_usercontents, :class_name => 'UserContent', :foreign_key => 'content_list_2_id'
end
