class Comment < ApplicationRecord
  belongs_to :post, required: true, counter_cache: true
  belongs_to :author, required: true
  enum status: [:unpublished, :published]
  validates :body, presence: true
  has_many :author_comment_votes
  has_ancestry
  

  def count_likes
    self.author_comment_votes.liked.count
  end

  def count_dislikes
    self.author_comment_votes.disliked.count
  end

  # scope :published,   -> { where(status: :published) }
  # scope :unpublished,   -> { where(status: :unpublished) }
end
