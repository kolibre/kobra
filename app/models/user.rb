require 'sysrandom'
require 'openssl'
KEY = Digest::SHA256.hexdigest(ENV['SECRET_KEY'])[0, 32].freeze

class User < ApplicationRecord
  before_save :generate_password
  validates :username, uniqueness: true
  def generate_password
    clear_pass = password.nil? || password.empty? ? Sysrandom.base64(9) : password

    cipher = OpenSSL::Cipher::AES.new(256, :GCM).encrypt
    cipher.key = KEY
    iv = cipher.random_iv
    cipher.auth_data = ''
    encrypted_pass = cipher.update(clear_pass) + cipher.final
    tag = cipher.auth_tag

    self.password = Base64.encode64(iv + tag + encrypted_pass)
  end
end
