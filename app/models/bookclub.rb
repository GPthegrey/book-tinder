class Bookclub < ApplicationRecord
  belongs_to :user
  has_many :members, dependent: :destroy

  validates :name, :description, :genre, :max_members, presence: true
end
