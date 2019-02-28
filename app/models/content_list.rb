class ContentList < ApplicationRecord
    has_many :primary_user_contents, :class_name => 'UserContent', :foreign_key => 'content_list_id'
    has_many :secondary_user_contents, :class_name => 'UserContent', :foreign_key => 'content_list_v1_id'
end
