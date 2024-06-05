class RemoveLastingFromSearches < ActiveRecord::Migration[7.1]
  def change
    remove_column :searches, :lasting, :integer
  end
end
