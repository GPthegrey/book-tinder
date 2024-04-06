class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.integer :offerer_id
      t.integer :receiver_id
      t.integer :book_offered_id
      t.integer :book_received_id
      t.string :status, default: 'pending'

      t.timestamps
    end
  end
end
