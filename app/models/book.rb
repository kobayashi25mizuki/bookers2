class Book < ApplicationRecord
  has_one_attached :image

  def get_image
    image.attached? ? image : 'no_image.jpg'
  end
  
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
end
