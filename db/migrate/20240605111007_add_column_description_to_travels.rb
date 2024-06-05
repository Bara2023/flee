class AddColumnDescriptionToTravels < ActiveRecord::Migration[7.1]
  def change
    add_column :travels, :description, :text
  end
end
