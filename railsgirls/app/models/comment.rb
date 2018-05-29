# comment model
class Comment < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :idea
  validates :user_name, :body, presence: true, length: { minimum: 5 }
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, only_integer: true }

  def blank_stars
    5 - rating.to_i
  end

  def format_date
    created_at.strftime('%m/%d/%Y %H:%M')
  end
end
