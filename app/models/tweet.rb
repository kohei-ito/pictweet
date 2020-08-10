class Tweet < ApplicationRecord
  has_many :comments  # commentsテーブルとのアソシエーション
  validates :text, :image, presence: true
  belongs_to :user

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
