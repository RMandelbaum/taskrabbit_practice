class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :zip_code
      t.string :zip_code_type
      t.string :city
      t.string :state
      t.float :lat
      t.float :lng
      t.string :country
      t.string :location_text
      t.string :location
      t.string :estimated_population
      t.string :total_wages

      t.timestamps null: false 
    end
  end
end
