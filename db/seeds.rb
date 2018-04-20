Product.destroy_all

50.times do |i|
  Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.between(1, 50), country_of_origin: Faker::Address.country_code_long)
end

p "Created #{Product.count} products"
