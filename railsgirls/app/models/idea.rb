# idea model
class Idea < ApplicationRecord
  default_scope { order(created_at: :desc) }
  has_many :comments
  validates :name, :description, presence: true, length: { minimum: 5 }
  validates :picture, presence: true
  mount_uploader :picture, PictureUploader

  def format_date
    created_at.strftime("%b #{created_at.day.ordinalize}, %Y")
  end
end
