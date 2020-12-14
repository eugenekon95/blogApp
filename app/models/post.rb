class Post < ApplicationRecord
    
    validates :title, presence: true
    validates :content, presence: true
    validates :title, length: { maximum: 10 }
    validates :content, length: { maximum: 500 }
end
