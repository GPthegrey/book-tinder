class CreateBookclubs < ActiveRecord::Migration[7.1]
  def change
    create_table :bookclubs do |t|
      t.string :name
      t.string :description
      t.string :meeting_location
      t.integer :max_members
      t.string :privacy, default: 'public'
      t.string :genre
      t.date :Meeting_schedule
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
