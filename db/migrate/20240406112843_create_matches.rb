class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.integer :offerer
      t.integer :receiver
      t.integer :book_offered
      t.integer :book_received
      t.string :status

      t.timestamps
    end
  end
end
