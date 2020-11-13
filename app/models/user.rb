class User < ApplicationRecord
before_save :set_def_img
validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum:4, maximum: 50}
validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum:4}

has_many :messages 
has_secure_password

def set_def_img
  self.main_img||= "https://via.placeholder.com/140x140"
end

end
