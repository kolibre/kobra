class ContentList < ApplicationRecord
    has_many :primary_usercontents, :class_name => 'UserContent', :foreign_key => 'contentlist_id'
    has_many :secondary_usercontents, :class_name => 'UserContent', :foreign_key => 'contentlist_2_id'
end
