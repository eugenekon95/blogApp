class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { maximum: 20, message: 'is too long' }
  validates :content, length: { maximum: 1500, message: 'is too long' }
  self.per_page = 3


  def self.search(pattern)
    if pattern.blank?
      all
    else
      where('title ILIKE ? or text ILIKE ?', "%#{pattern}%", "%#{pattern}%")
    end
  end
end
