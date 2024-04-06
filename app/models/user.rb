class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :books, dependent: :destroy
  has_many :bookclubs, dependent: :destroy
  has_many :assistances, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :members, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
