# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all
ProductType.destroy_all
5.times do
  productType = ProductType.create({name: Faker::Name.name})
  Product.create({
    name: Faker::Name.name,
    description: Faker::Lorem.word,
    price: Faker::Number.decimal(l_digits: 2),
    product_type_id: productType.id,
    product_type: productType
  })
end