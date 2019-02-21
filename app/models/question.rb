class Question < ApplicationRecord
  belongs_to :question_type
  belongs_to :parent, :class_name => 'Question'
  has_many :children, :class_name => 'Question', :foreign_key => 'parent_id'
end
