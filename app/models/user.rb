class User < ApplicationRecord
  after_initialize :set_def_img
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 4 }

  has_many :messages
  has_secure_password

  def set_def_img
    @images = [
      'http://alices-html.themerex.net/images/product-12-300x410.jpg',
      'http://alices-html.themerex.net/images/product-17-300x410.jpg',
      'http://alices-html.themerex.net/images/product-19-300x410.jpg',
      'http://alices-html.themerex.net/images/product-13.jpg'
    ]
    self.main_img ||= @images.sample
  end
end
