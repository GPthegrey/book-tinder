class Review < ApplicationRecord
  belongs_to :match
  belongs_to :reviewed, class_name: 'User', foreign_key: 'reviewed_id'
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  validates :rating, :comment, presence: true
  validates :rating , numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :match, uniqueness: { scope: :reviewer_id, message: "You have already reviewed this deal" }
  validates :comment, length: { minimum: 1, maximum: 500 }
end
