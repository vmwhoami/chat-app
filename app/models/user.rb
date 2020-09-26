class User < ApplicationRecord
validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum:4, maximum: 50}
validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum:4}

has_many :messages 
has_secure_password

end
