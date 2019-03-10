class Supplier < ApplicationRecord

  def products
    Product.where(suupplier_id: id)
  end

end
