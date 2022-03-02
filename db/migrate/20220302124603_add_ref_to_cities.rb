class AddRefToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :ref, :string
  end
end
