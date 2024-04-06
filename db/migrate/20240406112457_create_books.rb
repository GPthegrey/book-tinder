class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :author
      t.string :description
      t.string :genre
      t.integer :rating
      t.string :language

      t.timestamps
    end
  end
end
