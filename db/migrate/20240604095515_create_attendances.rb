class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.references :travel, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
