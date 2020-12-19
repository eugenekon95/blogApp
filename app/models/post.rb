class Post < ApplicationRecord
    
    belongs_to :author
    has_many :comments
    validates :title, presence: true
    validates :content, presence: true
    validates :title, length: { maximum: 20 }
    validates :content, length: { maximum: 1500 }
end

