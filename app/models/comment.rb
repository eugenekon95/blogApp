class Comment < ApplicationRecord
  belongs_to :post, required: true
  belongs_to :author, required: true

  enum status: [:unpublished, :published]

  validates :body, presence: true, length: { minimum: 5 }
  validates :user_id, presence: true

  scope :published, -> { where(status: 1) }
  scope :unpublished, -> { where(status: 0) }

end
