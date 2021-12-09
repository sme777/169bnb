class CreateBearBeds < ActiveRecord::Migration[6.1]
  def change
    create_table :bear_beds do |t|
      t.string :location
      t.float :price
      t.float :avg_rating
      t.string :description
      t.integer :host_id

      t.timestamps
    end
  end
end
