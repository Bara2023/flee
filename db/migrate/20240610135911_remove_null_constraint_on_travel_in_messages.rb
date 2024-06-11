class RemoveNullConstraintOnTravelInMessages < ActiveRecord::Migration[7.1]
  def change
    change_column_null :messages, :travel_id, true
  end
end
