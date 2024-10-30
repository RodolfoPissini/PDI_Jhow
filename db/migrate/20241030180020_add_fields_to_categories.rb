class AddFieldsToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :code, :string
    add_column :categories, :status, :string, default: "PENDING"
    add_column :categories, :image_url, :string
  end
end
