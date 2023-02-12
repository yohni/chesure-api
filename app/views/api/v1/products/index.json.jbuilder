json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.description product.description
  json.price product.price
  json.product_type do
    json.id product.product_type.id
    json.name product.product_type.name
  end
end