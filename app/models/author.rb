class Author < ApplicationRecord
  has_one_attached :avatar
  has_secure_password

  VALID_EMAIL_REGX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :last_name, :gender, :birthday, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGX }
  validates :password, length: { minimum: 8, message: "is too short for valid password" }
  validates_uniqueness_of :email, case_sensitive: false
  
  PASSWORD_FORMAT = /\A
     (?=.{8,})           # Must contain 8 or more characters
     (?=.*[A-Z])         # Must contain an upper case character
    (?=.*[[:^alnum:]])  # Must contain a symbol
    /x


  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
