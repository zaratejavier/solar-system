Product.destroy_all
10.times do
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price.to_f,
    department: Faker::Commerce.department,
  )
end

puts "100 Products Seeded"

# create_table "planets", force: :cascade do |t|
#   t.string "name"
#   t.boolean "inhabited"
#   t.integer "size"
#   t.bigint "solar_system_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["solar_system_id"], name: "index_planets_on_solar_system_id"
# end

# create_table "solar_systems", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# Faker::Space.planet
SolarSystem.destroy_all
Planet.destroy_all
10.times do |i|
  s = SolarSystem.create(name: Faker::Space.galaxy)
  5.times do |j|
    s.planets.create(name: Faker::Space.meteorite, inhabited: false, size: rand(1000...100000))
  end
end

puts "SolarSystem seed size is #{SolarSystem.all.size}"
puts "planets seed size is #{Planet.all.size}"
