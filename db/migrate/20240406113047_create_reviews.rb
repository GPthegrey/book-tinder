class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.integer :reviewed_id
      t.string :comment
      t.integer :rating
      t.references :match, null: false, foreign_key: true
      t.timestamps
    end
  end
end
