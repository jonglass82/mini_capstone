json.array! @products.each do |product|
  json.name product.name
  json.id product.id
  json.price product.price
  json.estimated_tax product.tax
  json.total_price product.total
  json.discounted product.is_discounted?
  json.description product.description
  json.images product.images
end