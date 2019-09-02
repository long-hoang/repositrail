class AlterTrailsAddLatAndLng < ActiveRecord::Migration[5.2]
  def change
    add_column :trails, :latitude, :float
    add_column :trails, :longitude, :float
  end
end
