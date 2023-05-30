class Message < ApplicationRecord

  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def was_atattched?
    self.image.was_atattched?
  end

  belongs_to :user
  belongs_to :room

  validates :content, presence: true 

end
