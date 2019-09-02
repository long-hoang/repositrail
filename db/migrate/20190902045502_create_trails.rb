class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.text :duration
      t.string :address
      t.timestamps
    end
  end
end
