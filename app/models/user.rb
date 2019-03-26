require 'sysrandom'
require 'openssl'
# TODO: implement way of using external public key for encryption.
EXAMPLE_RSA_KEY = '-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCXmtTTvovu9keHY//4RFoCuBmh
1UdEnDGsOef3543eABZz4lqr5QNO0ktfRg5kwheqVwZJHshYZuZzfgFOxVD8YlG4
F7kvhkNaC2M0XGM2BuQBgqrkOMB0EmhqBROP6tAQ4DLfTAm8FAo/rryrRoAejwxq
A8ZHdCZuINXTJluGcQIDAQAB
-----END PUBLIC KEY-----

-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQCXmtTTvovu9keHY//4RFoCuBmh1UdEnDGsOef3543eABZz4lqr
5QNO0ktfRg5kwheqVwZJHshYZuZzfgFOxVD8YlG4F7kvhkNaC2M0XGM2BuQBgqrk
OMB0EmhqBROP6tAQ4DLfTAm8FAo/rryrRoAejwxqA8ZHdCZuINXTJluGcQIDAQAB
AoGADGbE/CE9LyoEReX/PV7SAiDvL9bTgqBIS+9cs2HEsCFPtOESS7drItp/Aeco
LEPYTb3arMaQ2vJn7ZCkKL5pVmuzEvFXjO3vY0283U1xUdoevL/2yyHAM3l2dYbp
bvsPrWZhoa06mqcmN1d4XPKnLLrJzYOWDvlW7IXop6Y4EvECQQDJwHpY+bao5lE+
S7I3FnAzu6jUYA2VCTWDJVilX8sc/3OhONFlfAuv4gC2Yh+M4n8JhDZaKJ5q4Dbd
50jzSPJ9AkEAwF5/YneLUldjYZfpj/8dDBkSZ1qwB5kBpM0q/8UPassBVP00A3pa
4PCvxqhcsDPhnM9KX8N0D1f8fIM2vAoSBQJADW5l9sRxF591qysI60fwIlGM9M6M
OO7LBDcZRrEw6XZMMWCB+Dqg4I2wNHQl25A8mtqVb70ihsT0giNipOenVQJBALyp
cOEPQPJGhk8mf4gbuU8uH6CBjnZFFxmbpfomN9KSugGyOhrXGt3U728zm4Orvi7e
FaEJvX922Ub8IOgWMEkCQDAUHoY4SEZQPI9PpQrcJP87J4x3+8CfWni6SAWkuKUU
BsDoI6qtrBbVvkxx/wzv/i28scwKCj4enQkFbDWjPxg=
-----END RSA PRIVATE KEY-----'.freeze

class User < ApplicationRecord
  before_save :generate_password
  validates :username, uniqueness: true
  def generate_password
    clear_pass = password.nil? || password.empty? ? Sysrandom.base64(9) : password
    key = OpenSSL::PKey::RSA.new EXAMPLE_RSA_KEY
    encrypted_pass = key.public_encrypt(clear_pass, OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING)
    self.password = Base64.encode64(encrypted_pass)
  end
end
