class ChangeLatitudeDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :cities, :latitude, :decimal, precision: 10, scale: 6
    change_column :cities, :longitude, :decimal, precision: 10, scale: 6
    change_column :experiences, :latitude, :decimal, precision: 10, scale: 6
    change_column :experiences, :longitude, :decimal, precision: 10, scale: 6
  end
end
