class Match < ApplicationRecord
  belongs_to :book_offered, class_name: 'Book', foreign_key: 'book_offered_id'
  belongs_to :book_received, class_name: 'Book', foreign_key: 'book_received_id'
  belongs_to :offerer, class_name: 'User', foreign_key: 'offerer_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

end
