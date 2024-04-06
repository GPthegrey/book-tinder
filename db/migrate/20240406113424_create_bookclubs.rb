class CreateBookclubs < ActiveRecord::Migration[7.1]
  def change
    create_table :bookclubs do |t|
      t.string :name
      t.string :description
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
