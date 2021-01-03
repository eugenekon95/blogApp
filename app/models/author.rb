class Author < ApplicationRecord
  
  has_secure_password

  VALID_EMAIL_REGX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :last_name, :gender, :birthday, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGX }
  validates :password, length: { minimum: 8, message: "is too short for valid password" }
  validates_uniqueness_of :email, case_sensitive: false
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
