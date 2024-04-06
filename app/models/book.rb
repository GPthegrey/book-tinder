class Book < ApplicationRecord
  belongs_to :user

  validates :title, :author, presence: true
end
