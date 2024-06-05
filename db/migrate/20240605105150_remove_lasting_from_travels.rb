class RemoveLastingFromTravels < ActiveRecord::Migration[7.1]
  def change
    remove_column :travels, :lasting, :integer
  end
end
