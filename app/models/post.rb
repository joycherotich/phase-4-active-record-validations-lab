class Post < ApplicationRecord
    validates :title, presence: true, format: { with: /(Won't Believe|Secret|Top \d|Guess)/i, message: "must be clickbait-y" }
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
end
