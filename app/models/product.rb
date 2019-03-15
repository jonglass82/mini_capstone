class Product < ApplicationRecord

  has_many :images
  belongs_to :supplier

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :image_url, presence: true
  validates :description, presence: true

  def supplier
    Supplier.find_by(id:supplier_id)
  end


  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
  price + tax 
  end

end
