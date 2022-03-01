class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :website_url
      t.references :city, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
