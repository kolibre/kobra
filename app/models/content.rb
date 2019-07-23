class Content < ApplicationRecord
  belongs_to :category
  belongs_to :daisy_format
  has_many :content_audios, dependent: :destroy
  has_many :content_metadata, dependent: :destroy
  has_many :content_resources, dependent: :destroy
  validates :title, uniqueness: true

  before_destroy :ensure_safe

  private

  def ensure_safe
    UserContent.where(content_id: id).empty?
  end
end
