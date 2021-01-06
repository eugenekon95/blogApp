class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { maximum: 20, message: 'is too long' }
  validates :content, length: { maximum: 1500, message: 'is too long' }
  paginates_per 1
  #max_paginates_per 8

end
