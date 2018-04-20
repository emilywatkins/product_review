Product.destroy_all

50.times do |i|
  Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.between(1, 50), country_of_origin: Faker::Address.country_code_long)
  @product_id = Product.last.id
  5.times do |i|
    Review.create!(author: Faker::Name.name, content_body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, rating: Faker::Number.between(1, 5), product_id: @product_id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
