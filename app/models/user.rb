require 'sysrandom'
class User < ApplicationRecord
  before_save :generate_password
  validates :username, uniqueness: true
  def generate_password
    self.password = Sysrandom.base64(9) if password.nil? || password.empty?
  end
end
