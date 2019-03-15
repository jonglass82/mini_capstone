class ChangeCategoryProductsProductId < ActiveRecord::Migration[5.2]
  def change
    remove_column :category_products, :product_id, :string
    add_column :category_products, :product_id, :integer
  end
end
