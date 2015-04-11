class User < ActiveRecord::Base
  has_secure_password
  before_save { self.email = email.downcase }
  validates :name, presence: true, 
                   length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i  # Rails-thutorial
  # VALID_EMAIL_REGEX =/\A[\w+\-.]+@([a-z\d\-]+\.)+[a-z]+\z/i  # kzo This is also ok!
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
                    #uniqueness: true
                    uniqueness: { case_sensitive: false }  # 大文字・小文字区別しない
  validates :password, length: { minimum: 6 }
end
