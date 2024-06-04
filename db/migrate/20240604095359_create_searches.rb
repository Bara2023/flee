class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :searches do |t|
      t.string :airport_start
      t.integer :budget_max
      t.integer :lasting
      t.string :destination
      t.string :month
      t.string :mood
      t.string :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
