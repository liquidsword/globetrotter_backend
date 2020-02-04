class AddUserIdAndLocationIdToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :user_id, :integer
    add_column :trips, :location_id, :integer
  end
end
