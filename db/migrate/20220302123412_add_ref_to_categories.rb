class AddRefToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :ref, :string
  end
end
