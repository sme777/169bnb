class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :creator_id
      t.integer :bear_bed_id

      t.timestamps
    end
  end
end
