class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :address
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
