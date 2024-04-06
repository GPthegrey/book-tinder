class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :address
      t.integer :max_assistants
      t.string :privacy, default: 'public'
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.datetime :time
      t.timestamps
    end
  end
end
