require 'securerandom'
class User < ApplicationRecord
  before_save :generate_password
  def generate_password
    self.password ||= 'securePassword'
  end
end
