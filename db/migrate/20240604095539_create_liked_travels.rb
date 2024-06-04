class CreateLikedTravels < ActiveRecord::Migration[7.1]
  def change
    create_table :liked_travels do |t|
      t.references :search, null: false, foreign_key: true
      t.references :travel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
