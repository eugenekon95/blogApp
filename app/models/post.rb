class Post < ApplicationRecord
  belongs_to :author

  has_many :comments, dependent: :destroy

  validates :image, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { maximum: 20, message: "is too long" }
  validates :content, length: { maximum: 1500, message: "is too long" }
end
