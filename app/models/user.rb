require 'sysrandom'
class User < ApplicationRecord
  before_save :generate_password
  def generate_password
    self.password ||= Sysrandom.base64(8)
  end
end
