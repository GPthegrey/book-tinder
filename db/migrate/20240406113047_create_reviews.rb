class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :reviewer
      t.integer :reviewed
      t.integer :rating
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
