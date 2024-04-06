class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bookclub, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
