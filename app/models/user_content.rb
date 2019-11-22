class UserContent < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :content_list
  belongs_to :content_list_v1, :class_name => 'ContentList'
  belongs_to :state
  validates :content_id, uniqueness: { scope: [:user_id, :content_id, :content_list_id] }
  validates :content_id, uniqueness: { scope: [:user_id, :content_id, :content_list_v1_id] }
  validates :return_at, presence: true, if: :return?
  validate :return_at_not_in_the_past, if: :return?

  private

  def return_at_not_in_the_past
    return if return_at.blank?

    if return_at < Date.today
      errors.add(:return_at, "can't be in the past")
    end
  end

end
