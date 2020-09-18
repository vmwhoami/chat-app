class User < ApplicationRecord
validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum:4, maximum: 15}

has_many :messages 
has_secure_password

def password=(password)
  self.password_digest = BCrypt::Password.create(password)
end

def is_password?(password)
  BCrypt::Password.new(self.password_digest).is_password?(password)
end


end
