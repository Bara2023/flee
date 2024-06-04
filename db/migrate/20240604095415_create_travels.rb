class CreateTravels < ActiveRecord::Migration[7.1]
  def change
    create_table :travels do |t|
      t.string :airport_start
      t.integer :budget_max
      t.integer :lasting
      t.string :destination
      t.date :start_date
      t.string :mood
      t.string :age
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
