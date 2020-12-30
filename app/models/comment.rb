class Comment < ApplicationRecord
  belongs_to :post, required: true, counter_cache: true
  belongs_to :author, required: true
  enum status: [:unpublished, :published]
  validates :body, presence: true

  # scope :published,   -> { where(status: :published) }
  # scope :unpublished,   -> { where(status: :unpublished) }
end
