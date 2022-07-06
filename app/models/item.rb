class Item < ApplicationRecord
  has_many :reviews
  has_many :favorites
  has_one_attached :photo
  validates :photo, :end_date, presence: true

  def favorite?(user)
    Favorite.find_by(user: user, item: self)
  end

end
