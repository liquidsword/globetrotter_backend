class AddLocationIdToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :location_id, :integer
  end
end
